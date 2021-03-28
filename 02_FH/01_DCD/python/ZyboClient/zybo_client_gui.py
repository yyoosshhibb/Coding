# -*- coding: utf-8 -*-
"""
Created on Mon Sep 21 11:19:42 2020

@author: Net
"""


# pyuic5 is part of the 'pyqt' package installation
# is used to convert the .ui User Interface files which are created in QT-Designer
#         and to convert the GUI resources (e.g. images)
import os,sys,time
os.system('pyuic5 zybo_client_gui.ui -o MainWindow.py')
os.system('pyuic5 test.ui -o testMainWindow.py')

# import GUI resources, e.g. images

# import all packages from PYQT5  --> requires 'pyqt' added, e.g. in Anaconda
import PyQt5
from PyQt5 import QtWidgets
from MainWindow import Ui_MainWindow

from PyQt5.QtWidgets import * 
from PyQt5.QtCore import * 
from PyQt5.QtGui import * 
from PyQt5.QtWidgets import QSlider

import socket
import traceback 
import psutil

#https://docs.python-guide.org/scenarios/xml/
import xmltodict

#Interface Signal configurations - parsed from the HDL-source code
from fpgaRegs import FpgaSignals

from dashboard import Led,NumericDisplay,LNumericDisplay,CheckBox,LCheckBox,LLabel,LLineEdit,DPushButton,\
                    LSlider,LVSlider,LSpinBox,LDial,LLed

#from biokollavoid_main import BiokWindow
class IpCore():
    def __init__(self,path):
        self.path  = path
        self.files = self._getfiles()
        self.file_with_regs = self._scanfiles()
        self.ip = []
        for item in self.file_with_regs:
            self.ip.append(FpgaSignals(self.path+os.path.sep+item))

    def _scanfiles(self):
        files_found = []
        for file in self.files:
            flag = False
            with open(self.path+os.path.sep+file,'r') as f:
                for line in f:
                    if 'wr_regs' in line:
                        flag = True
                if flag:
                    files_found.append(file)
        print('files with regs:',files_found)
        return files_found
                
    def _getfiles(self):
        #print(self.path)
        try:
            with open(self.path+os.path.sep+'component.xml','r') as f:
                doc = xmltodict.parse(f.read())          
    
            ip_files = []
            file_set = doc['spirit:component']['spirit:fileSets']['spirit:fileSet']
            for item in file_set:
                #print('fileset item:',type(item))
                if item['spirit:name']== 'xilinx_anylanguagesynthesis_view_fileset':
                    #print(type(item['spirit:file'])  )  
                    file_list = item['spirit:file']
                    #print(file_list)
                    for f_item in file_list:
                        ip_files.append(f_item['spirit:name'])
            return ip_files       
        except:
            return []
        
class WorkerSignals(QObject):
    '''
    Defines the signals available from a running worker thread.
    Supported signals are:
    finished
    No data
    error
    `tuple` (exctype, value, traceback.format_exc() )
    result
    `object` data returned from processing, anything
    progress
    `int` indicating % progress
    '''
    finished = pyqtSignal()
    error = pyqtSignal(tuple)
    result = pyqtSignal(object)
    progress = pyqtSignal(int)


#------ Worker for Multithreading -----------------------------------------------
class Worker(QRunnable):
    '''
    Worker thread
    Inherits from QRunnable to handler worker thread setup, signals
    and wrap-up.
    :param callback: The function callback to run on this worker
    :thread. Supplied args and
    kwargs will be passed through to the runner.
    :type callback: function
    :param args: Arguments to pass to the callback function
    :param kwargs: Keywords to pass to the callback function
    :
    '''
    def __init__(self, fn, *args, **kwargs):
        super(Worker, self).__init__()
        # Store constructor arguments (re-used for processing)
        self.fn = fn
        self.args = args
        self.kwargs = kwargs
        self.signals = WorkerSignals()
        # Add the callback to our kwargs
        kwargs['progress_callback'] = self.signals.progress
        #print('worker: kwargs=',kwargs)
    @pyqtSlot()
    def run(self):
        '''
        Initialise the runner function with passed args, kwargs.
        '''
        # Retrieve args/kwargs here; and fire processing using them
        try:
            result = self.fn(*self.args, **self.kwargs)
        except:
            traceback.print_exc()
            exctype, value = sys.exc_info()[:2]
            self.signals.error.emit((exctype, value, traceback.format_exc()))
        else:
            self.signals.result.emit(result) # Return the result of the processing
        finally:
            self.signals.finished.emit() # Done

#---Main GUI Object ---------------------------------
class MainWindow(QMainWindow, Ui_MainWindow):
    
    rwSig = pyqtSignal(dict,dict)
    wrSig = pyqtSignal(dict)
    rdSig = pyqtSignal(dict)
    wrRegs = pyqtSignal(dict)
    dashboard_selection = pyqtSignal(list,bool)
    rwSignals = pyqtSignal(dict,dict)
    
    def __init__(self, *args, obj=None, **kwargs):
        super(MainWindow, self).__init__(*args, **kwargs)
        self.setupUi(self)
        self.logfile = 'register_log.txt'
        self.statusBar().showMessage('Ready')
        self.setWindowTitle("ZYBO Platform Cockpit!")
        self.setWindowIcon(QIcon('icons\\calendar-blue.png'))

        #print('Initialize Main Window')
        self.threadpool = QThreadPool()
        #print("Multithreading with maximum %d threads" % self.threadpool.maxThreadCount())
        self.app_initialized = False

        #---- 2 general purpose timer---------------------------
        self.timer = QTimer()
        self.timer.setInterval(1000) #100msec interval
        self.timer.timeout.connect(self.recurring_timer)
        self.timer.start()

        self.timer2 = QTimer()
        self.timer2_interval = self.spinBox_PollInterval.value()
        self.timer2.setInterval(self.timer2_interval) #1sec interval
        self.timer2.timeout.connect(self.recurring_timer2)
        self.timer2.start()

        self.platformConnect  = True
        self.platform_connect = False
        self.server_IP        =  '192.168.1.103'   # The server's hostname or IP address
        self.server_PORT      = 10000       # The port used by the server
              
        self.poll_signals = False
        self.widgets_dict = {'led': LLed, 'display': LNumericDisplay,'checkbox': LCheckBox,   \
                             'label': LLabel, 'lineedit': LLineEdit, 'pushbutton': DPushButton, \
                             'slider': LVSlider, 'lslider':LSlider, \
                             'dial':LDial, 'spinbox': LSpinBox }
        self.dashboard =  {}
        self.dashboard_default = {}
        for key in self.widgets_dict:
            self.dashboard[key] = []
            self.dashboard_default[key] = []
            
        self.widget_default_settings = dict()
        self.widget_default_settings['pos'] = PyQt5.QtCore.QPoint(10, 10)
        self.widget_default_settings['signals'] = ['led','pmod']
        self.widget_default_settings['selected_signal'] = 'pmod'
        self.widget_default_settings['show_warnings'] = True
        self.widget_default_settings['signal_mask'] = 1
          

        self.app_state = dict()
        self.GetApplicationState('application_state.txt')
        self.prj_settings = dict()
        self.ip_settings  = dict()
        self.ip_list = []
        self.ip_core = []
        self.ip_dict = dict()
        self.wrsigs = dict()
        self.rdsigs = dict()
        self._init_GUI()

        self.InitBoard('boards\\zybo_z7_20',self.tableWidget_Board_Zybo_z7_20,self._on_click_board_zybo_z7_20)
        self.InitBoard('boards\\zybo_z7_10',self.tableWidget_Board_Zybo_z7_10,self._on_click_board_zybo_z7_10)
        self.InitBoard('boards\\zybo',self.tableWidget_Board_Zybo,self._on_click_board_zybo)
        self.actionCreate.triggered.connect(self.onCmd_NewProject)
        
        self.label_logo.setPixmap(QPixmap("icons\\Python_PyQt5s.png"))
        self.label_logo_board.setPixmap(QPixmap("icons\\zybo.png"))
        self.label_logo_vivado.setPixmap(QPixmap("icons\\logo_vivado.png"))
        self.label_logo_fpgawiz.setPixmap(QPixmap("icons\\logo_fpgawiz.png"))
        self.label_logo_fh.setPixmap(QPixmap("icons\\logo_fh.png"))
        self.label_PmodConn_1.setPixmap(QPixmap("icons\\pmod_conn.jpg"))
        self.label_PmodConn_2.setPixmap(QPixmap("icons\\pmod_conn.jpg"))
        self.label_PmodConn_3.setPixmap(QPixmap("icons\\pmod_conn.jpg"))
        self.wrSig.connect(self.wr_signal_update)
        self.wrRegs.connect(self._createTable)
        self.rwSig.connect(self._createSignalTable)
        self.tableWidget_Signals0.cellChanged.connect(self._on_click0)
        self.tableWidget_Register0.cellChanged.connect(self._on_click_regs0)

        self.groupBox_Dashboard.setStyleSheet("background-color: #FFFFF0");
        #self.groupBox_Dashboard.setStyleSheet("background-image: url(background.jpg);");
        #self.groupBox_Dashboard.setStyleSheet("background-color: qlineargradient(x1:0, y1:0, x2:0, y2:1,\
        #                              stop:0 #616161, stop: 0.5 #505050,\
        #                              stop: 0.6 #434343, stop:1 #656565");
        self.app_initialized = True
        #self.tcp_client_thread()
        #self.app_window = BiokWindow(self.scrollAreaWidgetContents_2)
        #self.app_window.setMinimumSize(QSize(800, 500))
        #self.app_window.setGeometry(QRect(0, 0, 1077, 554))
         
        
    def tcp_client_thread(self):
        worker = Worker(self.run_client) # Any other args, kwargs are passed to the run function
        worker.signals.result.connect(self.print_output)
        worker.signals.finished.connect(self.thread_complete)
        worker.signals.progress.connect(self.progress_fn)
        self.threadpool.start(worker)

        
    def run_client(self,progress_callback):
        while True:
            polling_interval = self.spinBox_PollInterval.value()/1000
            time.sleep(polling_interval)
            if self.poll_signals:
                print('POLL in thread')
                self.onCmd_ListSignals()

        # 2 general purpose timer methods--------------------------------------------------         
    def recurring_timer(self):
        time_now = time.time()
        usage = psutil.cpu_percent()
        usage_str = 'CPU Usage: {}'.format(usage)
        self.label_cpu_usage.setText(usage_str)
        #print('System time is',time_now)
        time_string = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time_now))   
        self.label_datetime.setText(time_string)
        # if self.dashboard_redraw:
        #     #self.dashboard_redraw = False
        #     self._redraw_dashboard_widgets()
            
    def recurring_timer2(self):
        self.timer2_interval = self.spinBox_PollInterval.value()
        self.timer2.setInterval(self.timer2_interval)  
        if self.poll_signals:
            self.onCmd_ListSignals_()

    # callbacks for worker threads---------------------------------------------------------        
    def print_output(self):
        print('Thread output')
    def thread_complete(self):
        print('THREAD complete')
    def progress_fn(self):
        print('THREAD progress')

    def onCmd_AddCheckboxToDashboard(self):
        key = 'checkbox'
        self._add_widget(key,self.widget_default_settings,self.widgets_dict[key](self.groupBox_Dashboard,self.widget_default_settings))
 
    def onCmd_AddLedToDashboard(self):
        key = 'led'
        self._add_widget(key,self.widget_default_settings,self.widgets_dict[key](self.groupBox_Dashboard,self.widget_default_settings))
              
    def onCmd_AddDisplayToDashboard(self):
        key = 'display'
        self._add_widget(key,self.widget_default_settings,self.widgets_dict[key](self.groupBox_Dashboard,self.widget_default_settings))
        
    def onCmd_AddLabelToDashboard(self):
        key = 'label'
        self._add_widget(key,self.widget_default_settings,self.widgets_dict[key](self.groupBox_Dashboard,self.widget_default_settings))
        
    def onCmd_AddLineEditToDashboard(self):
        key = 'lineedit'
        self._add_widget(key,self.widget_default_settings,self.widgets_dict[key](self.groupBox_Dashboard,self.widget_default_settings))
        
    def onCmd_AddPushbuttonToDashboard(self):
        key = 'pushbutton'
        self._add_widget(key,self.widget_default_settings,self.widgets_dict[key](self.groupBox_Dashboard,self.widget_default_settings))
        
    def onCmd_AddSliderToDashboard(self):
        key = 'slider'
        self._add_widget(key,self.widget_default_settings,self.widgets_dict[key](self.groupBox_Dashboard,self.widget_default_settings))

    def onCmd_AddLSliderToDashboard(self):
        key = 'lslider'
        self._add_widget(key,self.widget_default_settings,self.widgets_dict[key](self.groupBox_Dashboard,self.widget_default_settings))
        self.onCmd_ApplySignalSetting()

    def onCmd_AddDialToDashboard(self):
        key = 'dial'
        self._add_widget(key,self.widget_default_settings,self.widgets_dict[key](self.groupBox_Dashboard,self.widget_default_settings))

    def onCmd_AddSpinboxToDashboard(self):
        key = 'spinbox'
        self._add_widget(key,self.widget_default_settings,self.widgets_dict[key](self.groupBox_Dashboard,self.widget_default_settings))
        
    def _add_widget(self,key,item,widget):
        self.dashboard[key].append(widget)
        self.dashboard[key][-1].settings['id'] = self.widget_id
        self.dashboard[key][-1].settings['selected'] = False
        self.dashboard[key][-1].selected.connect(self.widget_handler)
        self.dashboard[key][-1].dashboard_value.connect(self.dashboard_handler)
        self.rwSig.connect(self.dashboard[key][-1].signal_update)   
        self.rwSignals.connect(self.dashboard[key][-1].signal_setting)   
        self.dashboard_selection.connect(self.dashboard[key][-1].select)
        self.widget_id += 1
        self.dashboard[key][-1].show()    
        self.onCmd_ApplySignalSetting()

    def onCmd_LoadDashboard(self):        
        current_project = self.comboBox_SelectedProject.currentText()
        path = os.getcwd() + '\\projects\\'+ current_project +'\\dashboard_settings.txt'    
        dashboard_settings = dict()
        try:
            with open(path,'r') as f:
                print('LOAD Dashboard')
                dashboard_settings = eval(f.read())
        except:
            print('ERROR loading Dashboard Settings')
        
                    
        print('-------------------------------\n',dashboard_settings) 
        
        # self.dashboard = dict()
        # self.dashboard['led'] = []
        # self.dashboard['display'] = []
        # self.dashboard['checkbox'] = []
        # self.dashboard['label'] = []
        # self.dashboard['pushbutton'] = []
        # self.dashboard['slider'] = []
        # self.dashboard['lslider'] = []
        # self.dashboard['dial'] = []
        # self.dashboard['spinbox'] = []

        self.widget_id = 0
        for key in dashboard_settings:
                for item in dashboard_settings[key]:
                    self._add_widget(key,item,self.widgets_dict[key](self.groupBox_Dashboard,item))
        self._redraw_dashboard_widgets()
        
    def onCmd_RemoveFromDashboard(self):
        for key in self.dashboard:
            for i,item in enumerate(self.dashboard[key]):
                if item.settings['selected']:
                    removed = self.dashboard[key].pop(i)
                    removed.deleteLater()
                    removed = None
        self.dashboard_redraw=True

        
    def onCmd_Test(self):        
        current_project = self.comboBox_SelectedProject.currentText()
        path = os.getcwd() + '\\projects\\'+ current_project +'\\dashboard_settings.txt'    
        dashboard_settings = dict()
        for key in self.dashboard:
            dashboard_settings[key]= []
            for item in self.dashboard[key]:
                dashboard_settings[key].append(item.settings)
        #print(dashboard_settings) 
        with open(path,'w') as f:
            f.write(str(dashboard_settings))
                            
    def widget_handler(self,x):
        print('Signal received from widget id',x)

    def dashboard_handler(self,signame,sigid,value,mask):
        print('Signal received from dashboard',signame,sigid,value,mask)
        if signame in self.wrsigs:
            if mask < 0:
                sigval = value;
            else:
                mask = (1 << mask)
                sigval = self.wrsigs[signame][3]
                print('sigvalue',sigval)
                sigval &= (~mask)
                print('sigvalue',sigval,~mask)
                if value:
                    sigval |=  mask
                print('sigvalue',sigval)
            #ip = 0x43C04000
            ipstr = self.comboBox_GetSignals0.currentText().split()[0]
            ip = int(ipstr,16)

            print('set signal ',ip,signame,sigval) 
            self._set_signal(ip,signame,sigval)     

    def _redraw_dashboard_widgets(self):        
        for key in self.dashboard:
            for item in self.dashboard[key]:
                try:
                    item.restore_pos()
                except:
                    print('ERROR:',key,item)
        self.onCmd_ApplySignalSetting()
        print('REDRAW widgets')

    def onCmd_ApplySignalSetting(self) :
        self.rwSignals.emit(self.wrsigs,self.rdsigs)
        #print('Emit',self.wrsigs,self.rdsigs)
        self.dashboard_redraw=True

    def onCmd_PrintSignals(self):
        print('--WR Signals------\n',self.wrsigs) 
        print('--RD Signals------\n',self.rdsigs) 
       
 
    def onCmd_ConnectToServer(self):
        if self.pushButton_ConnectToServer.text() == "CONNECT to Server":
            print('connect to server')
            try:
                self.s= socket.socket(socket.AF_INET, socket.SOCK_STREAM) 
                #self.s.settimeout(1)
                self.s.connect((self.server_IP, self.server_PORT))
                self.pushButton_ConnectToServer.setStyleSheet("background-color: green; color:white")
                self.pushButton_ConnectToServer.setText("CONNECTED")
                self.platform_connect = True
                print('CLIENT connected to Server',self.server_IP)
            except:
                print('ERROR connecting to server',self.server_IP,'on port',self.server_PORT)
            try:
                self.s2= socket.socket(socket.AF_INET, socket.SOCK_STREAM) 
                #self.s.settimeout(1)
                self.s2.connect((self.server_IP, self.server_PORT))
                self.platform_connect2 = True
                print('CLIENT connected 2 to Server',self.server_IP)
            except:
                print('ERROR connecting 2 to server',self.server_IP,'on port',self.server_PORT)
        else:
            try:
                self.s.close()
                print('connection closed')
                self.platform_connect = False
            except:
                print("ERROR closing connection")
            self.pushButton_ConnectToServer.setStyleSheet("background-color: white; color: black")
            self.pushButton_ConnectToServer.setText("CONNECT to Server")

            try:
                self.s2.close()
                print('connection 2 closed')
                self.platform_connect2 = False
            except:
                print("ERROR closing connection 2")
        

    def onCmd_PollSignals(self):
        if self.pushButton_PollSignals.text() == "POLL Signals":
            self.pushButton_PollSignals.setStyleSheet("background-color: green; color: white")
            self.pushButton_PollSignals.setText("POLLING Signals")
            self.poll_signals = True
        else:
            self.poll_signals = False
            self.pushButton_PollSignals.setStyleSheet("background-color: white; color: black")
            self.pushButton_PollSignals.setText("POLL Signals")
        
    def wr_signal_update(self,wr_signals):
        # print('------UPDATE WR SIGNALS:-----------')
        # print(wr_signals)
        pass
    
    def onMyToolBarButtonClick(self, s):
        print("click", s)

       
    def onTcpServerStartClick(self, s):
        print("click", s)
        self.button_action.setIcon(QIcon("icons\\Server_ON.jpg") if s else QIcon("icons\\Server_OFF.jpg"))
        if s:
            print('connect to server')
            try:
                #with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
                #print('1')
                self.s= socket.socket(socket.AF_INET, socket.SOCK_STREAM) 
                #self.s.settimeout(1)
                self.s.connect((self.server_IP, self.server_PORT))
                self.platform_connect = True
                print('CLIENT connected to Server',self.server_IP)
            except:
                print('ERROR connecting to server',self.server_IP,'on port',self.server_PORT)
        else:
            try:
                self.s.close()
                print('connection closed')
                self.platform_connect = False
            except:
                print("ERROR closing connection")

    # def onTcpServerStopClick(self, s):
    #     print("click", s)
        
    def onTcpServerCloseClick(self, s):
        print("click", s)
        
    def _init_GUI(self):
        self.InitProjects()
        #print('*****************1 init GUI',self.app_state)
        self.onCmd_SelectedProject()
        #print('******************2 init GUI',self.app_state)
        self.onCmd_LoadDashboard()
        self.onCmd_ListSignals()
        self.onCmd_ApplySignalSetting()
        #self._redraw_dashboard_widgets()
         #self.InitKdaParameters()
        #print('******************3 init GUI',self.app_state)
        print('Project Settings',self.prj_settings)
        print('IP Settings',self.ip_settings)
        print('IP List',self.ip_list)
        print('IP Dict',self.ip_dict)
        

    def GetApplicationState(self,fname):
        try:
            with open(fname,'r') as f:
                self.app_state = eval(f.read())
        except:
            print('ERROR: NO application state settings found!')
            self.app_state = dict()
        
        # ---- Managing Projects ---------------------------------------------------------------------------------    

    def InitProjects(self):
        def refresh(combo,text):
            index = combo.findText(text, Qt.MatchFixedString)
            if index >= 0:
                 combo.setCurrentIndex(index)

        #print('INIT Projects 1:',self.app_state,self.app_state['default_proj'])
        search_path = os.getcwd()+'\\projects'
        directories=[d for d in os.listdir(search_path) if os.path.isdir(search_path+'\\'+d)]
        #directories.insert(0,'New...')   
        combo = self.comboBox_SelectedProject
        combo.clear()
        combo.addItems(directories)

        if 'default_proj' in self.app_state:
            default_project = self.app_state['default_proj']
            
        if default_project in directories:
            #print('#####default project',default_project)
            index = combo.findText(default_project, Qt.MatchFixedString)            
            if index >= 0:
                 combo.setCurrentIndex(index)
        # text = self.comboBox_SelectedProject.currentText()
        # refresh(self.comboBox_SelectedProject,text)
        #print('INIT Projects 2:',self.app_state,self.app_state['default_proj'])
            
    def onCmd_NewProject(self):
        #print('NEW')
        fname = self.lineEdit_NewProject.text()
        if fname:
            path = os.getcwd() + '\\projects\\' + fname
            #print('path',path)
            os.makedirs(path)

            self.app_initialized = False
            self.InitProjects()
            self.app_initialized = True
        else:
            msgBox = QMessageBox()
            msgBox.setIcon(QMessageBox.Information)
            msgBox.setText("Invalid Project Name !")
            msgBox.setWindowTitle("NOTE")
            msgBox.setStandardButtons(QMessageBox.Ok)
            returnValue = msgBox.exec()

    def onCmd_UpdateProject(self):
        path = os.getcwd() + '\\projects\\'+ self.comboBox_SelectedProject.currentText()+'\\project_properties_dict.txt'
        #print(path)
        #settings = self.prj_settings
        err = False
        errn=[]
        for i in range(6):
            try:
                key = self.tableWidget_ProjectSettings.item(i,0).text()
                val = self.tableWidget_ProjectSettings.item(i,2).text()
                self.prj_settings[key][1] = val
                #print('update ',i,key,val)
            except:
                print('ERROR at key',key)
                val = 'NONE'
                err = True
                errn.append(i+1)
        if err:                
                msgBox = QMessageBox()
                msgBox.setIcon(QMessageBox.Information)
                msgBox.setText("Invalid Project Settings in lines {} ! ".format(errn))
                msgBox.setWindowTitle("ERROR")
                msgBox.setStandardButtons(QMessageBox.Ok)
                returnValue = msgBox.exec()
        else:
            try:
                with open(path,'w') as f:
                    f.write(str(self.prj_settings))
                    
            except:
                msgBox = QMessageBox()
                msgBox.setIcon(QMessageBox.Critical)
                msgBox.setText("Unable to save project settings! ")
                msgBox.setWindowTitle("ERROR")
                msgBox.setStandardButtons(QMessageBox.Ok)
                returnValue = msgBox.exec()

            path = os.getcwd() + '\\projects\\'+ self.comboBox_SelectedProject.currentText()+'\\ip_cores.txt'
            #print(path)
            ip_settings = dict()
            for i in range(6):
                try:
                    key = self.tableWidget_IpCores.item(i,0).text()
                    #print(i,key)
                    if key:
                        val = [self.tableWidget_IpCores.item(i,1).text(),self.tableWidget_IpCores.item(i,2).text(),self.tableWidget_IpCores.item(i,3).text(),self.tableWidget_IpCores.item(i,5).text()]
                        ip_settings[key] = val
                    #print(i,key,ip_settings[key])
                except:
                    val = 'NONE'
            #print('+++++++++ip settings:',ip_settings)
            with open(path,'w') as f:
                f.write(str(ip_settings))
                

    def onCmd_SelectedProject(self):
        #print('------select project-------------')
        current_project = self.comboBox_SelectedProject.currentText()
        if self.app_initialized:    
            self.app_state['default_proj'] = current_project
            # with open('application_state.txt','w') as f:
            #     f.write(str(self.app_state))
            
        path = os.getcwd() + '\\projects\\'+ current_project +'\\project_properties_dict.txt'    
        try:
            self.prj_settings = eval(open(path, 'r').read())  
            #print('read prj settings...')
        except:
            self.prj_settings = {'Vivado prj_path': ['path','...'],'Vivado prj_name': ['leaf','...'],  'impl_path': ['path','...'], 'impl_bitstream': ['leaf','...'], 'boot_bitstream': ['fixed','BioKolAvoid_z7_10.bit'],'zybo_path':['path','...']}

        self.tableWidget_ProjectSettings.clear()
        for i,key in enumerate(self.prj_settings):
            #print('prjsettings',type(i),i)
            self.tableWidget_ProjectSettings.setItem(i,0,QTableWidgetItem(key))
            if self.prj_settings[key][0] != 'fixed':
                button = QPushButton()
                button.setIcon(QIcon('icons\\select.jpg'))
                button.clicked.connect(lambda state,x=i,y=key, w=self.tableWidget_ProjectSettings: self._on_click_prjsettings(x,y,w))
                self.tableWidget_ProjectSettings.setCellWidget(i, 1, button)
            if type(self.prj_settings[key]) == list:
                self.tableWidget_ProjectSettings.setItem(i,2,QTableWidgetItem(self.prj_settings[key][1]))
             
        self.tableWidget_ProjectSettings.resizeColumnToContents(0)
        self.tableWidget_ProjectSettings.resizeColumnToContents(1)

        path_ip = os.getcwd() + '\\projects\\'+ self.comboBox_SelectedProject.currentText()+'\\ip_cores.txt'    
        self.tableWidget_IpCores.clear()
        self.ip_list = []
        #print('clear ip list------')
        try:
            self.ip_settings = eval(open(path_ip, 'r').read())  
            #print('Available IP:',self.ip_settings)
        except:
            self.ip_settings ={'43C00000': ['dma0', 'axi', '32', '...enter path_to_ip-core...']}
            print('No IP settings found, use default IP-core')
        for i,key in enumerate(self.ip_settings):
            self.ip_list.append(key+' '+self.ip_settings[key][0])
            #print('append',key,i)
            self.tableWidget_IpCores.setItem(i,0,QTableWidgetItem(key))
            self.tableWidget_IpCores.setItem(i,1,QTableWidgetItem(self.ip_settings[key][0]))
            self.tableWidget_IpCores.setItem(i,2,QTableWidgetItem(self.ip_settings[key][1]))
            self.tableWidget_IpCores.setItem(i,3,QTableWidgetItem(str(self.ip_settings[key][2])))
            self.tableWidget_IpCores.setItem(i,5,QTableWidgetItem(self.ip_settings[key][3]))
        for i in range(self.tableWidget_IpCores.rowCount()):
            button = QPushButton()
            button.setIcon(QIcon('icons\\select.jpg'))
            button.clicked.connect(lambda state,x=i, w=self.tableWidget_IpCores: self._on_click_ipsettings(x,w))
            self.tableWidget_IpCores.setCellWidget(i, 4, button)
            self.tableWidget_IpCores.resizeColumnToContents(4)
            
        # self.tableWidget_IpCores.resizeColumnToContents(0)
        # self.tableWidget_IpCores.resizeColumnToContents(1)
        # self.tableWidget_IpCores.resizeColumnToContents(2)
        # self.tableWidget_IpCores.resizeColumnToContents(3)
        self.tableWidget_IpCores.setHorizontalHeaderLabels([ 'BaseAddr','Name','Type','Number','IP-Location'])
        
        
        # fill register comboboxes      
        #self.comboBox_GetRegister0.clear()
        #self.comboBox_GetRegister0.addItems(self.ip_list)

        combo = self.comboBox_GetSignals0
        combo.clear()
        combo.addItems(self.ip_list)
        #print('=================================================================+++++++++++++++++++\n')           
        #print('++++++++++IP List',self.ip_list,self.app_state)
        if 'default_ip' in self.app_state:
            #print('IP in app_state')
            for i,item in enumerate(self.ip_list):
                ip = item.split()[0]
                #print('ip in ip_list',ip,self.app_state['default_ip'])
                if ip == self.app_state['default_ip']:
                    combo.setCurrentIndex(i)
             
        self.ip_core = []
        # create instances of IP cores
        for item in self.ip_list:
            key=item.split()[0]
            path_to_ip = self.ip_settings[key][3]
            #print('Create IP Core instances:',key,path_to_ip)
            self.ip_core.append(IpCore(path_to_ip))
            self.ip_dict[key]=IpCore(path_to_ip)

    def onCmd_CurrentIpChanged(self,ip):
        #print(ip)
        try:
            if self.app_initialized:
                self.app_state['default_ip'] = ip.split()[0]
                #print(self.app_state)
        except:
            self.app_state['default_ip'] = '43C00000'
            
    @pyqtSlot()
    def _on_click_prjsettings(self,x,key,widget):
        if self.prj_settings[key][0] == 'path':
            path = QFileDialog.getExistingDirectory()
            if path:
                path = path.replace('/','\\')
                widget.setItem(x,2,QTableWidgetItem(path))
                self.prj_settings[key][1] = path
        
        elif self.prj_settings[key][0] == 'leaf':
            leaf,_ = QFileDialog.getOpenFileName(self, 'Select file', 
         '',"Vivado prj (*.xpr *.bit)")
            if leaf:
                leaf = leaf.replace('/','\\')
                leaf = leaf.split('\\')[-1]
                widget.setItem(x,2,QTableWidgetItem(leaf))
                self.prj_settings[key][1] = leaf

            
    @pyqtSlot()
    def _on_click_ipsettings(self,x,widget):
        path = QFileDialog.getExistingDirectory()
        if path:
            path = path.replace('/','\\')
            widget.setItem(x,5,QTableWidgetItem(path))


    def onCmd_ShowIpDictionary(self):
        print('---IP Dictionary----------')
        for key in self.ip_dict:
            print(key)
        key = '43C04000'   
        self.ip_dict[key].ip[0].sigs_update()
        print(self.ip_dict[key].ip[0].wrRegs)    
        print(self.ip_dict[key].ip[0].wrSignals)    
        print(self.ip_dict[key].ip[0].rdSignals)    
            

    def onCmd_ListSignals_(self):
        if self.comboBox_GetSignals0.currentText() == '':
            return

        ipstr = self.comboBox_GetSignals0.currentText().split()[0]

        reg_range=int(self.ip_settings[ipstr][2])
        ip = int(ipstr,16)
        self.spinBox_GetRegister0.setValue(reg_range)
        reg_address = 0
        tableWidget = self.tableWidget_Register0
        self._get_regs(ipstr,reg_address,reg_range)

        if len(self.ip_dict[ipstr].ip):
            wrsigs = self.ip_dict[ipstr].ip[0].wrSignals 
            rdsigs = self.ip_dict[ipstr].ip[0].rdSignals 
         
            wrsignal_list = []
            rdsignal_list = []
            for key_s in wrsigs:
                wrsignal_list.append([key_s,wrsigs[key_s]])
            for key_s in rdsigs:
                rdsignal_list.append([key_s,rdsigs[key_s]])
            #self._createSignalTable(wrsignal_list,rdsignal_list)
            self.wrsigs = wrsigs
            self.rdsigs = rdsigs
            #self.wrSig.emit(wrsigs)
            #self.rdSig.emit(rdsigs)
            self.rwSig.emit(wrsigs,rdsigs)

    def onCmd_ListSignals(self):
        if self.comboBox_GetSignals0.currentText() == '':
            return

        ipstr = self.comboBox_GetSignals0.currentText().split()[0]

        reg_range=int(self.ip_settings[ipstr][2])
        ip = int(ipstr,16)
        self.spinBox_GetRegister0.setValue(reg_range)
        reg_address = 0
        tableWidget = self.tableWidget_Register0
        self._get_regs(ipstr,reg_address,reg_range)

        if len(self.ip_dict[ipstr].ip):
            wrsigs = self.ip_dict[ipstr].ip[0].wrSignals 
            rdsigs = self.ip_dict[ipstr].ip[0].rdSignals 
         
            wrsignal_list = []
            rdsignal_list = []
            for key_s in wrsigs:
                wrsignal_list.append([key_s,wrsigs[key_s]])
            for key_s in rdsigs:
                rdsignal_list.append([key_s,rdsigs[key_s]])
            self.wrsigs = wrsigs
            self.rdsigs = rdsigs
            #self.wrSig.emit(wrsigs)
            #self.rdSig.emit(rdsigs)
            #self.rwSig.emit(wrsigs,rdsigs)
            self._createSignalTable(wrsigs,rdsigs)
            #self._createTable(self.rbRegs0)
         

    def _createSignalTable(self,wrsig,rdsig):
        tableWidget = self.tableWidget_Signals0
        tableWidget.clear() 
        i=0
        for key in wrsig:           
            tableWidget.setItem(i,0, QTableWidgetItem(key))
            tableWidget.setItem(i,1, QTableWidgetItem(wrsig[key][0]))
            tableWidget.setItem(i,2, QTableWidgetItem(wrsig[key][1]))
            tableWidget.setItem(i,3, (QTableWidgetItem('{:8X}'.format(wrsig[key][3]))))
            i+=1

        for key in rdsig:           
            tableWidget.setItem(i,0, QTableWidgetItem(key))
            tableWidget.setItem(i,1, QTableWidgetItem(rdsig[key][0]))
            tableWidget.setItem(i,2, QTableWidgetItem(rdsig[key][1]))
            tableWidget.setItem(i,3, (QTableWidgetItem('{:8X}'.format(rdsig[key][3]))))
            tableWidget.item(i, 0).setBackground(QColor(200,200,150))
            tableWidget.item(i, 1).setBackground(QColor(200,200,150))
            tableWidget.item(i, 2).setBackground(QColor(200,200,150))
            tableWidget.item(i, 3).setBackground(QColor(200,200,150))
            i+=1

        #tableWidget.cellChanged.connect(self._on_click0)
        tableWidget.resizeColumnToContents(0)
        tableWidget.setHorizontalHeaderLabels(['Name', 'Register', 'Slice', 'Value'])
        stylesheet = "::section{Background-color:rgb(255,255,200);border-radius:14px;}"
        tableWidget.verticalHeader().setStyleSheet(stylesheet)                
        tableWidget.horizontalHeader().setStyleSheet(stylesheet)                
        #self.tableWidget_Signals0.cellChanged.connect(self._on_click0)

    #---action on clicking inside the table of registers--------------------
    @pyqtSlot()
    def _on_click0(self):
        signame = ''
        sigval = 0
        for currentQTableWidgetItem in self.tableWidget_Signals0.selectedItems():
            #print('0:',currentQTableWidgetItem.row(), currentQTableWidgetItem.column(), currentQTableWidgetItem.text())
            signame = self.tableWidget_Signals0.item(currentQTableWidgetItem.row(),0).text()
            sigval  = int(self.tableWidget_Signals0.item(currentQTableWidgetItem.row(),3).text(),16)
            #print('set signame,sigval',signame,sigval,type(sigval))
        ip = int(self.comboBox_GetSignals0.currentText().split()[0],16)
        self._set_signal(ip,signame,sigval)
    @pyqtSlot()
    def _on_click1(self):
        for currentQTableWidgetItem in self.tableWidget_Signals1.selectedItems():
            print('1:',currentQTableWidgetItem.row(), currentQTableWidgetItem.column(), currentQTableWidgetItem.text())
         
    def onCmd_GetRegisterNum(self):
        if self.comboBox_GetRegister0.currentText():
            ipstr = self.comboBox_GetRegister0.currentText().split()[0]
            reg_range= int(self.ip_settings[ipstr][2])
            #print('regrange=',self.ip_settings[ipstr][2])
            self.spinBox_GetRegister0.setValue(reg_range)
        
    def onCmd_GetRegisterN(self):

        ipstr = self.comboBox_GetSignals0.currentText().split()[0]
        reg_range= int(self.ip_settings[ipstr][2])
        ip = int(ipstr,16)
        self.spinBox_GetRegister0.setValue(reg_range)
        reg_address = 0
        tableWidget = self.tableWidget_Register0
        self._get_regs(ipstr,reg_address,reg_range)
        
    def _get_regs(self,ipstr,reg_address,reg_range):
        ip = int(ipstr,16)
        dump_regs = False
        msg = 'getregn {:X} {:X} {:X}'.format(ip,reg_address,reg_range)
        #print(msg)
        ack,data = self._send2(str.encode(msg))
        #print('ACK',ack,data)
        if ack:
            data = data.decode().split() # simple list of regs values
            #print('Get Regs data:',data)
            self.rbRegs0 = dict() # dictionary for readback regs
            for i in range(reg_range):   # create dict from list
                key = 'reg{:02X}'.format(i)
                self.rbRegs0[key]= int(data[i])
            #print('received regs in dict:',self.rbRegs0)    
            try:
                #print(len(self.ip_dict[ipstr].ip),type(self.ip_dict[ipstr].ip),self.ip_dict[ipstr].ip)
                for item in self.ip_dict[ipstr].ip:
                    item.wrRegs = self.rbRegs0   
                self.wrRegs.emit(self.rbRegs0)
                #print('emit',self.ip_dict[ipstr].ip[0].wrRegs)
                self.ip_dict[ipstr].ip[0].sigs_update()
            except:
                pass
                #print('ERROR updating the IP core wregs')

            if dump_regs:
                fname = 'regdump.txt'
                f = open(fname,'w')
                f.write('BASEBAND Registers-----------:\n')
                for i in range(reg_range):
                    f.write('{:2X} {:08X}\n'.format(i,int(data[i])))
                f.close()

    # -- create a table for register values------------------------------------------------
    def _createTable(self,data):
        tableWidget = self.tableWidget_Register0
        tableWidget.clear()
        try:
            #print('****************')
            i=0
            for key in data:   
                #print(type(key),key,type(data[key]),data[key])
                tableWidget.setItem(i,0, QTableWidgetItem(key))
                tableWidget.setItem(i,1, QTableWidgetItem("{:08X}".format(data[key])))
                i+=1
            #self.tableWidget.move(0,0)
        except:
            print("ERROR creating table")
            pass
        stylesheet = "::section{Background-color:rgb(255,255,190);border-radius:14px;}"
        tableWidget.verticalHeader().setStyleSheet(stylesheet)                
        tableWidget.horizontalHeader().setStyleSheet(stylesheet)                
        # table selection change
        #tableWidget.doubleClicked.connect(handler)
        #tableWidget.cellChanged.connect(self._on_click_regs0)
 
     
#---future use: action on clicking inside the table of registers--------------------
    @pyqtSlot()
    def _on_click_regs0(self):
        for currentQTableWidgetItem in self.tableWidget_Register0.selectedItems():
            print(currentQTableWidgetItem.row(), currentQTableWidgetItem.column(), currentQTableWidgetItem.text())
        if len(self.tableWidget_Register0.selectedItems()):
            x =  currentQTableWidgetItem.column()
            y =  currentQTableWidgetItem.row()
            regname= self.tableWidget_Register0.item(y,0).text()
            regval = int(self.tableWidget_Register0.item(y,1).text(),16)
            ip = int(self.comboBox_GetRegister0.currentText().split()[0],16)
            regaddr = int(regname[3:],16)
            #print(ip,regaddr,regval)
            self._reg_write(ip,regaddr,regval)
            self.tableWidget_Register0.cellChanged.disconnect()
            self.tableWidget_Register0.setItem(y,1,QTableWidgetItem('{:08X}'.format(regval)))        
            self.tableWidget_Register0.cellChanged.connect(self._on_click_regs0)
    @pyqtSlot()
    def _on_click_regs1(self):
        print("\n")
        for currentQTableWidgetItem in self.tableWidget_Register1.selectedItems():
            print(currentQTableWidgetItem.row(), currentQTableWidgetItem.column(), currentQTableWidgetItem.text())


    def onCmd_SyncIpToBoard(self):
        path_ip = os.getcwd() + '\\projects\\'+ self.comboBox_SelectedProject.currentText()+'\\ip_cores.txt'    
        cmd = 'copy '+path_ip+' W:\\py_zybo'
        os.system(cmd)
        
    def onCmd_UpdateBitstream(self):
        target_path = self.prj_settings['zybo_path'][1] 
        fname = 'project_properties_dict.txt'
        path = os.getcwd()+'\\projects\\'+self.comboBox_SelectedProject.currentText()+'\\'+fname
        print('project properties path',path)
        print('Project settings-----------\n',self.prj_settings)
        # print(path)
        # with open(path,'r') as f:
        #     print(f.read())
        #print('impl path=',self.prj_settings['impl_path'])
        try:
            print('1')
            #self.prj_settings = eval(open(path, 'r').read())        
            bitstream   = self.prj_settings['impl_path'][1]+'\\'+self.prj_settings['impl_bitstream'][1]
            print('2')

            target_name = self.prj_settings['boot_bitstream'][1]
            print('3')
            cmd = 'copy '+bitstream+' '+target_path+ os.path.sep + target_name
            print(cmd)
            os.system(cmd)
            msg = b'bitstream'
            ack,data = self._send(msg)
        except:
            print('project properties not found!')
        
    
        
        
    # send a command to ZYBO  datatype is raw bytes    
    def _send(self,msg):
        if self.platform_connect:
            self.s.sendall(msg)
            #print(msg)
            time.sleep(0.01)
            return True,self.s.recv(1024)
        else:
            return False, str.encode('NAK')
          
    def _send2(self,msg):
        if self.platform_connect:
            self.s2.sendall(msg)
            #print('send2',msg)
            try:
                time.sleep(0.01)
                data=self.s2.recv(1024)
                #print('received',data)
                return True,data
            except socket.timeout:
                print('socket timeout!')
                return False,b'TIMEOUT'
        else:
            return False, str.encode('NAK')
          

    # register write     
    def _reg_write(self,ip_core,reg_address,reg_data):
        msg = str.encode('setreg {:X} {:X} {:X}'.format(ip_core,reg_address,reg_data)) # conversion from string to raw bytes
        ack,data = self._send(msg)
        if ack:
            data = data.decode().split()
            #print('Client Received', data)
            return data
   

    # set a signal value on the ZYBO; accepts integer and boolean data
    def _set_signal(self,ip_core,signame,val):
        # convert boolean to integer datatype
        if type(val) == 'bool':
            if val:
                sigval = 1
            else:
                sigval = 0
        else:
            sigval = val
        try:    
            key = '{:08X}'.format(ip_core)
            reg_addr,reg_data = self.ip_dict[key].ip[0].set(signame,sigval)
            report = 'set signal {:30} in Core{} to {:12}   REG {:02X} = {:08X} '.format(signame,ip_core,val,reg_addr,reg_data)
            #print(report)
            with open(self.logfile,'a') as f:
                f.write(report + '\n')
            self._reg_write(ip_core,reg_addr,reg_data)
        except:
           pass
            
    def _get_signal(self,signame):
        reg,regslice = self.ip.get(signame)
        return( (self.regs.get_u32(reg) >> regslice[0]) & ((1 << regslice[1])-1))

    def onCmd_CloseServer(self):
        msg = str.encode('exit')   
        ack,data = self._send(msg)

    def InitBoard(self,path,tableWidget,handler):
        #self._show_image(self.label_PmodConn,'boards\\pmod_conn.jpg')
        fname = path+os.path.sep+'pins.txt' 
        pmod_pins = eval(open(fname, 'r').read())   
        #print(pmod_pins)  
        hdr_labels = []
        x = 0
        for key in pmod_pins:
            hdr_labels.append(key)
            y = 0
            for y in range(8):
                tableWidget.setItem(y,x,QTableWidgetItem(pmod_pins[key][y]))
                #print('type',type(self.tableWidget_Board0.item))
                try:
                    tableWidget.item(y,x).setTextAlignment(Qt.AlignCenter|Qt.AlignVCenter)
                except:
                    print('ERROR:',y,x)    
            x += 1
        tableWidget.setHorizontalHeaderLabels(hdr_labels)
        tableWidget.clicked.connect(handler)
            
    @pyqtSlot()
    def _on_click_board_zybo_z7_20(self):
        self._on_click_board(self.tableWidget_Board_Zybo_z7_20)

    @pyqtSlot()
    def _on_click_board_zybo_z7_10(self):
        self._on_click_board(self.tableWidget_Board_Zybo_z7_10)

    @pyqtSlot()
    def _on_click_board_zybo(self):
        self._on_click_board(self.tableWidget_Board_Zybo)

    def _on_click_board(self,tableWidget):
        fname = 'boards\\pmod_usbuart\\pins.txt'
        pmod_pins = eval(open(fname, 'r').read())   
        #print('pmod pins',pmod_pins)        
        #print("click\n")
        for currentQTableWidgetItem in tableWidget.selectedItems():
            #print('0:',currentQTableWidgetItem.row(), currentQTableWidgetItem.column(), currentQTableWidgetItem.text())
            x =  currentQTableWidgetItem.column()
            for y in range(8):
                text = tableWidget.item(y,x).text()
                #print(text)
                self.tableWidget_Board1.setItem(y,1,QTableWidgetItem(text))
                self.tableWidget_Board1.setItem(y,0,QTableWidgetItem(pmod_pins[y]))

    def _show_image(self,widget,fname):
        pixmap = QPixmap(fname)
        width  = widget.frameGeometry().width()
        height = widget.frameGeometry().height()
        #print('label size=',width,height)
        #pixmap = pixmap.scaled(width, height, Qt.KeepAspectRatio)
        widget.setPixmap(pixmap)
        widget.resize(pixmap.width(),pixmap.height())
        widget.setStyleSheet("border: 1px solid black;")        

    def onCmd_TestUart(self):
        self._reg_write(6,3,0x40)  # send '@' to UART


        
        
    def InitKdaParameters(self):

        path = os.getcwd() + '\\projects\\'+ self.comboBox_SelectedProject.currentText()+'\\kda_params0.txt'
        try:
            dma_param = dict()
            #print('try reading dict:',path)
            with open(path,'r') as f:
                dma_param = eval(f.read())
            #print('read dict:',dma_param)
        except:
            print('failed reading dict')
            dma_param_list = ['rbuf_size','rbuf_sampling','rbuf_mode','rbuf_nslots','rbuf_wrptr','rbuf_rdptr','rbuf_replay_rdptr','rbuf_replay_en','video_mux']
        
            dma_param = dict()
            for item in dma_param_list:
                dma_param[item]=Parameter()
            
        for i,key in enumerate(dma_param):
            self.tableWidget_KdaParam0.setItem(i,0,QTableWidgetItem(key))
            self.tableWidget_KdaParam0.setItem(i,1,QTableWidgetItem(str(dma_param[key]['val'])))
            self.tableWidget_KdaParam0.setItem(i,2,QTableWidgetItem(str(dma_param[key]['minval'])))
            self.tableWidget_KdaParam0.setItem(i,3,QTableWidgetItem(str(dma_param[key]['maxval'])))
            self.tableWidget_KdaParam0.setItem(i,4,QTableWidgetItem(str(dma_param[key]['doc'])))
            
        self.tableWidget_KdaParam0.cellChanged.connect(self._on_click_kda_param0)
        self.tableWidget_KdaParam0.resizeColumnToContents(0)
        self.tableWidget_KdaParam0.resizeColumnToContents(1)
        self.tableWidget_KdaParam0.resizeColumnToContents(2)
        self.tableWidget_KdaParam0.resizeColumnToContents(3)
        self.tableWidget_KdaParam0.setHorizontalHeaderLabels(['Parameter', 'Value', 'Min', 'Max','Comment'])

    @pyqtSlot()
    def _on_click_kda_param0(self):
        signame = ''
        sigval = 0
        for currentQTableWidgetItem in self.tableWidget_KdaParam0.selectedItems():
            #print('0:',currentQTableWidgetItem.row(), currentQTableWidgetItem.column(), currentQTableWidgetItem.text())
            signame = self.tableWidget_KdaParam0.item(currentQTableWidgetItem.row(),0).text()
            sigval  = int(self.tableWidget_KdaParam0.item(currentQTableWidgetItem.row(),1).text(),16)
            #print('set signame,sigval',signame,sigval,type(sigval))
        ip = 0x43C04000
        self._set_signal(ip,signame,sigval)

    def onCmd_SyncKdaParams0(self):
        ip = 0x43C04000
        for row in range(self.tableWidget_KdaParam0.rowCount()):
            try:
                signame = self.tableWidget_KdaParam0.item(row,0).text()   
            except:
                signame = ''
                continue

            try:
                sigval = int(self.tableWidget_KdaParam0.item(row,1).text(),10)
            except:
                sigval = 0
                continue

            self._set_signal(ip,signame,sigval)
            #print('set signal',signame,sigval)

    def onCmd_SaveKdaParams0(self):
        dma_param = dict()
        for row in range(self.tableWidget_KdaParam0.rowCount()):
            par = Parameter()
            try:
                key = self.tableWidget_KdaParam0.item(row,0).text()
                try:
                    par.p['val'] = int(self.tableWidget_KdaParam0.item(row,1).text(),10)
                except:
                    par.p['val'] = 0
                try:
                    par.p['minval'] = int(self.tableWidget_KdaParam0.item(row,2).text(),10)
                except:
                    par.p['minval'] = 0
                try:
                    par.p['maxval'] = int(self.tableWidget_KdaParam0.item(row,3).text(),10)
                except:
                    par.p['maxval'] = 0
                try:
                    par.p['doc'] = self.tableWidget_KdaParam0.item(row,4).text()
                except:
                    par.p['doc']=''
            except:
                pass
            
            dma_param[key]=par.p           
            print(dma_param)   
        
        path = os.getcwd() + '\\projects\\'+ self.comboBox_SelectedProject.currentText()+'\\kda_params0.txt'
        open(path,'w').write(str(dma_param))
            
class Parameter():
    def __init__(self,val=0,minval=0,maxval=100,doc='doc'):
        self.p = dict()
        self.p['val'] = val
        self.p['minval'] = minval
        self.p['maxval'] = maxval
        self.p['doc'] = doc
            
if __name__ == '__main__':

    app = QtWidgets.QApplication(sys.argv)   
    window = MainWindow() 
     
    # Show GUI and enter the Main GUI Event Loop
    window.show() # IMPORTANT!!!!! Windows are hidden by default
    app.exec_() 
    with open('application_state.txt','w') as f:
        f.write(str(window.app_state))
    s.close()


