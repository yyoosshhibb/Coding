# -*- coding: utf-8 -*-
"""
Created on Mon Sep 21 11:19:42 2020

@author: Net

$$example1.py   Create minimum PYQT Application with Main Window
"""

# pyuic5 is part of the 'pyqt' package installation
# is used to convert the .ui User Interface files which are created in QT-Designer
# and to convert the GUI resources (e.g. images)

# we need the packages os and sys
import os 
os.system('pyuic5 dcd_regeditor.ui -o MainWindow.py')

import traceback   # needed for threads
import sys         # needed for the application arguments sys.args
import time        # needed to get system time
import socket      # needed for socket interface
import selectors   # needed for TCP/IP server
import types       # needed for TCP/IP server

# import multiprocessing for processes, queues and socket connections
from multiprocessing import Process, Queue, Value, Array
from multiprocessing.connection import Listener, Client


# import all packages from PYQT5  --> requires 'pyqt' added, e.g. in Anaconda
from PyQt5      import QtWidgets    
from MainWindow import Ui_MainWindow
from PyQt5.QtWidgets import * 
from PyQt5.QtCore import * 
from PyQt5.QtGui import * 

from PyQt5.QtWidgets import *  #needed for QMainWindow

import xmltodict

#Interface Signal configurations - parsed from the HDL-source code
from fpgaRegs import FpgaSignals


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
        print(self.path)
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
    error    = pyqtSignal(tuple)
    result   = pyqtSignal(object)
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
    def __init__(self, *args, obj=None, **kwargs):
        super(MainWindow, self).__init__(*args, **kwargs)
        self.setupUi(self)
        #https://www.geeksforgeeks.org/set-title-of-window-in-pyqt5-setwindowtitle/
        self.setWindowTitle("Digital Circuit Design WIZARD!")
        self.setWindowIcon(QIcon('icons\\app_icon.gif'))
        self.statusBar().showMessage('Ready')
        self.label_logo_fh.setPixmap(QPixmap("icons\\logo_fh.png"))

        # use threads
        self.threadpool = QThreadPool()
        print("Multithreading with maximum %d threads" % self.threadpool.maxThreadCount())

        self.my_thread()
        self.my_thread_flag = True
    
        self.timer1 = QTimer()
        self.timer1.setInterval(5000)
        self.timer1.timeout.connect(self.recurring_timer)
        self.timer1.start()

        self.timer2 = QTimer()
        self.timer2.setInterval(1000)
        self.timer2.timeout.connect(self.recurring_timer2)
        self.timer2.start()

        self.platform_connect = True
        #self.server_IP =  '127.0.0.1'   # The server's hostname or IP address
        self.server_ip =  '192.168.1.103'   # The server's hostname or IP address
        self.server_PORT = 10000       # The port used by the server
    
        self.categories = eval(open('projects\\categories.txt').read())
        print('categories:',self.categories)
        self.category_selected = self.InitCategory()
        self.project_selected = ''
        index = self.categories[self.category_selected]
        print('index=',index)
        self.stackedWidget.setCurrentIndex(index)
        #self.projectName = self.onCmd_SelectCategory()
 
        
    def onCmd_SignalsToTestbench(self):
        search_path = os.getcwd()+'\\projects\\'+self.category_selected
        directories=[d for d in os.listdir(search_path) if os.path.isdir(search_path+'\\'+d)]
        path = search_path + os.path.sep + self.comboBox_ProjectName.currentText()
        print('dirs:',directories)
        if self.comboBox_ProjectName.currentText() in directories:
            print('project exists')
        else:
            print('project does not exist!')
            print('index','text',self.comboBox_ProjectName.currentText())
            if self.comboBox_ProjectName.currentText()!='New...':
                os.makedirs(path)
                print('makedirs',path)
                settings=dict()
                settings['category']=self.category_selected
                settings['nregs'] = 1
                settings['ip_repo'] = 'none'
                settings['library'] = 'none'
                settings['regs'] = [['RW','reg00','31:0','signame','0','comment']]
                print(path,settings)
                with open(path+'\\config.txt','w') as f:
                    f.write(str(settings))

        self.project_selected = self.comboBox_ProjectName.currentText()
        settings = dict()
        try:
            with open(path+'\\config.txt','r') as f:
                settings = eval(f.read())
        except:
            settings['category'] = 'none'
            settings['nregs'] = 1
            settings['ip_repo'] = 'none'
            settings['library'] = 'none'
            settings['regs'] = [['RW','reg00','31:0','signame','0','comment']]
        print('project settings:',settings)
        if settings['category'] == 'RegisterBlock':
            for key in settings:
                if key == 'nregs':
                    self.spinBox_NumRegs.setValue(settings[key])
                elif key == 'entity_name':
                    self.lineEdit_EntityName.setText(settings[key])
                elif key == 'ip_repo':
                    self.lineEdit_IpRepo.setText(settings[key])
                elif key == 'library':
                    self.lineEdit_Library.setText(settings[key])

            tableWidget = self.tableWidget_Testbench
            tableWidget.clear()
            try:
                regs = settings['regs']
            except:
                settings['regs'] = [['RW','reg00','31:0','signame','0','comment']]  
                regs = settings['regs']
            for row in range(tableWidget.rowCount()):
                for column in range(tableWidget.columnCount()):
                    tableWidget.setItem(row,column,QTableWidgetItem(' '))
                    
            #'regs': [['RW', 'reg00', '3:0', 'leds', '0', 'onboard_leds'],
            self.tb_stimuli = dict()
            self.tb_sigs    = dict()
            self.tb_regs    = [0] * 32
            self.tb_rregs   = [0] * 32
            print('tb regs',self.tb_regs)
            tableWidget.setItem(0,0,QTableWidgetItem('TIMESTAMPS us '))
            # for i in range(5,tableWidget.columnCount()):
            #     tableWidget.item(0,i).setStyleSheet('background-color: rgb(220,255,220);')
            row = 0
            for item in regs:
                if item[0] == 'RW':
                    signame = item[3]
                    default = item[4]
                    access  = item[0]
                    regslice = item[2]
                    regname = item[1]
                    self.tb_sigs[signame] = [regname,regslice,default,access]
                    tableWidget.setItem(row+1,0,QTableWidgetItem(signame))
                    tableWidget.setItem(row+1,1,QTableWidgetItem('RW'))
                    tableWidget.setItem(row+1,2,QTableWidgetItem(regname))
                    tableWidget.setItem(row+1,3,QTableWidgetItem(regslice))
                    tableWidget.setItem(row+1,4,QTableWidgetItem(default))
                    row += 1
            for item in regs:
                if item[0] == 'R':
                    signame = item[3]
                    default = item[4]
                    access  = item[0]
                    regslice = item[2]
                    regname = item[1]
                    self.tb_sigs[signame] = [regname,regslice,default,access]
                    tableWidget.setItem(row+1,0,QTableWidgetItem(signame))
                    tableWidget.setItem(row+1,1,QTableWidgetItem('R'))
                    tableWidget.setItem(row+1,2,QTableWidgetItem(regname))
                    tableWidget.setItem(row+1,3,QTableWidgetItem(regslice))
                    tableWidget.setItem(row+1,4,QTableWidgetItem(default))
                    row += 1

            for item in self.tb_sigs:
                self._write_reg(item)
            print('sigdictionary',self.tb_sigs)
            

            tableWidget.resizeColumnToContents(0)                    
            #self.tableWidget_RegBlock.resizeRowsToContents()        
            header = ['SignalName','type','Register','Slice','ResetVal']    
            for i in range(tableWidget.columnCount()-6):
                header.append('TS {}'.format(i))
            tableWidget.setHorizontalHeaderLabels(header)
            stylesheet = "::section{Background-color:rgb(210,255,255);border-radius:20px;}"
            tableWidget.verticalHeader().setStyleSheet(stylesheet)                
            tableWidget.horizontalHeader().setStyleSheet(stylesheet)                
            tableWidget.cellChanged.connect(self._on_cellEntered_regblock)
            #self.tableWidget_RegBlock.clicked.connect(self._on_click_regblock)
            for col in range(tableWidget.columnCount()):
                tableWidget.item(0,col).setBackground(QColor(255,255,220))
 

    def onCmd_SaveStimuli(self):
        search_path = os.getcwd()+'\\projects\\'+self.category_selected
        directories=[d for d in os.listdir(search_path) if os.path.isdir(search_path+'\\'+d)]
        path = search_path + os.path.sep + self.comboBox_ProjectName.currentText()
        if os.path.exists(path+'\\stimuli'):
            print('stimuli exists')
        else:
            os.makedirs(path+'\\stimuli')
            print('create dir')
        tableWidget = self.tableWidget_Testbench
        path = path + '\\stimuli'
        self.tb_stimuli['timestamps'] = []
        for sig in self.tb_sigs:
            self.tb_stimuli[sig] = [[], []]    
        sigtypes = ['R','RW','EXT']
        # save timestamps
        for col in range(5,tableWidget.columnCount()):
            #print('row/col',row,col)
            try:
                #if tableWidget.item(0,col).text().isdigit():
                self.tb_stimuli['timestamps'].append(float(tableWidget.item(0,col).text()))
            except:
                pass
        for row in range(1,tableWidget.rowCount()):
            try:
                sigtype = tableWidget.item(row,1).text()
            except:
                sigtype = 'NONE'
            if sigtype in sigtypes:
                signame = tableWidget.item(row,0).text()
                regname = tableWidget.item(row,2).text()
                regslice = tableWidget.item(row,3).text()
                regdefault = tableWidget.item(row,4).text()
                self.tb_stimuli[signame][0] = [signame,sigtype,regname,regslice,regdefault]
  
                for col in range(5,tableWidget.columnCount()):
                    #print('row/col',row,col)
                    try:
                        if tableWidget.item(0,col).text().replace('.','',1).isdigit(): #valid timestamp
                            print('valid',tableWidget.item(0,col).text())
                            try:
                                val = tableWidget.item(row,col).text()
                            except:
                                val = ''
                            self.tb_stimuli[signame][1].append(val) 
                    except:
                        print('invalid',tableWidget.item(0,col).text())
                        pass
            else:
                break
        print('stimuli',self.tb_stimuli)
        # offset on SBUS
        offset = self.lineEdit_SbusOffset.text()
        try:
            offs = int(offset,16)
        except:
            offs = 0
        self.tb_stimuli['sbus_offset'] = '{:04X}'.format(offs) 
        with open(path+'\\stimulus.txt','w') as f:
            f.write(str(self.tb_stimuli))
            
        
    def onCmd_LoadStimuli(self):        
        search_path = os.getcwd()+'\\projects\\'+self.category_selected
        directories=[d for d in os.listdir(search_path) if os.path.isdir(search_path+'\\'+d)]
        path = search_path + os.path.sep + self.comboBox_ProjectName.currentText()
        if os.path.exists(path+'\\stimuli'):
            print('stimuli exist')
        else:
            return
        
        path = path + '\\stimuli'
        with open(path+'\\stimulus.txt','r') as f:
            self.tb_stimuli = eval(f.read())
        print('stimuli',self.tb_stimuli)

        tableWidget = self.tableWidget_Testbench
        #tableWidget.clear()
        header = ['SignalName','type','Register','Slice','ResetVal']    
        for i in range(tableWidget.columnCount()-6):
            header.append('TS {}'.format(i))
        tableWidget.setHorizontalHeaderLabels(header)
        stylesheet = "::section{Background-color:rgb(210,255,255);border-radius:20px;}"
        tableWidget.verticalHeader().setStyleSheet(stylesheet)                
        tableWidget.horizontalHeader().setStyleSheet(stylesheet)                
        sigtypes = ['R','RW','EXT']

        timestamps = self.tb_stimuli['timestamps']
        col = 0
        for ts in self.tb_stimuli['timestamps']:
            print('ts',ts)
            tableWidget.setItem(0,col+5,QTableWidgetItem(str(ts)))
            col += 1
        #row = 1
        #tableWidget.item(3,3).setBackground(QColor(255,125,125))
        
        for row in range(1,tableWidget.rowCount()):
            print('++++row',row)
            try:
                print('~~~',type(tableWidget.item(row,0)))
                signame = tableWidget.item(row,0).text()
                print('***signame',signame)
                if signame in self.tb_stimuli:
                    col = 5
                    for item in self.tb_stimuli[signame][1]:
                        tableWidget.setItem(row,col,QTableWidgetItem(item))
                        col += 1
            except:
                pass
        if 'sbus_offset' in self.tb_stimuli:            
            self.lineEdit_SbusOffset.setText(self.tb_stimuli['sbus_offset'])
        for col in range(tableWidget.columnCount()):
            tableWidget.item(0,col).setBackground(QColor(255,255,220))
        
    def onCmd_GenerateTB(self):        
        search_path = os.getcwd()+'\\projects\\'+self.category_selected
        directories=[d for d in os.listdir(search_path) if os.path.isdir(search_path+'\\'+d)]
        path = search_path + os.path.sep + self.comboBox_ProjectName.currentText()
        if os.path.exists(path+'\\stimuli'):
            print('stimuli exist')
        else:
            return
        
        path = path + '\\stimuli'
        with open(path+'\\stimulus.txt','r') as f:
            self.tb_stimuli = eval(f.read())
        print('stimuli',self.tb_stimuli)
        
        self.tb_regs  = [0]*64
        self.tb_rregs = [0]*64
        self.tb_regs_force = [0]*64
        self.tbreg_defaults()
        print('reg defaults',self.tb_regs)
        
        offset = self.lineEdit_SbusOffset.text()
        try:
            offs = int(offset,16)
        except:
            offs = 0
            
        tb_cmd = []
        ts_index = 0
        print('==========================================================================\n')
        for ts in self.tb_stimuli['timestamps']:
            #print('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~TS',ts,'\n')
            tmp_regs = self.tb_regs.copy()
            timestamp = 'TIME {}us\n'.format(ts)
            #print('------>timestamp:',timestamp)
            tb_cmd.append(timestamp)
            # for key in self.tb_stimuli:
            #     if key != 'timestamps':
            #         print('      key',key, 'ts_index',ts_index)
            self.tbreg_write(ts_index)
            #print('--tb_regs---->',self.tb_regs,self.tb_rregs)    
            ts_index += 1
            for i,reg in enumerate(self.tb_regs):
                #print('filter the reg',i,reg,tmp_regs[i])
                if tmp_regs[i] != reg or self.tb_regs_force[i] != 0:
                    cmd = 'MEMW {:08X} {:08X}\n'.format(i+offs,reg)
                    print(cmd)
                    tb_cmd.append(cmd)
            for i,reg in enumerate(self.tb_rregs):
                #print('filter the reg',i,reg,tmp_regs[i])
                if reg != 0:
                    cmd = 'MEMR {:08X}\n'.format(i+offs)
                    print(cmd)
                    tb_cmd.append(cmd)
            self.tb_rregs = [0]*64
            self.tb_regs_force = [0]*64
        #print('==>',tb_cmd)  
        #target_path   = self.lineEdit_IpRepo.text() + os.path.sep + self.lineEdit_Library.text() + '\\work\\'
        target_path   = self.lineEdit_WorkFolder.text() 
        if not os.path.exists(target_path):
            os.makedirs(target_path)
        target_name   = '\\buscommands.txt'
        #target_file   = os.getcwd()+'\\projects\\'+self.category_selected+os.path.sep+'target.vhd'
        target_file   = target_path+target_name
        with open(target_file,'w') as f:
            for item in tb_cmd:
                f.write(item)
                    
    def onCmd_ViewTB(self):
        target_path   = self.lineEdit_WorkFolder.text() 
        target_name   = '\\buscommands.txt'
        target_file   = target_path+target_name
        cmd = 'notepad {}'.format(target_file)

        worker = Worker(self.run_notepad,cmd) # Any other args, kwargs are passed to the run function
        self.threadpool.start(worker)

    def onCmd_InsertTS(self):
        tableWidget = self.tableWidget_Testbench
        col = None
        maxrow = tableWidget.rowCount()
        maxcol = tableWidget.columnCount()
        col_selected = []
        selection = dict()
        for col in range(maxcol):
            selection[col]= 0
        for currentQTableWidgetItem in tableWidget.selectedItems():
            row    = currentQTableWidgetItem.row()
            col = currentQTableWidgetItem.column()
            selection[col] += 1
            #print('Selected row/col',row,col)
        for col in selection:
            if selection[col] == maxrow:
                print('delete column',col)
                col_selected.append(col)
        if len(col_selected):
            tableWidget.insertColumn(col_selected[0])
            for row in range(tableWidget.rowCount()):
                tableWidget.setItem(row,col_selected[0],QTableWidgetItem(' '))
            tableWidget.item(0,col_selected[0]).setBackground(QColor(255,255,220))

    def onCmd_DeleteTS(self):
        tableWidget = self.tableWidget_Testbench
        col = None
        maxrow = tableWidget.rowCount()
        maxcol = tableWidget.columnCount()
        col_selected = []
        selection = dict()
        for col in range(maxcol):
            selection[col]= 0
        for currentQTableWidgetItem in tableWidget.selectedItems():
            row    = currentQTableWidgetItem.row()
            col = currentQTableWidgetItem.column()
            selection[col] += 1
            #print('Selected row/col',row,col)
        for col in selection:
            if selection[col] == maxrow:
                print('delete column',col)
                col_selected.append(col)
        if len(col_selected):
            tableWidget.removeColumn(col_selected[0])
                
    
    def run_notepad(self,cmd,progress_callback):
        os.system(cmd)
        
    def tbreg_write(self,index):
        #print('TB_REG_WRITE:',index,self.tb_stimuli)
        for key in self.tb_stimuli:
            if (key != 'timestamps') and (key != 'sbus_offset'):
                try:
                    item = self.tb_stimuli[key][0]
                    reg_num = int(item[2][3:],16)
                    access  = item[1]
                    sig_val_text = self.tb_stimuli[key][1][index]
                    if sig_val_text[0] == '!':
                        self.tb_regs_force[reg_num] = 1
                        sig_val_text = sig_val_text[1:].strip()
                    try:    
                        if sig_val_text[:2] == "d'":
                            sig_val = int(sig_val_text[2:])
                        else:   
                            sig_val = int(sig_val_text,16)
                    except:
                        sig_val = 0
                    if access == 'RW':
                        #print('tbreg_write',item,reg_num,access)
                        if sig_val_text == 'r' or sig_val_text == 'R':
                            self.tb_rregs[reg_num]  = 1    
                        else:
                            try:
                                reg_slice = item[3].split(':')
                                mask,slice_start = self._create_mask(reg_slice)
                                slice_val = (sig_val << slice_start)& mask 
                                #print(key,item,reg_num,sig_val,reg_slice,slice_val,self.tb_regs)
                                reg_val = self.tb_regs[reg_num]
                                self.tb_regs[reg_num]  = (reg_val & ~mask) | slice_val
                            except:   # keep old register value if invalid sigvalue
                                print('EXCEPT: keep old value')
                    elif access == 'R':
                        if sig_val_text == 'r' or sig_val_text == 'R':
                            print('tbreg_read',item,reg_num,access)
                            self.tb_rregs[reg_num]  = 1
                except:
                    pass
                    
    def tbreg_defaults(self):
        for key in self.tb_stimuli:
            if (key != 'timestamps') and (key != 'sbus_offset'):
                item = self.tb_stimuli[key][0]
                try:
                    reg_num = int(item[2][3:],16)
                    access = item[1]
                except:
                    reg_num = 255
                    print('-->ERROR:',key,item,item[2][3:])
                try:
                    sig_val = int(item[4],16)
                except:
                    sig_val = 0
                if access == 'RW':
                    reg_slice = item[3].split(':')
                    mask,slice_start = self._create_mask(reg_slice)
                    slice_val = (sig_val << slice_start)& mask 
                    #print(key,item,reg_num,sig_val,reg_slice,slice_val,self.tb_regs)
                    reg_val = self.tb_regs[reg_num]
                    self.tb_regs[reg_num]  = (reg_val & ~mask) | slice_val
                    
            

    def _write_reg(self,signame):
        print('signame',signame,self.tb_sigs[signame])
        reg_num = int(self.tb_sigs[signame][0][3:],16)
        try:
            sig_val = int(self.tb_sigs[signame][2],16)
        except:  # invalid or no  value
            sig_val = 0
        reg_slice = self.tb_sigs[signame][1].split(':')
        mask,slice_start = self._create_mask(reg_slice)
        slice_val = (sig_val << slice_start)& mask 
        reg_val = self.tb_regs[reg_num]
        self.tb_regs[reg_num]  = (reg_val & ~mask) | slice_val
        print('wr_regs',signame,sig_val,reg_num,reg_val,'-->',self.tb_regs[reg_num])

    def _create_mask(self,regslice):
        slice_start = int(regslice[1])
        slice_stop = int(regslice[0])
        mask=0
        for i in range(32):
            if i >= slice_start and i <= slice_stop:
                mask |= 1 << i
        return mask,slice_start        

    def setreg(self,sigName,sigValue):
        self.wrSignals[sigName][3] = sigValue
        reg_name = self.wrSignals[sigName][0]
        reg_addr = int(reg_name[3:],16)
        reg_val  = self.wrRegs[reg_name]
        regslice = self.wrSignals[sigName][1].split(':')
        mask,slice_start = self._create_mask(regslice)
        slice_val = (sigValue << slice_start)& mask 
        reg_val   = (reg_val & ~mask) | slice_val
        self.wrRegs[reg_name] = reg_val
        #print("wr_value {} after = {:08X} mask={:032b}".format(reg_name,reg_val,~mask))       
        return reg_addr,reg_val

    def onMyToolBarButtonClick(self, s):
        print("click", s)

    def onApuStartClick(self, s):
        print("click", s)

    def onApuStopClick(self, s):
        print("click", s)
        
    def onTcpServerStartClick(self, s):
        print("click", s)
        self.button_action.setIcon(QIcon("icons\\Server_ON.jpg") if s else QIcon("icons\\Server_OFF.jpg"))
        if s:
            print('connect to server')
            try:
                #with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
                print('1')
                self.s= socket.socket(socket.AF_INET, socket.SOCK_STREAM) 
                #self.s.settimeout(1)
                print('2')
                self.s.connect((self.server_IP, self.server_PORT))
                self.platform_connect = True
            except:
                print("ERROR connecting to server1 on port",self.server_PORT)
        else:
            try:
                self.s.close()
                print('connection closed')
                self.platform_connect = False
            except:
                print("ERROR closing connection")

    def onTcpServerStopClick(self, s):
        print("click", s)
        
    def onTcpServerCloseClick(self, s):
        print("click", s)

    def onCmd_ConnectToServer(self):
        if self.pushButton_ConnectToServer.text() == "CONNECT to SERVER":
            print('connect to server')
            try:
                with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
                    self.s= socket.socket(socket.AF_INET, socket.SOCK_STREAM) 
                self.s.connect((self.server_IP, self.server_PORT))
                self.pushButton_ConnectToServer.setStyleSheet("background-color: green")
                self.pushButton_ConnectToServer.setText("CONNECTED")
                self.platform_connect = True
            except:
                print("ERROR connecting to server")
        else:
            try:
                self.s.close()
                print('connection closed')
                self.platform_connect = False
            except:
                print("ERROR closing connection")
            self.pushButton_ConnectToServer.setStyleSheet("background-color: white")
            self.pushButton_ConnectToServer.setText("CONNECT to SERVER")


    def InitCategory(self):
        
        search_path = os.getcwd()+'\\projects'
        directories=[d for d in os.listdir(search_path) if os.path.isdir(search_path+'\\'+d)]
           
        self.comboBox_Category.addItems(directories)
        text = self.comboBox_Category.currentText()
        return text
         

    def onCmd_SelectProject(self,x):
        if x>0:
            search_path = os.getcwd()+'\\projects\\'+self.category_selected
            directories=[d for d in os.listdir(search_path) if os.path.isdir(search_path+'\\'+d)]
            path = search_path + os.path.sep + self.comboBox_ProjectName.currentText()
            print('dirs:',directories,x)
            if self.comboBox_ProjectName.currentText() in directories:
                print('project exists')
            else:
                print('project does not exist!')
                print('index',x,'text',self.comboBox_ProjectName.currentText())
                if self.comboBox_ProjectName.currentText()!='New...':
                    os.makedirs(path)
                    print('makedirs',path)
                    settings=dict()
                    settings['category']=self.category_selected
                    settings['nregs'] = 1
                    settings['ip_repo'] = 'none'
                    settings['library'] = 'none'
                    settings['regs'] = [['RW','reg00','31:0','signame','0','comment']]
                    print(path,settings)
                    with open(path+'\\config.txt','w') as f:
                        f.write(str(settings))

            self.project_selected = self.comboBox_ProjectName.currentText()
            settings = dict()
            try:
                with open(path+'\\config.txt','r') as f:
                    settings = eval(f.read())
            except:
                settings['category'] = 'none'
                settings['nregs'] = 1
                settings['ip_repo'] = 'none'
                settings['library'] = 'none'
                settings['work'] = 'none'
                settings['regs'] = [['RW','reg00','31:0','signame','0','comment']]
            print('project settings:',settings)
            if settings['category'] == 'RegisterBlock':
                for key in settings:
                    if key == 'nregs':
                        self.spinBox_NumRegs.setValue(settings[key])
                    elif key == 'entity_name':
                        self.lineEdit_EntityName.setText(settings[key])
                    elif key == 'ip_repo':
                        self.lineEdit_IpRepo.setText(settings[key])
                    elif key == 'library':
                        self.lineEdit_Library.setText(settings[key])
                    elif key == 'work':
                        self.lineEdit_WorkFolder.setText(settings[key])

                self.tableWidget_RegBlock.clear()
                try:
                    regs = settings['regs']
                except:
                    settings['regs'] = [['RW','reg00','31:0','signame','0','comment']]  
                    regs = settings['regs']
                for row in range(self.tableWidget_RegBlock.rowCount()):
                    for column in range(self.tableWidget_RegBlock.columnCount()):
                        self.tableWidget_RegBlock.setItem(row,column,QTableWidgetItem(' '))

                for row,item in enumerate(regs):
                    for i,cell in enumerate(item):
                        self.tableWidget_RegBlock.setItem(row,i,QTableWidgetItem(item[i]))

                self.tableWidget_RegBlock.resizeColumnToContents(3)                    
                #self.tableWidget_RegBlock.resizeRowsToContents()                    
                self.tableWidget_RegBlock.setHorizontalHeaderLabels(['Access','Register','Slice','Signal','Default(Hex)','Comment'])
                stylesheet = "::section{Background-color:rgb(190,255,255);border-radius:14px;}"
                self.tableWidget_RegBlock.verticalHeader().setStyleSheet(stylesheet)                
                self.tableWidget_RegBlock.horizontalHeader().setStyleSheet(stylesheet)                
                self.tableWidget_RegBlock.cellChanged.connect(self._on_cellEntered_regblock)
                #self.tableWidget_RegBlock.clicked.connect(self._on_click_regblock)
    @pyqtSlot()
    def _on_cellEntered_regblock(self):
        self.tableWidget_RegBlock.resizeColumnToContents(3)                    
        #print('cellEntered')
        
    @pyqtSlot()
    def _on_click_regblock(self):
        for currentQTableWidgetItem in self.tableWidget_RegBlock.selectedItems():
            row    = currentQTableWidgetItem.row()
            column = currentQTableWidgetItem.column()
            if column == 0:
                print('Insert Row')
                self.tableWidget_RegBlock.insertRow(row)
                self.tableWidget_RegBlock.setItem(row, 0, self._tab_icon('icons\\plus.png'))
                self.tableWidget_RegBlock.setItem(row, 1, self._tab_icon('icons\\cross.png'))
                comboBox = QComboBox()
                comboBox.setStyleSheet("QListView"
                                     "{"
                                     "background-color: lightgreen;"
                                     "}")                 
                for txt in ["Read/Write","Read"]:
                    comboBox.addItem(txt)
                self.tableWidget_RegBlock.setCellWidget(row, 2, comboBox)
            elif column == 1:
                print('Delete Row',row,self.tableWidget_RegBlock.rowCount())
                self.tableWidget_RegBlock.removeRow(row)
                self.tableWidget_RegBlock.setItem(0, 0, self._tab_icon('icons\\plus.png'))
                self.tableWidget_RegBlock.setItem(0, 1, self._tab_icon('icons\\cross.png'))
                comboBox = QComboBox()
                for txt in ["Read/Write","Read"]:
                    comboBox.addItem(txt)
                self.tableWidget_RegBlock.setCellWidget(0, 2, comboBox)

    def _tab_icon(self,icon_file):
        status_item = QtWidgets.QTableWidgetItem()
        status_icon = QIcon()
        status_icon.addPixmap(QPixmap(icon_file), QIcon.Normal, QIcon.Off)
        status_item.setIcon(status_icon)
        return status_item

    def onCmd_RegBlockRowUp(self):
        row = None
        for currentQTableWidgetItem in self.tableWidget_RegBlock.selectedItems():
            row    = currentQTableWidgetItem.row()
            column = currentQTableWidgetItem.column()
            print('Selected row/col',row,column)
        item = []
        if row is not None:
            for column in range(6):
                print('col/row',column,row)
                item.append(self.tableWidget_RegBlock.item(row,column).text())
            print('row items',item)
            self.tableWidget_RegBlock.removeRow(row)    
            self.tableWidget_RegBlock.insertRow(row-1)
            for column in range(6):
                self.tableWidget_RegBlock.setItem(row-1,column,QTableWidgetItem(item[column]))
            self.tableWidget_RegBlock.item(row-1,1).setSelected(True)    
            self.tableWidget_RegBlock.resizeColumnToContents(3)                    

    def onCmd_RegBlockRowDown(self):
        row = None
        for currentQTableWidgetItem in self.tableWidget_RegBlock.selectedItems():
            row    = currentQTableWidgetItem.row()
            column = currentQTableWidgetItem.column()
            print('Selected row/col',row,column)
        item = []
        if row is not None:
            for column in range(6):
                print('col/row',column,row)
                item.append(self.tableWidget_RegBlock.item(row,column).text())
            print('row items',item)
            self.tableWidget_RegBlock.removeRow(row)    
            self.tableWidget_RegBlock.insertRow(row+1)
            for column in range(6):
                self.tableWidget_RegBlock.setItem(row+1,column,QTableWidgetItem(item[column]))
            self.tableWidget_RegBlock.item(row+1,1).setSelected(True)    
            pass
    def onCmd_RegBlockDeleteRow(self):
        row = None
        for currentQTableWidgetItem in self.tableWidget_RegBlock.selectedItems():
            row    = currentQTableWidgetItem.row()
            column = currentQTableWidgetItem.column()
        print('Selected row/col',row,column)
        if row is not None:
            self.tableWidget_RegBlock.removeRow(row)

    def onCmd_RegBlockInsertRow(self):
        row = None
        for currentQTableWidgetItem in self.tableWidget_RegBlock.selectedItems():
            row    = currentQTableWidgetItem.row()
            column = currentQTableWidgetItem.column()
            print('Selected row/col',row,column)
        if row is None:
            print('row is None')
            row = self.tableWidget_RegBlock.rowCount()-1
            print('row=',row)
        self.tableWidget_RegBlock.insertRow(row)
        for i in range(self.tableWidget_RegBlock.columnCount()):
            self.tableWidget_RegBlock.setItem(row,i,QTableWidgetItem('...'))
        # comboBox = QComboBox()
        # comboBox.addItems(["R/W","R"])
        # self.tableWidget_RegBlock.setCellWidget(row, 0, comboBox)
        
        
    def onCmd_SaveRegBlock(self):
        settings = dict()
        settings['category'] = 'RegisterBlock'
        settings['ip_repo'] = self.lineEdit_IpRepo.text()
        settings['library'] = self.lineEdit_Library.text()
        settings['entity_name'] = self.lineEdit_EntityName.text()
        nregs = self.spinBox_NumRegs.value()
        settings['nregs'] = nregs 
        settings['work'] = self.lineEdit_WorkFolder.text()
        
        reglist = []
        regnum = 0
        for row in range(self.tableWidget_RegBlock.rowCount()):
            if self.tableWidget_RegBlock.item(row,1) != None:
                if self.tableWidget_RegBlock.item(row,1).text().strip()[:3]== 'reg':
                    regnum = max(regnum,int(self.tableWidget_RegBlock.item(row,1).text().strip()[3:],16)+1)
                    print(self.tableWidget_RegBlock.item(row,1).text())
                    reg=[]
                    for column in range(self.tableWidget_RegBlock.columnCount()):
                        reg.append(self.tableWidget_RegBlock.item(row,column).text().strip())
                    reglist.append(reg)
        print('number of regs:',regnum,nregs)
        if regnum > nregs:             
            settings['nregs'] = regnum 
            self.spinBox_NumRegs.setValue(regnum)  
        settings['regs'] = reglist
        print(settings)
        path = os.getcwd()+'\\projects\\'+self.category_selected+os.path.sep+self.project_selected
        print(path)
        with open(path+'\\config.txt','w') as f:
            f.write(str(settings))

    def onCmd_GenerateRegBlock(self):
        path = os.getcwd()+'\\projects\\'+self.category_selected+os.path.sep+self.project_selected
        settings = dict()
        with open(path+'\\config.txt','r') as f:
            settings = eval(f.read())
        regs = settings['regs']
        print(regs)
        template_file = os.getcwd()+'\\projects\\'+self.category_selected+os.path.sep+'template_regs_rtl.vhd'
        target_path   = self.lineEdit_IpRepo.text() + os.path.sep + self.lineEdit_Library.text() + '\\hdl\\'
        target_name   = self.lineEdit_EntityName.text().split('.')[0]+'_rtl.vhd'
        target_file   = os.getcwd()+'\\projects\\'+self.category_selected+os.path.sep+'target.vhd'
        target_file   = target_path+target_name
        try:
            fw = open(target_file,'w')
        except:
            msgBox = QMessageBox()
            msgBox.setIcon(QMessageBox.Critical)
            msgBox.setText("Unable to open Target File !")
            msgBox.setWindowTitle("ERROR")
            msgBox.setStandardButtons(QMessageBox.Ok)
            returnValue = msgBox.exec()

            return
        keystring = ''        
        skip = False
        if True:
            with open(template_file,'r') as fr:
                for line in fr:
                    if skip:
                        skip = False
                        continue
                    fw.write(line)
                    if '--$nregs_g' in line:
                        print('nregs_g:',settings['nregs'])
                        keystring = '--$nregs_g'
                        skip = True
                        fw.write('      nregs_g      : integer := {}\n'.format(settings['nregs']))
    
                    elif '--$entity' in line:
                        keystring = '--$entity'
                        skip = True
                        fw.write('entity {} is\n'.format(settings['entity_name']))
                    elif '--$end_entity' in line:
                        skip = True
                        fw.write('end entity {};\n'.format(settings['entity_name']))
    
                    elif '--$architecture' in line:
                        skip = True
                        fw.write('architecture rtl of {} is\n'.format(settings['entity_name']))
    
                    elif '--$portsignals' in line:
                        for item in regs:
                            vhd = self._make_portsignal(item)
                            fw.write(vhd)
                        fw.write('--$end_portsignals\n')
    
                    elif '--$regsignals' in line:
                        for i in range(settings['nregs']):
                            fw.write('signal reg{:02X}:      std_logic_vector(31 downto 0);\n'.format(i))
                            fw.write('signal reg{:02X}_in:   std_logic_vector(31 downto 0);\n'.format(i))
                            fw.write('signal reg{:02X}_def:  std_logic_vector(31 downto 0);\n'.format(i))
                        fw.write('--$end_regsignals\n')
    
                    elif '--$regslices' in line:
                        for i in range(settings['nregs']):
                            fw.write(' reg{:02X} <= reg_dout({} downto {});\n'.format(i,i*32+31, i*32))
                        fw.write('--$end_regslices\n')
    
                    elif '--$default_values' in line:
                        defaults = self._make_defaults(regs,settings['nregs'])
                        print(defaults)
                        print(settings['nregs'])
                        for i in range(settings['nregs']):
                            fw.write(' reg{:02X}_def <= X"{:08X}";\n'.format(i,defaults[i]))
                        for i in range(settings['nregs']):
                            fw.write(' resetval({:3d} downto {:3d}) <= reg{:02X}_def;\n'.format(i*32+31,i*32,i))
                        fw.write('--$end_default_values\n')
    
                    elif '--wr_regs_on' in line:
                        for item in regs:
                            vhd = self._make_wrsignal(item)
                            if vhd:
                                fw.write(vhd)
                    elif '--rd_regs_on' in line:
                        for item in regs:
                            vhd = self._make_rdsignal(item)
                            if vhd:
                                fw.write(vhd)
                            
                    elif '--$readback_regs' in line:
                        fw.write('process(clk)\n')
                        fw.write('begin\n')
                        fw.write('   if rising_edge(clk) then\n')
                        fw.write('         -- default assignment: internal register readback----------\n')
                        fw.write('        reg_din <= reg_dout;\n ')
                        fw.write('         --external readback registers-----\n')
                        for item in regs:
                            vhd = self._make_rdreg(item)
                            if vhd:
                                fw.write('        '+vhd)
                        fw.write('    end if;\n')
                        fw.write('end process;\n')
        else:
            msgBox = QMessageBox()
            msgBox.setIcon(QMessageBox.Critical)
            msgBox.setText("ERROR in Generation of VHDL File !\n {}".format(keystring))
            msgBox.setWindowTitle("ERROR")
            msgBox.setStandardButtons(QMessageBox.Ok)
            returnValue = msgBox.exec()
            return
        fw.close()    
        msgBox = QMessageBox()
        msgBox.setIcon(QMessageBox.Information)
        msgBox.setText("VHDL File successfully generated! !")
        msgBox.setWindowTitle("INFO")
        msgBox.setStandardButtons(QMessageBox.Ok)
        returnValue = msgBox.exec()

    def _make_wrsignal(self,item):
        if item[0]=='RW':
            signame = item[3]
            regname = item[1]
            comment = item[5]
            regslice = self._convert_slice(item[2])
            sig = '{:20} <= {}{};--{}\n'.format(signame,regname,regslice,comment)
            return sig
        elif item[0]=='RWS':
            signame = item[3]
            regnum  = int(item[1][3:],16)             
            comment = item[5]
            sig = '{:20} <= we({});--{}\n'.format(signame,regnum,comment)
            return sig
        elif item[0]=='RRS':
            signame = item[3]
            regnum  = int(item[1][3:],16)             
            comment = item[5]
            sig = '{:20} <= rd({});--{}\n'.format(signame,regnum,comment)
            return sig
        else:
            return ''
            
    def _make_rdsignal(self,item):
        if item[0] == 'R':
            signame = item[3]
            regname = item[1]
            comment = item[5]
            regslice = self._convert_slice(item[2])
            sig = '{}_in{} <= {};--{}\n'.format(regname,regslice,signame,comment)
            return sig
        else:
            return ''

    def _make_rdreg(self,item):
        if item[0] == 'R':
            signame = item[3]
            regslice = self._convert_regdout_slice(item[1],item[2])
            sig = 'reg_din{} <= {};\n'.format(regslice,signame)
            return sig
        else:
            return ''
            
    def _make_defaults(self,regs,nregs):
        #defaults = [0 for i in range(nregs)]
        defaults = [0] * nregs
        for item in regs:
            print('item',item)
            try:
                if item[4][:2] == "d'":
                    value = int(item[4][2:])
                else:
                    value = int(item[4],16)
                start, mask = self._make_slice(item[2])
            
                val = (value & mask) << start
            except:
                val = 0
            regnum = int(item[1][3:],16)
            print('regnum',regnum)
            defaults[regnum] |= val
            print(item[1],item[2],start,mask)
            
        return defaults

    def _convert_slice(self,slice_str):
        regslice = slice_str.split(':')
        slice_start = int(regslice[0])
        slice_stop = int(regslice[1])
        if slice_start == slice_stop:
            regslice = '({})'.format(slice_start)
        else:
            regslice = '({:2d} downto {:2d})'.format(slice_start,slice_stop)
        return regslice

    def _convert_regdout_slice(self,regname,slice_str):
        regslice = slice_str.split(':')
        slice_start = int(regslice[0])
        slice_stop = int(regslice[1])
        regnum = int(regname[3:],16)
        if slice_start == slice_stop:
            regslice = '({})'.format(slice_start+32*regnum)
        else:
            regslice = '({} downto {})'.format(slice_start+32*regnum,slice_stop+32*regnum)
        return regslice

    def _make_slice(self,slice_str):
        try:
            regslice = slice_str.split(':')
            slice_start = int(regslice[0])
            slice_stop = int(regslice[1])
            mask = (1 << (slice_start-slice_stop+1))-1
            return slice_stop, mask
        except:
            return 0,0
        
        
    def _make_portsignal(self,item):   
        if item[0] not in ['R','RW','RWS','RRS']:
            return
        if item[0] in ['RW','RWS','RRS']:
            sigdir = 'out'
        elif item[0] == 'R':
            sigdir = 'in '
        if item[0] in ['R','RW']:
            regslice = item[2].split(':')
            slice_start = int(regslice[0])
            slice_stop = int(regslice[1])
        elif item[0] in ['RRS','RWS']:
            slice_start = 0
            slice_stop = 0            
        if slice_start == slice_stop:
            sigtype = 'std_logic'
        else:
            sigtype = 'std_logic_vector({} downto 0)'.format(slice_start-slice_stop)
        portsig = '      {:23}:{}    {};\n'.format(item[3],sigdir,sigtype)
        return portsig

    def onCmd_ViewCodeTemplate(self):
        path = os.getcwd()+'\\projects\\'+self.category_selected+os.path.sep+self.project_selected
        settings = dict()
        with open(path+'\\config.txt','r') as f:
            settings = eval(f.read())
        regs = settings['regs']
        print(regs)
        template_file = os.getcwd()+'\\projects\\'+self.category_selected+os.path.sep+'template_regs_rtl.vhd'
        cmd = 'notepad {}'.format(template_file)

        worker = Worker(self.run_notepad,cmd) # Any other args, kwargs are passed to the run function
        self.threadpool.start(worker)
 
    def onCmd_ViewGeneratedCode(self):
        path = os.getcwd()+'\\projects\\'+self.category_selected+os.path.sep+self.project_selected
        settings = dict()
        with open(path+'\\config.txt','r') as f:
            settings = eval(f.read())
        regs = settings['regs']
        print(regs)
        template_file = os.getcwd()+'\\projects\\'+self.category_selected+os.path.sep+'template_regs_rtl.vhd'
        target_path   = self.lineEdit_IpRepo.text() + os.path.sep + self.lineEdit_Library.text() + '\\hdl\\'
        target_name   = self.lineEdit_EntityName.text().split('.')[0]+'_rtl.vhd'
        target_file   = os.getcwd()+'\\projects\\'+self.category_selected+os.path.sep+'target.vhd'
        target_file   = target_path+target_name
        cmd = 'notepad {}'.format(target_file)

        worker = Worker(self.run_notepad,cmd) # Any other args, kwargs are passed to the run function
        self.threadpool.start(worker)
         
    def onCmd_SelectCategory(self,x):
        self.category_selected = x
        search_path = os.getcwd()+'\\projects\\'+x
        directories=[d for d in os.listdir(search_path) if os.path.isdir(search_path+'\\'+d)]
        directories.insert(0,'New...')   
        self.comboBox_ProjectName.clear()
        self.comboBox_ProjectName.addItems(directories)
        text = self.comboBox_ProjectName.currentText()
        #print('proj name=',text)
        index = self.categories[self.category_selected]
        self.stackedWidget.setCurrentIndex(index)
        if index == 0:
            #self.tableWidget_RegBlock.resizeColumnToContents(0)
            self.tableWidget_RegBlock.setHorizontalHeaderLabels([ 'Access','Register','Slice','Signal','Default','Comment'])

    def onCmd_SelectRepository(self):
        filename = QFileDialog.getExistingDirectory()
        if filename:
            print(filename)
            self.lineEdit_IpRepo.setText(filename.replace('/','\\'))
        pass
    
    def onCmd_SelectLibrary(self):
        filename = QFileDialog.getExistingDirectory()
        if filename:
            print(filename)
            filename = filename.replace('/','\\') 
            libname = filename.split('\\')[-1]
            self.lineEdit_Library.setText(libname)
        
    def onCmd_SelectWorkFolder(self):
        filename = QFileDialog.getExistingDirectory()
        if filename:
            print(filename)
            filename = filename.replace('/','\\') 
            workname = filename.split('\\')[-1]
            self.lineEdit_WorkFolder.setText(filename)
        
         
    
    # 2 general purpose timer methods--------------------------------------------------         
    def recurring_timer(self):
        time_now = time.time()
        #print('System time is',time_now)
        time_string = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time_now))   
        #print(time_string)
                
    def recurring_timer2(self):
        pass
    
    # callbacks for worker threads---------------------------------------------------------        
    def print_output(self):
        print('Thread output')
    def thread_complete(self):
        print('THREAD complete')
    def progress_fn(self):
        #print('THREAD progress')
        pass

    def my_thread(self):
        worker = Worker(self.run_my_thread) # Any other args, kwargs are passed to the run function
        worker.signals.result.connect(self.print_output)
        worker.signals.finished.connect(self.thread_complete)
        worker.signals.progress.connect(self.progress_fn)
        self.threadpool.start(worker)

        
    def run_my_thread(self,progress_callback):
        while True:
            if self.my_thread_flag:
                #print('HELLO from my thread')
                time.sleep(5)
                
                
            else:    
                time.sleep(0.1)

def my_process(queue,num,arr):
    #-------------------------------------------------------------
    #  Multiconnection TCP/IP server functions
    #-------------------------------------------------------------
    def accept_wrapper(sock):
        conn, addr = sock.accept()  # Should be ready to read
        print('accepted connection from', addr)
        conn.setblocking(False)
        data = types.SimpleNamespace(addr=addr, inb=b'', outb=b'')
        events = selectors.EVENT_READ | selectors.EVENT_WRITE
        sel.register(conn, events, data=data)
    
    def service_connection(key, mask):
        sock = key.fileobj
        data = key.data
        if mask & selectors.EVENT_READ:
            try:
                recv_data = sock.recv(1024)  # Should be ready to read
                if recv_data:
                    # data.outb += recv_data
                    print('rcv',recv_data)
                    return True,recv_data,sock
                else:
                    print('closing connection to', data.addr)
                    sel.unregister(sock)
                    sock.close()
            except:
                print('CONNECTION ERROR')
                return False ,str.encode('ERROR'),sock
                        
        if mask & selectors.EVENT_WRITE:
            if data.outb:
                print('echoing', repr(data.outb), 'to', data.addr)
                sent = sock.send(data.outb)  # Should be ready to write
                data.outb = data.outb[sent:]
        return False,0,sock

    port = 10000
    #host = '192.168.1.103'
    host = '127.0.0.1'

    sel = selectors.DefaultSelector()
     
    lsock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    lsock.bind((host, port))
    lsock.listen()
    print('listening on', (host, port))
    lsock.setblocking(False)
    sel.register(lsock, selectors.EVENT_READ, data=None)
    
    cnt=0
    
    
    while True:
        time.sleep(1)
        events = sel.select(timeout=None)
        for key, mask in events:
            if key.data is None:
                accept_wrapper(key.fileobj)
            else:
                ret,val,sock = service_connection(key, mask)
                if ret:
                    print('received CMD:',val)
                    msg = val.decode()
                    msg_token = msg.split()
                    print('received from GUI:',msg,' tokens: ',msg_token)
                    #echo
                    sock.send(str.encode('ECHO: '+msg))
                    

        if queue.qsize() < 10:
            pass
            #queue.put(wrptr)
        else:
            print (queue.qsize())


if __name__ == '__main__':  #safeguard that this code is not executed when it is imported into another Python module

    app    = QtWidgets.QApplication(sys.argv)   
    window = MainWindow() 

    # Create a queue and launch the process for grabbing the video frames
    num = Value('d', 0.0)
    arr = Array('i', range(10))
    print(num.value)
    print(arr[:])

    # # create queue and launch the DMA data grabber process
    q = Queue()
    p = Process(target=my_process, args=(q,num,arr))    
    p.start()

     
    # Show GUI and enter the Main GUI Event Loop
    window.show() # IMPORTANT!!!!! Windows are hidden by default
    app.exec_() 
    window.s.close()
    p.terminate()
    #enter the Main GUI Event Loop


