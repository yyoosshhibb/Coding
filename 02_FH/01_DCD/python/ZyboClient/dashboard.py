# -*- coding: utf-8 -*-
"""
Created on Tue Jan  5 11:43:05 2021

@author: Net
"""
from PyQt5.QtWidgets import * 
from PyQt5.QtCore import * 
from PyQt5.QtGui import * 
from PyQt5.QtWidgets import QSlider


from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtCore import Qt
from PyQt5.QtGui import QPainter, QBrush, QPen, QRadialGradient
from PyQt5.QtGui import  QColor

from PyQt5.QtCore import Qt
import sys
from PyQt5.QtCore import Qt, QPoint


class SettingsDialog(QDialog):
    
    def __init__(self,settings,parent=None):
        super().__init__(parent,modal=True)
        self.setLayout(QFormLayout())
        self.settings = settings
        self.layout().addRow(
            QLabel('<h1>Widget Settings</h1>'),
            )
        self.show_settings_pb = QPushButton('Print to Console', clicked=self.print_settings)
        self.layout().addRow(' Settings',self.show_settings_pb)
             
        # self.show_warnings_cb = QCheckBox(checked=settings.get('show_warnings'))
        # self.layout().addRow('Show Warnings',self.show_warnings_cb)

        self.show_signals_cb = QComboBox()       
        self.show_signals_cb.addItems(self.settings['signals'])
        print('settings---->',self.settings)

        if 'selected_signal' in self.settings:
            self.show_signals_cb.setCurrentText(self.settings['selected_signal'])
        self.layout().addRow('Select Signal',self.show_signals_cb)

        self.show_signals_mask_sb = QSpinBox() 
        if 'signal_mask' in self.settings:
            self.show_signals_mask_sb.setValue(self.settings['signal_mask'])
        self.layout().addRow('Signal Bit',self.show_signals_mask_sb)

        self.show_height_sb = QSpinBox() 
        self.show_height_sb.setMaximum(100000)
        if 'height' in self.settings:
            self.show_height_sb.setValue(self.settings['height'])
        self.layout().addRow('Widget Height',self.show_height_sb)

        self.show_width_sb = QSpinBox() 
        self.show_width_sb.setMaximum(100000) 
        if 'width' in self.settings:
            self.show_width_sb.setValue(self.settings['width'])
        self.layout().addRow('Widget Width',self.show_width_sb)

        self.show_radix_cb = QComboBox()       
        self.show_radix_cb.addItems(['decimal','hex'])
        if 'radix' in self.settings:
            self.show_radix_cb.setCurrentText(self.settings['radix'])
        self.layout().addRow('Radix',self.show_radix_cb)

        self.accept_btn = QPushButton('Ok', clicked = self.accept)
        self.cancel_btn = QPushButton('Cancel',clicked = self.reject)
        self.layout().addRow(self.accept_btn,self.cancel_btn)
        
    def accept(self):
        # self.settings['show_warnings'] = self.show_warnings_cb.isChecked()
        self.settings['selected_signal'] = self.show_signals_cb.currentText()
        self.settings['signal_mask'] = self.show_signals_mask_sb.value()
        self.settings['width'] = self.show_width_sb.value()
        self.settings['height'] = self.show_height_sb.value()
        self.settings['radix'] = self.show_radix_cb.currentText()
        super().accept()

    def print_settings(self):
        print('---------Settings of Widget---------:\n',self.settings)

class DSpinBoxSettingsDialog(QDialog):
    
    def __init__(self,settings,parent=None):
        super().__init__(parent,modal=True)
        self.setLayout(QFormLayout())
        self.settings = settings
        self.layout().addRow(
            QLabel('<h1>Widget Settings</h1>'),
            )
        self.show_settings_pb = QPushButton('Print to Console', clicked=self.print_settings)
        self.layout().addRow(' Settings',self.show_settings_pb)
             
        # self.show_warnings_cb = QCheckBox(checked=settings.get('show_warnings'))
        # self.layout().addRow('Show Warnings',self.show_warnings_cb)

        self.show_signals_cb = QComboBox()       
        self.show_signals_cb.addItems(self.settings['signals'])
        #print('SpinBox settings',self.settings)

        if 'selected_signal' in self.settings:
            self.show_signals_cb.setCurrentText(self.settings['selected_signal'])
        self.layout().addRow('Select Signal',self.show_signals_cb)

        self.show_signals_minval_sb = QSpinBox() 
        self.show_signals_minval_sb.setMaximum(100000)
        if 'min_val' in self.settings:
            self.show_signals_minval_sb.setValue(self.settings['min_val'])
        self.layout().addRow('Min Value',self.show_signals_minval_sb)

        self.show_signals_maxval_sb = QSpinBox() 
        self.show_signals_maxval_sb.setMaximum(100000)
        if 'max_val' in self.settings:
            self.show_signals_maxval_sb.setValue(self.settings['max_val'])
        self.layout().addRow('Max Value',self.show_signals_maxval_sb)

        self.show_height_sb = QSpinBox() 
        self.show_height_sb.setMaximum(100000)
        if 'height' in self.settings:
            self.show_height_sb.setValue(self.settings['height'])
        self.layout().addRow('Widget Height',self.show_height_sb)

        self.show_width_sb = QSpinBox() 
        self.show_width_sb.setMaximum(100000) 
        if 'width' in self.settings:
            self.show_width_sb.setValue(self.settings['width'])
        self.layout().addRow('Widget Width',self.show_width_sb)

        self.show_radix_cb = QComboBox()       
        self.show_radix_cb.addItems(['decimal','hex'])
        if 'radix' in self.settings:
            self.show_radix_cb.setCurrentText(self.settings['radix'])
        self.layout().addRow('Radix',self.show_radix_cb)
        #self.settings['radix'] = self.show_radix_cb.currentText()

        self.accept_btn = QPushButton('Ok', clicked = self.accept)
        self.cancel_btn = QPushButton('Cancel',clicked = self.reject)
        self.layout().addRow(self.accept_btn,self.cancel_btn)
        
    def accept(self):
        self.settings['selected_signal'] = self.show_signals_cb.currentText()
        # self.settings['show_warnings'] = self.show_warnings_cb.isChecked()
        self.settings['min_val'] = self.show_signals_minval_sb.value()
        self.settings['max_val'] = self.show_signals_maxval_sb.value()
        self.settings['width'] = self.show_width_sb.value()
        self.settings['height'] = self.show_height_sb.value()
        self.settings['radix'] = self.show_radix_cb.currentText()
        super().accept()

    def print_settings(self):
        print('---------Settings of Widget---------:\n',self.settings)
    
class LedSettingsDialog(QDialog):
    
    def __init__(self,settings,parent=None):
        super().__init__(parent,modal=True)
        self.setLayout(QFormLayout())
        self.settings = settings
        self.layout().addRow(
            QLabel('<h1>Widget Settings</h1>'),
            )
        self.show_settings_pb = QPushButton('Print to Console', clicked=self.print_settings)
        self.layout().addRow(' Settings',self.show_settings_pb)
             
        # self.show_warnings_cb = QCheckBox(checked=settings.get('show_warnings'))
        # self.layout().addRow('Show Warnings',self.show_warnings_cb)

        self.show_signals_cb = QComboBox()       
        self.show_signals_cb.addItems(self.settings['signals'])
        print('settings---->',self.settings)

        if 'selected_signal' in self.settings:
            self.show_signals_cb.setCurrentText(self.settings['selected_signal'])
        self.layout().addRow('Select Signal',self.show_signals_cb)

        self.show_signals_mask_sb = QSpinBox() 
        if 'signal_mask' in self.settings:
            self.show_signals_mask_sb.setValue(self.settings['signal_mask'])
        self.layout().addRow('Signal Bit',self.show_signals_mask_sb)


        self.show_colors_cb = QComboBox()       
        self.show_colors_cb.addItems(['red','green','yellow'])
        if 'color' in self.settings:
            self.show_colors_cb.setCurrentText(self.settings['color'])
        self.layout().addRow('LED Color',self.show_colors_cb)

        self.show_height_sb = QSpinBox() 
        self.show_height_sb.setMaximum(100000)
        if 'height' in self.settings:
            self.show_height_sb.setValue(self.settings['height'])
        self.layout().addRow('Widget Height',self.show_height_sb)

        self.show_width_sb = QSpinBox() 
        self.show_width_sb.setMaximum(100000) 
        if 'width' in self.settings:
            self.show_width_sb.setValue(self.settings['width'])
        self.layout().addRow('Widget Width',self.show_width_sb)

        self.accept_btn = QPushButton('Ok', clicked = self.accept)
        self.cancel_btn = QPushButton('Cancel',clicked = self.reject)
        self.layout().addRow(self.accept_btn,self.cancel_btn)
        
    def accept(self):
        # self.settings['show_warnings'] = self.show_warnings_cb.isChecked()
        self.settings['selected_signal'] = self.show_signals_cb.currentText()
        self.settings['signal_mask'] = self.show_signals_mask_sb.value()
        self.settings['width'] = self.show_width_sb.value()
        self.settings['height'] = self.show_height_sb.value()
        self.settings['color'] = self.show_colors_cb.currentText()
        super().accept()

    def print_settings(self):
        print('---------Settings of Widget---------:\n',self.settings)
    
class LabelSettingsDialog(QDialog):
    
    def __init__(self,settings,parent=None):
        super().__init__(parent,modal=True)
        self.setLayout(QFormLayout())
        self.settings = settings
        self.layout().addRow(
            QLabel('<h1>Label Settings</h1>'),
            )
        self.show_settings_pb = QPushButton('Print to Console', clicked=self.print_settings)
        self.layout().addRow(' Widget Settings',self.show_settings_pb)
             
        self.show_text_le = QLineEdit()
        self.show_text_le.resize(200,40)
        if 'text' in self.settings:
            self.show_text_le.setText(self.settings['text'])
        self.layout().addRow('Edit Label Text',self.show_text_le)

        self.show_height_sb = QSpinBox() 
        self.show_height_sb.setMaximum(100000)
        if 'height' in self.settings:
            self.show_height_sb.setValue(self.settings['height'])
        self.layout().addRow('Widget Height',self.show_height_sb)

        self.show_width_sb = QSpinBox() 
        self.show_width_sb.setMaximum(100000) 
        if 'width' in self.settings:
            self.show_width_sb.setValue(self.settings['width'])
        self.layout().addRow('Widget Width',self.show_width_sb)

        self.accept_btn = QPushButton('Ok', clicked = self.accept)
        self.cancel_btn = QPushButton('Cancel',clicked = self.reject)
        self.layout().addRow(self.accept_btn,self.cancel_btn)
        
    def accept(self):
        self.settings['text'] = self.show_text_le.text()
        self.settings['width'] = self.show_width_sb.value()
        self.settings['height'] = self.show_height_sb.value()
        super().accept()

    def print_settings(self):
        print('---------Settings of Widget---------:\n',self.settings)
    
    
class CheckBoxSettingsDialog(QDialog):
    
    def __init__(self,settings,parent=None):
        super().__init__(parent,modal=True)
        self.setLayout(QFormLayout())
        self.settings = settings
        self.layout().addRow(
            QLabel('<h1>Widget Settings</h1>'),
            )
        self.show_settings_pb = QPushButton('Print to Console', clicked=self.print_settings)
        self.layout().addRow(' Settings',self.show_settings_pb)
             
        self.show_signals_cb = QComboBox()       
        self.show_signals_cb.addItems(self.settings['signals'])

        if 'selected_signal' in self.settings:
            self.show_signals_cb.setCurrentText(self.settings['selected_signal'])
        self.layout().addRow('Select Signal',self.show_signals_cb)

        self.show_signals_mask_sb = QSpinBox() 
        if 'signal_mask' in self.settings:
            self.show_signals_mask_sb.setValue(self.settings['signal_mask'])
        self.layout().addRow('Signal Bit',self.show_signals_mask_sb)


        self.show_height_sb = QSpinBox() 
        self.show_height_sb.setMaximum(100000)
        if 'height' in self.settings:
            self.show_height_sb.setValue(self.settings['height'])
        self.layout().addRow('Widget Height',self.show_height_sb)

        self.show_width_sb = QSpinBox() 
        self.show_width_sb.setMaximum(100000) 
        if 'width' in self.settings:
            self.show_width_sb.setValue(self.settings['width'])
        self.layout().addRow('Widget Width',self.show_width_sb)

        self.accept_btn = QPushButton('Ok', clicked = self.accept)
        self.cancel_btn = QPushButton('Cancel',clicked = self.reject)
        self.layout().addRow(self.accept_btn,self.cancel_btn)
        
    def accept(self):
        self.settings['selected_signal'] = self.show_signals_cb.currentText()
        self.settings['signal_mask']     = self.show_signals_mask_sb.value()
        self.settings['width']           = self.show_width_sb.value()
        self.settings['height']          = self.show_height_sb.value()
        super().accept()

    def print_settings(self):
        print('---------Settings of Widget---------:\n',self.settings)
    
    


class NumericDisplay(QtWidgets.QWidget):
    selected = pyqtSignal(int)
    dashboard_value = pyqtSignal(str,int,int,int)
    def __init__(self,parent = None, settings={},*args, **kwargs):
        #super().__init__(*args, **kwargs)
        super(NumericDisplay, self).__init__(parent=parent)
       
        self.setSizePolicy(QtWidgets.QSizePolicy.Fixed,QtWidgets.QSizePolicy.Fixed)

        self.h =  30
        self.w =  80
        self.value = 0
        self.radix = 'decimal'

    def sizeHint(self):
        return QtCore.QSize(self.w,self.h)

    def setValue(self,val):
        self.value = val
        self.update()        

    def paintEvent(self, e):
        painter = QtGui.QPainter(self)

        brush = QtGui.QBrush()
        brush.setColor(QtGui.QColor(20,50,20))
        brush.setStyle(Qt.SolidPattern)
        rect = QtCore.QRect(0, 0, painter.device().width(), painter.device().height())
        painter.fillRect(rect, brush)

        pen = painter.pen()
        pen.setColor(QtGui.QColor('yellow'))
        painter.setPen(pen)

        font = painter.font()
        font.setFamily('Times')
        font.setPointSize(15)
        painter.setFont(font)
        if self.radix == 'hex':
            painter.drawText(5, 22, "x{:7X}".format(self.value))            
        else:
            painter.drawText(5, 22, " {:7d}".format(self.value))

        painter.end()


           
class LNumericDisplay(QtWidgets.QWidget):
    selected = pyqtSignal(int)
    dashboard_value = pyqtSignal(str,int,int,int)

    def __init__(self,parent = None, settings={},*args, **kwargs):
        super(LNumericDisplay, self).__init__(parent)
        self.setSizePolicy(QtWidgets.QSizePolicy.Fixed,QtWidgets.QSizePolicy.Fixed)
        self.__mousePressPos = None
        self.__mouseMovePos = None
        self.h =  50
        self.w =  150
        self.value = 0

        self.default_settings = {'show_warnings':True, 'pos': self.pos()}
        self.default_settings['signals'] = ['none']
        self.default_settings['selected'] = False
        self.default_settings['selected_signal'] = 'none'
        self.default_settings['signal_mask'] = 0
        self.default_settings['height'] = self.h
        self.default_settings['width'] = self.w
        self.default_settings['min_val'] = 0
        self.default_settings['max_val'] = 100
        self.default_settings['value'] = 50
        self.default_settings['radix'] = 'decimal'

        self.settings = {**self.default_settings, **settings}

        self.h = self.settings['height']        
        self.w = self.settings['width']        

        layout = QHBoxLayout()
        self.sl = NumericDisplay()	
        self.sl.radix = self.settings['radix']
        layout.addWidget(self.sl)

        self.l1 = QLabel("Hello")
        self.l1.setAttribute(Qt.WA_TranslucentBackground)
        self.labeltext = self.settings['selected_signal'] 
        self.l1.setText(self.labeltext)
        self.l1.setAlignment(Qt.AlignLeft)
        self.l1.setSizePolicy(QtWidgets.QSizePolicy.Expanding,QtWidgets.QSizePolicy.Fixed)
        layout.addWidget(self.l1)
		
        self.setLayout(layout)
        self.resize(self.w,self.h)
        self.show()


    def sizeHint(self):
        return QtCore.QSize(self.w,self.h)

    
    def setValue(self,val):
        self.settings['value'] = val
        self.sl.setValue(val)

    def restore_pos(self):
        self.move(self.settings['pos'])

    def select(self,id_list,state):
        if self.settings['id'] in id_list:
            if state:
                self.settings['selected'] = True
            else:
                self.settings['selected'] = False
        self.update()  

    def signal_update(self,wrsigs,rdsigs):
        if 'selected_signal' not in self.settings:
            return
        tmp = self.value
        key = self.settings['selected_signal']
        if type(wrsigs)== dict:
            if key in wrsigs:
                self.value = wrsigs[key][3]
                if tmp != self.value:
                    self.setValue(self.value)
                    self.update()
        if type(rdsigs)== dict:
            if key in rdsigs:
                self.value = rdsigs[key][3]
                if tmp != self.value:
                    self.setValue(self.value)
                    self.update()
        self.settings['value'] = self.value
        
    def signal_setting(self,wrsigs,rdsigs):
        self.settings['signals'] = []
        if type(wrsigs)== dict:
            for key in wrsigs:
                self.settings['signals'].append(key)
        if type(rdsigs)== dict:
            for key in rdsigs:
                self.settings['signals'].append(key)


    def mousePressEvent(self, event):
        self.__mousePressPos = None
        self.__mouseMovePos = None
        if event.button() == Qt.LeftButton:
            self.__mousePressPos = event.globalPos()
            self.__mouseMovePos = event.globalPos()

        super(LNumericDisplay, self).mousePressEvent(event)


    def mouseMoveEvent(self, event):
        if event.modifiers() & Qt.ControlModifier:
            #if event.buttons() == Qt.LeftButton:
            if event.buttons() == Qt.LeftButton:
                # adjust offset from clicked point to origin of widget
                currPos = self.mapToGlobal(self.pos())
                globalPos = event.globalPos()
                if self.__mouseMovePos != None:
                    diff = globalPos - self.__mouseMovePos
                    self.newPos = self.mapFromGlobal(currPos + diff)
                    self.move(self.newPos)
                    self.settings['pos'] = self.newPos
                    self.__mouseMovePos = globalPos
        super(LNumericDisplay, self).mouseMoveEvent(event)


    def mouseReleaseEvent(self, event):
        if event.button() == Qt.RightButton:
            print('right button clicked')
            settings_dialog = SettingsDialog(self.settings,self)
            settings_dialog.exec()
            self.labeltext = self.settings['selected_signal'] 
            self.l1.setText(self.labeltext)
            self.sl.radix = self.settings['radix']
            self.h = self.settings['height']
            self.w = self.settings['width']
            self.resize(self.w,self.h)

        if event.button() == Qt.LeftButton:
            print('left button clicked')
            if event.modifiers() & Qt.ShiftModifier:
                print('Shift Key pressed',self.settings['selected'])
                self.settings['selected'] = not self.settings['selected'] 
                self.selected.emit(self.settings['id'])
            else:
                pass
                #self.valuechange()
            super(LNumericDisplay, self).mouseReleaseEvent(event)
            self.update()

    def paintEvent(self, event):
        painter = QtGui.QPainter(self)
        if self.settings['selected']:
            print('paint rectangle')
            painter.setPen(QPen(Qt.red,  5, Qt.SolidLine))
            rect = QtCore.QRect(0, 0, self.w, self.h)
            painter.drawRect(rect)
        painter.end()
        super(LNumericDisplay, self).paintEvent(event)


           
 

class Led(QtWidgets.QWidget):
    def __init__(self,parent = None, settings={},*args, **kwargs):
        super(Led, self).__init__(parent=parent)

        self.h =  25
        self.w =  25
        self.value = 0
        self.color = 'green'
        
    def sizeHint(self):
        return QtCore.QSize(self.h,self.w)

    def setValue(self,val):
        self.value = val
        self.update()        

    def setColor(self,color):
        self.color = color
        #print('LED color update')
        self.update()        
        
    def paintEvent(self, event):
        painter = QPainter(self)
        painter.setPen(QPen(Qt.black,  2, Qt.SolidLine))
        gradient = QRadialGradient(QPoint(4,4), 20)     
        #print('LED painting:',self.color)
        if self.value:
            if self.color == 'yellow':
                gradient.setColorAt(0, QColor(255,255,0));
                gradient.setColorAt(1, QColor(150, 150, 0));
            elif self.color == 'red':
                gradient.setColorAt(0, QColor(255,0,0));
                gradient.setColorAt(1, QColor(150, 0, 0));
            else: 
                gradient.setColorAt(0, QColor(0,255,0));
                gradient.setColorAt(1, QColor(0, 150, 0));
        else:
            gradient.setColorAt(0, QColor(100,100,100));
            gradient.setColorAt(1, QColor(0, 0, 0));
        painter.setBrush(QBrush(gradient))        
        painter.drawEllipse(5, 5, self.h-10,self.w-10)        


           
class LLed(QtWidgets.QWidget):
    selected = pyqtSignal(int)
    dashboard_value = pyqtSignal(str,int,int,int)

    def __init__(self,parent = None, settings={},*args, **kwargs):
        super(LLed, self).__init__(parent)
        self.setSizePolicy(QtWidgets.QSizePolicy.Fixed,QtWidgets.QSizePolicy.Fixed)
        self.__mousePressPos = None
        self.__mouseMovePos = None
        self.h =  40
        self.w =  150
        self.value = 0

        self.default_settings = {'show_warnings':True, 'pos': self.pos()}
        self.default_settings['signals'] = ['none']
        self.default_settings['selected'] = False
        self.default_settings['selected_signal'] = 'none'
        self.default_settings['signal_mask'] = 0
        self.default_settings['height'] = self.h
        self.default_settings['width'] = self.w
        self.default_settings['min_val'] = 0
        self.default_settings['max_val'] = 100
        self.default_settings['value'] = 50
        self.default_settings['color'] = 'green'

        self.settings = {**self.default_settings, **settings}

        self.h = self.settings['height']        
        self.w = self.settings['width']        

        layout = QHBoxLayout()
        self.sl = Led()		
        layout.addWidget(self.sl)

        self.l1 = QLabel("Hello")
        self.l1.setAttribute(Qt.WA_TranslucentBackground)
        self.labeltext = self.settings['selected_signal'] + ' ({:d}) '.format(self.settings['signal_mask'])
        self.l1.setText(self.labeltext)
        self.l1.setAlignment(Qt.AlignLeft)
        self.l1.setSizePolicy(QtWidgets.QSizePolicy.Expanding,QtWidgets.QSizePolicy.Fixed)
        layout.addWidget(self.l1)
		
        self.setLayout(layout)
        self.resize(self.w,self.h)
        self.show()


    def sizeHint(self):
        return QtCore.QSize(self.w,self.h)

    
    def setValue(self,val):
        self.settings['value'] = val
        mask = self.settings['signal_mask']
        color = self.settings['color']
        led_val = val & (1<<mask)
        self.sl.setValue(led_val)
        self.sl.setColor(color)
        #print('Led:',val,mask,1<<mask)

    def restore_pos(self):
        self.move(self.settings['pos'])

    def select(self,id_list,state):
        if self.settings['id'] in id_list:
            if state:
                self.settings['selected'] = True
            else:
                self.settings['selected'] = False
        self.update()  

    def signal_update(self,wrsigs,rdsigs):
        if 'selected_signal' not in self.settings:
            return
        tmp = self.value
        key = self.settings['selected_signal']
        if type(wrsigs)== dict:
            if key in wrsigs:
                self.value = wrsigs[key][3]
                if tmp != self.value:
                    self.setValue(self.value)
                    self.update()
        if type(rdsigs)== dict:
            if key in rdsigs:
                self.value = rdsigs[key][3]
                if tmp != self.value:
                    self.setValue(self.value)
                    self.update()
        self.settings['value'] = self.value
        
    def signal_setting(self,wrsigs,rdsigs):
        self.settings['signals'] = []
        if type(wrsigs)== dict:
            for key in wrsigs:
                self.settings['signals'].append(key)
        if type(rdsigs)== dict:
            for key in rdsigs:
                self.settings['signals'].append(key)


    def mousePressEvent(self, event):
        self.__mousePressPos = None
        self.__mouseMovePos = None
        if event.button() == Qt.LeftButton:
            self.__mousePressPos = event.globalPos()
            self.__mouseMovePos = event.globalPos()

        super(LLed, self).mousePressEvent(event)


    def mouseMoveEvent(self, event):
        if event.modifiers() & Qt.ControlModifier:
            #if event.buttons() == Qt.LeftButton:
            if event.buttons() == Qt.LeftButton:
                # adjust offset from clicked point to origin of widget
                currPos = self.mapToGlobal(self.pos())
                globalPos = event.globalPos()
                if self.__mouseMovePos != None:
                    diff = globalPos - self.__mouseMovePos
                    self.newPos = self.mapFromGlobal(currPos + diff)
                    self.move(self.newPos)
                    self.settings['pos'] = self.newPos
                    self.__mouseMovePos = globalPos
        super(LLed, self).mouseMoveEvent(event)


    def mouseReleaseEvent(self, event):
        if event.button() == Qt.RightButton:
            print('right button clicked')
            settings_dialog = LedSettingsDialog(self.settings,self)
            settings_dialog.exec()
            self.labeltext = self.settings['selected_signal'] + ' ({:d}) '.format(self.settings['signal_mask'])
            self.sl.setValue(self.settings['value'])
            self.sl.setColor(self.settings['color'])
            self.l1.setText(self.labeltext)
            self.l1.setText(self.labeltext)
            self.h = self.settings['height']
            self.w = self.settings['width']
            self.resize(self.w,self.h)

        if event.button() == Qt.LeftButton:
            print('left button clicked')
            if event.modifiers() & Qt.ShiftModifier:
                print('Shift Key pressed',self.settings['selected'])
                self.settings['selected'] = not self.settings['selected'] 
                self.selected.emit(self.settings['id'])
            else:
                pass
                #self.valuechange()
            super(LLed, self).mouseReleaseEvent(event)
            self.update()

    def paintEvent(self, event):
        painter = QtGui.QPainter(self)
        if self.settings['selected']:
            print('paint rectangle')
            painter.setPen(QPen(Qt.red,  5, Qt.SolidLine))
            rect = QtCore.QRect(0, 0, self.w, self.h)
            painter.drawRect(rect)
        painter.end()
        super(LLed, self).paintEvent(event)

class LLabel(QtWidgets.QWidget):
    selected = pyqtSignal(int)
    dashboard_value = pyqtSignal(str,int,int,int)

    def __init__(self,parent = None, settings={},*args, **kwargs):
        super(LLabel, self).__init__(parent)
        self.setSizePolicy(QtWidgets.QSizePolicy.Fixed,QtWidgets.QSizePolicy.Fixed)
        self.__mousePressPos = None
        self.__mouseMovePos = None
        self.h =  40
        self.w =  300
        self.value = 0

        self.default_settings = {'show_warnings':True, 'pos': self.pos()}
        self.default_settings['signals'] = ['none']
        self.default_settings['selected'] = False
        self.default_settings['selected_signal'] = 'none'
        self.default_settings['signal_mask'] = 0
        self.default_settings['height'] = self.h
        self.default_settings['width'] = self.w
        self.default_settings['min_val'] = 0
        self.default_settings['max_val'] = 100
        self.default_settings['value'] = 50
        self.default_settings['text'] = 'default text'

        self.settings = {**self.default_settings, **settings}

        self.h = self.settings['height']        
        self.w = self.settings['width']        

        layout = QHBoxLayout()

        self.l1 = QLabel("Hello")
        self.l1.setAttribute(Qt.WA_TranslucentBackground)
        #self.l1 = QLineEdit("Hello")
        #self.l1.textChanged.connect(self.textchanged)
        self.l1.setText(self.settings['text'])
        #self.l1.setFlags(self.l1.flags() | QtCore.Qt.ItemIsEditable)
        self.l1.setAlignment(Qt.AlignLeft)
        self.l1.setSizePolicy(QtWidgets.QSizePolicy.Expanding,QtWidgets.QSizePolicy.Fixed)
        layout.addWidget(self.l1)
		
        self.setLayout(layout)
        self.resize(self.w,self.h)
        self.show()

    def textchanged(self,text):
        self.settings['text'] = text

    def sizeHint(self):
        return QtCore.QSize(self.w,self.h)

    
    def setValue(self,val):
        self.settings['value'] = val
        mask = self.settings['signal_mask']
        led_val = val & (1<<mask)
        self.sl.setValue(led_val)
        print('Led:',val,mask,1<<mask)

    def restore_pos(self):
        self.move(self.settings['pos'])

    def select(self,id_list,state):
        if self.settings['id'] in id_list:
            if state:
                self.settings['selected'] = True
            else:
                self.settings['selected'] = False
        self.update()  

    def signal_update(self):
        pass

    def signal_setting(self):
        pass

    def mousePressEvent(self, event):
        self.__mousePressPos = None
        self.__mouseMovePos = None
        if event.button() == Qt.LeftButton:
            self.__mousePressPos = event.globalPos()
            self.__mouseMovePos = event.globalPos()

        super(LLabel, self).mousePressEvent(event)


    def mouseMoveEvent(self, event):
        if event.modifiers() & Qt.ControlModifier:
            if event.buttons() == Qt.LeftButton:
                currPos = self.mapToGlobal(self.pos())
                globalPos = event.globalPos()
                if self.__mouseMovePos != None:
                    diff = globalPos - self.__mouseMovePos
                    self.newPos = self.mapFromGlobal(currPos + diff)
                    self.move(self.newPos)
                    self.settings['pos'] = self.newPos
                    self.__mouseMovePos = globalPos
        super(LLabel, self).mouseMoveEvent(event)


    def mouseReleaseEvent(self, event):
        if event.button() == Qt.RightButton:
            settings_dialog = LabelSettingsDialog(self.settings,self)
            settings_dialog.exec()
            # self.labeltext = self.settings['selected_signal'] + ' ({:d}) '.format(self.settings['signal_mask'])
            self.l1.setText(self.settings['text'])
            self.h = self.settings['height']
            self.w = self.settings['width']
            self.resize(self.w,self.h)

        if event.button() == Qt.LeftButton:
            if event.modifiers() & Qt.ShiftModifier:
                self.settings['selected'] = not self.settings['selected'] 
                self.selected.emit(self.settings['id'])
            else:
                pass
            super(LLabel, self).mouseReleaseEvent(event)
            self.update()

    def paintEvent(self, event):
        painter = QtGui.QPainter(self)
        if self.settings['selected']:
            painter.setPen(QPen(Qt.red,  5, Qt.SolidLine))
            rect = QtCore.QRect(0, 0, self.w, self.h)
            painter.drawRect(rect)
        painter.end()
        super(LLabel, self).paintEvent(event)


class LLineEdit(QtWidgets.QWidget):
    selected = pyqtSignal(int)
    dashboard_value = pyqtSignal(str,int,int,int)

    def __init__(self,parent = None, settings={},*args, **kwargs):
        super(LLineEdit, self).__init__(parent)
        self.setSizePolicy(QtWidgets.QSizePolicy.Fixed,QtWidgets.QSizePolicy.Fixed)
        self.__mousePressPos = None
        self.__mouseMovePos = None
        self.h =  40
        self.w =  300
        self.value = 0

        self.default_settings = {'show_warnings':True, 'pos': self.pos()}
        self.default_settings['signals'] = ['none']
        self.default_settings['selected'] = False
        self.default_settings['selected_signal'] = 'none'
        self.default_settings['signal_mask'] = 0
        self.default_settings['height'] = self.h
        self.default_settings['width'] = self.w
        self.default_settings['min_val'] = 0
        self.default_settings['max_val'] = 100
        self.default_settings['value'] = 50
        self.default_settings['text'] = 'default text'

        self.settings = {**self.default_settings, **settings}

        self.h = self.settings['height']        
        self.w = self.settings['width']        

        layout = QHBoxLayout()

        #self.l1 = QLabel("Hello")
        self.l1 = QLineEdit("Hello")
        self.l1.setAttribute(Qt.WA_TranslucentBackground)
        self.l1.textChanged.connect(self.textchanged)
        self.l1.setText(self.settings['text'])
        #self.l1.setFlags(self.l1.flags() | QtCore.Qt.ItemIsEditable)
        self.l1.setAlignment(Qt.AlignLeft)
        self.l1.setSizePolicy(QtWidgets.QSizePolicy.Expanding,QtWidgets.QSizePolicy.Fixed)
        layout.addWidget(self.l1)
		
        self.setLayout(layout)
        self.resize(self.w,self.h)
        self.show()

    def textchanged(self,text):
        self.settings['text'] = text

    def sizeHint(self):
        return QtCore.QSize(self.w,self.h)

    
    def setValue(self,val):
        self.settings['value'] = val
        mask = self.settings['signal_mask']
        led_val = val & (1<<mask)
        self.sl.setValue(led_val)
        print('Led:',val,mask,1<<mask)

    def restore_pos(self):
        self.move(self.settings['pos'])

    def select(self,id_list,state):
        if self.settings['id'] in id_list:
            if state:
                self.settings['selected'] = True
            else:
                self.settings['selected'] = False
        self.update()  

    def signal_update(self):
        pass

    def signal_setting(self):
        pass

    def mousePressEvent(self, event):
        self.__mousePressPos = None
        self.__mouseMovePos = None
        if event.button() == Qt.LeftButton:
            self.__mousePressPos = event.globalPos()
            self.__mouseMovePos = event.globalPos()

        super(LLineEdit, self).mousePressEvent(event)


    def mouseMoveEvent(self, event):
        if event.modifiers() & Qt.ControlModifier:
            #if event.buttons() == Qt.LeftButton:
            if event.buttons() == Qt.LeftButton:
                # adjust offset from clicked point to origin of widget
                currPos = self.mapToGlobal(self.pos())
                globalPos = event.globalPos()
                if self.__mouseMovePos != None:
                    diff = globalPos - self.__mouseMovePos
                    self.newPos = self.mapFromGlobal(currPos + diff)
                    self.move(self.newPos)
                    self.settings['pos'] = self.newPos
                    self.__mouseMovePos = globalPos
        super(LLineEdit, self).mouseMoveEvent(event)


    def mouseReleaseEvent(self, event):
        if event.button() == Qt.RightButton:
            settings_dialog = SettingsDialog(self.settings,self)
            settings_dialog.exec()
            # self.labeltext = self.settings['selected_signal'] + ' ({:d}) '.format(self.settings['signal_mask'])
            # self.l1.setText(self.labeltext)
            self.h = self.settings['height']
            self.w = self.settings['width']
            self.resize(self.w,self.h)

        if event.button() == Qt.LeftButton:
            if event.modifiers() & Qt.ShiftModifier:
                self.settings['selected'] = not self.settings['selected'] 
                self.selected.emit(self.settings['id'])
            else:
                pass
        super(LLineEdit, self).mouseReleaseEvent(event)
        self.update()

    def paintEvent(self, event):
        painter = QtGui.QPainter(self)
        if self.settings['selected']:
            painter.setPen(QPen(Qt.red,  5, Qt.SolidLine))
            rect = QtCore.QRect(0, 0, self.w, self.h)
            painter.drawRect(rect)
        painter.end()
        super(LLineEdit, self).paintEvent(event)

           

class xLabel(QtWidgets.QWidget):
    selected = pyqtSignal(int)
    dashboard_value = pyqtSignal(str,int,int,int)
    def __init__(self,parent = None, settings={},*args, **kwargs):
        #super().__init__(*args, **kwargs)
        super(Label, self).__init__(parent=parent)
        
        self.setSizePolicy(
            QtWidgets.QSizePolicy.Fixed,
            QtWidgets.QSizePolicy.Fixed
        )

        self.h =  30
        self.w =  80
        self.value = 'text'
        self.key   = 'none'
        self.settings = {'show_warnings':True, 'pos': self.pos()}
        self.settings['signals'] = ['none']
        self.settings['selected'] = False
        self.settings['selected_signal'] = 'none'

    def sizeHint(self):
        return QtCore.QSize(self.w,self.h)

    def restore_pos(self):
        self.move(self.settings['pos'])

    def select(self,id_list,state):
        if self.settings['id'] in id_list:
            if state:
                self.settings['selected'] = True
            else:
                self.settings['selected'] = False
        self.update()  

    def signal_update(self,wrsigs,rdsigs):
        pass
    def signal_setting(self,wrsigs,rdsigs):
        pass

    def mousePressEvent(self, event):
        self.__mousePressPos = None
        self.__mouseMovePos = None
        if event.button() == Qt.LeftButton:
            self.__mousePressPos = event.globalPos()
            self.__mouseMovePos = event.globalPos()

        super(Label, self).mousePressEvent(event)


    def mouseMoveEvent(self, event):
        if event.modifiers() & Qt.ControlModifier:
            if event.buttons() == Qt.LeftButton:
                # adjust offset from clicked point to origin of widget
                currPos = self.mapToGlobal(self.pos())
                globalPos = event.globalPos()
                diff = globalPos - self.__mouseMovePos
                self.newPos = self.mapFromGlobal(currPos + diff)
                self.move(self.newPos)
                self.settings['pos'] = self.newPos
                self.__mouseMovePos = globalPos
        super(Label, self).mouseMoveEvent(event)


    def mouseReleaseEvent(self, event):
        if event.button() == Qt.RightButton:
            print('right button clicked')
            settings_dialog = SettingsDialog(self.settings,self)
            settings_dialog.exec()

        if event.button() == Qt.LeftButton:
            print('left button clicked')
            if event.modifiers() & Qt.ShiftModifier:
                print('Shift Key pressed',self.settings['selected'])
                self.settings['selected'] = not self.settings['selected'] 
                self.selected.emit(self.settings['id'])
                self.update()

        super(Label, self).mouseReleaseEvent(event)

        
    def _update(self,x):
        self.value = x
        self.update()
        

    def paintEvent(self, e):
        painter = QtGui.QPainter(self)

        pen = painter.pen()
        pen.setColor(QtGui.QColor('blue'))
        painter.setPen(pen)

        font = painter.font()
        font.setFamily('Times')
        font.setPointSize(15)
        painter.setFont(font)
        painter.drawText(25, 22, "{}".format(self.value))

        if self.settings['selected']:
            print('paint rectangle')
            painter.setPen(QPen(Qt.red,  5, Qt.SolidLine))
            rect = QtCore.QRect(0, 0, self.w, self.h)
            painter.drawRect(rect)

        painter.end()
        


class DPushButton(QPushButton):

    selected = pyqtSignal(int)
    dashboard_value = pyqtSignal(str,int,int,int)
    def __init__(self,parent = None, settings={},*args, **kwargs):
        #super().__init__(*args, **kwargs)
        super(DPushButton, self).__init__(parent=parent)
       
        self.setSizePolicy(
            QtWidgets.QSizePolicy.Fixed,
            QtWidgets.QSizePolicy.Fixed
        )

        self.h =  25
        self.w =  60
        # self.value = 'text'
        # self.key   = 'none'
        # self.settings = {'show_warnings':True, 'pos': self.pos()}
        # self.settings['signals'] = ['none']
        # self.settings['selected'] = False
        # self.settings['selected_signal'] = 'none'
        self.setText('OK')
        self.default_settings = {'show_warnings':True, 'pos': self.pos()}
        self.default_settings['signals'] = ['none']
        self.default_settings['selected'] = False
        self.default_settings['selected_signal'] = 'none'
        self.default_settings['height'] = self.h
        self.default_settings['width'] = self.w
        self.default_settings['min_val'] = 0
        self.default_settings['max_val'] = 100
        self.default_settings['value'] = 50

        self.settings = {**self.default_settings, **settings}

    def sizeHint(self):
        return QtCore.QSize(self.w,self.h)

    def restore_pos(self):
        self.move(self.settings['pos'])

    def select(self,id_list,state):
        if self.settings['id'] in id_list:
            if state:
                self.settings['selected'] = True
            else:
                self.settings['selected'] = False
        self.update()  

    def signal_update(self,wrsigs,rdsigs):
        pass

    def signal_setting(self,wrsigs,rdsigs):
        pass

    def mousePressEvent(self, event):
        self.__mousePressPos = None
        self.__mouseMovePos = None
        if event.button() == Qt.LeftButton:
            self.__mousePressPos = event.globalPos()
            self.__mouseMovePos = event.globalPos()

        super(DPushButton, self).mousePressEvent(event)


    def mouseMoveEvent(self, event):
        if event.modifiers() & Qt.ControlModifier:
            if event.buttons() == Qt.LeftButton:
                # adjust offset from clicked point to origin of widget
                currPos = self.mapToGlobal(self.pos())
                globalPos = event.globalPos()
                diff = globalPos - self.__mouseMovePos
                self.newPos = self.mapFromGlobal(currPos + diff)
                self.move(self.newPos)
                self.settings['pos'] = self.newPos
                self.__mouseMovePos = globalPos
        super(DPushButton, self).mouseMoveEvent(event)


    def mouseReleaseEvent(self, event):
        if event.button() == Qt.RightButton:
            print('right button clicked')
            settings_dialog = SettingsDialog(self.settings,self)
            settings_dialog.exec()

        if event.button() == Qt.LeftButton:
            print('left button clicked')
            if event.modifiers() & Qt.ShiftModifier:
                print('Shift Key pressed',self.settings['selected'])
                self.settings['selected'] = not self.settings['selected'] 
                self.selected.emit(self.settings['id'])
                self.update()

        super(DPushButton, self).mouseReleaseEvent(event)


    def clicked():
        print ("click as normal!")

    def paintEvent(self, event):
        painter = QtGui.QPainter(self)
        if self.settings['selected']:
            painter.setPen(QPen(Qt.red,  5, Qt.SolidLine))
            rect = QtCore.QRect(0, 0, self.w, self.h)
            painter.drawRect(rect)
        painter.end()
        super(DPushButton, self).paintEvent(event)

   
#https://www.tutorialspoint.com/pyqt/pyqt_qslider_widget_signal.htm
class LSlider(QtWidgets.QWidget):
    selected = pyqtSignal(int)
    dashboard_value = pyqtSignal(str,int,int,int)

    def __init__(self,parent = None, settings={},*args, **kwargs):
        super(LSlider, self).__init__(parent)
        self.setSizePolicy(QtWidgets.QSizePolicy.Fixed,QtWidgets.QSizePolicy.Fixed)
        self.__mousePressPos = None
        self.__mouseMovePos = None
        self.h =  80
        self.w =  200

        self.default_settings = {'show_warnings':True, 'pos': self.pos()}
        self.default_settings['signals'] = ['none']
        self.default_settings['selected'] = False
        self.default_settings['selected_signal'] = 'none'
        self.default_settings['height'] = self.h
        self.default_settings['width'] = self.w
        self.default_settings['min_val'] = 0
        self.default_settings['max_val'] = 100
        self.default_settings['value'] = 50
        self.default_settings['radix'] = 'decimal'

        self.settings = {**self.default_settings, **settings}

        self.h = self.settings['height']        
        self.w = self.settings['width']        
        layout = QVBoxLayout()
        self.l1 = QLabel("Hello")
        self.l1.setAttribute(Qt.WA_TranslucentBackground)
        self.labeltext = self.settings['selected_signal'] 
        self.l1.setText(self.labeltext)
        self.l1.setAlignment(Qt.AlignCenter)
        self.l1.setSizePolicy(QtWidgets.QSizePolicy.Fixed,QtWidgets.QSizePolicy.Fixed)
        self.setLabel()
        layout.addWidget(self.l1)
		
        self.sl = QSlider(Qt.Horizontal)
        self.sl.setAttribute(Qt.WA_TranslucentBackground)
        self.sl.setMinimum(self.settings['min_val'])
        self.sl.setMaximum(self.settings['max_val'])
        self.sl.setValue(self.settings['value'])
        self.sl.setTickPosition(QSlider.TicksBelow)
        val_range = self.settings['max_val'] - self.settings['min_val']
        self.sl.setTickInterval(val_range // 10)
        self.sl.setSizePolicy(QtWidgets.QSizePolicy.Expanding,QtWidgets.QSizePolicy.Fixed)
		
        layout.addWidget(self.sl)
        self.sl.valueChanged.connect(self.valuechange)
        self.setLayout(layout)
        self.resize(self.w,self.h)
        self.show()


    def sizeHint(self):
        return QtCore.QSize(self.w,self.h)

    def valuechange(self):
        value = self.sl.value()
        print('valuechange',value)
        self.settings['signal_mask'] = -1
        self.dashboard_value.emit(self.settings['selected_signal'],self.settings['id'],value,self.settings['signal_mask'])
        self.settings['value'] = self.sl.value()
        self.setLabel()

    def setLabel(self):
        if self.settings['radix'] == 'hex':
            self.labeltext = self.settings['selected_signal'] + '  ' + 'x{:3X}'.format(self.settings['value'])
        else:
            self.labeltext = self.settings['selected_signal'] + '  ' + ' {:3}'.format(self.settings['value'])
        self.l1.setText(self.labeltext)

    def setValue(self,val):
        self.sl.setValue(val)

    def restore_pos(self):
        self.move(self.settings['pos'])

    def select(self,id_list,state):
        if self.settings['id'] in id_list:
            if state:
                self.settings['selected'] = True
            else:
                self.settings['selected'] = False
        self.update()  

    def signal_update(self,wrsigs,rdsigs):
        pass

    def signal_setting(self,wrsigs,rdsigs):
        if type(wrsigs)== dict:
            self.settings['signals'] = []
            for key in wrsigs:
                self.settings['signals'].append(key)


    def mousePressEvent(self, event):
        self.__mousePressPos = None
        self.__mouseMovePos = None
        if event.button() == Qt.LeftButton:
            self.__mousePressPos = event.globalPos()
            self.__mouseMovePos = event.globalPos()

        super(LSlider, self).mousePressEvent(event)


    def mouseMoveEvent(self, event):
        if event.modifiers() & Qt.ControlModifier:
            #if event.buttons() == Qt.LeftButton:
            if event.buttons() == Qt.LeftButton:
                # adjust offset from clicked point to origin of widget
                currPos = self.mapToGlobal(self.pos())
                globalPos = event.globalPos()
                if self.__mouseMovePos != None:
                    diff = globalPos - self.__mouseMovePos
                    self.newPos = self.mapFromGlobal(currPos + diff)
                    self.move(self.newPos)
                    self.settings['pos'] = self.newPos
                    self.__mouseMovePos = globalPos
        super(LSlider, self).mouseMoveEvent(event)


    def mouseReleaseEvent(self, event):
        if event.button() == Qt.RightButton:
            print('right button clicked')
            settings_dialog = DSpinBoxSettingsDialog(self.settings,self)
            settings_dialog.exec()
            self.sl.setMinimum(self.settings['min_val'])
            self.sl.setMaximum(self.settings['max_val'])
            self.setLabel()
            self.h = self.settings['height']
            self.w = self.settings['width']
            self.resize(self.w,self.h)

        if event.button() == Qt.LeftButton:
            print('left button clicked')
            if event.modifiers() & Qt.ShiftModifier:
                print('Shift Key pressed',self.settings['selected'])
                self.settings['selected'] = not self.settings['selected'] 
                self.selected.emit(self.settings['id'])
            else:
                self.valuechange()
            super(LSlider, self).mouseReleaseEvent(event)
            self.update()

    def paintEvent(self, event):
        painter = QtGui.QPainter(self)
        if self.settings['selected']:
            print('paint rectangle')
            painter.setPen(QPen(Qt.red,  5, Qt.SolidLine))
            rect = QtCore.QRect(0, 0, self.w, self.h)
            painter.drawRect(rect)
        painter.end()
        super(LSlider, self).paintEvent(event)

class LVSlider(QtWidgets.QWidget):
    selected = pyqtSignal(int)
    dashboard_value = pyqtSignal(str,int,int,int)

    def __init__(self,parent = None, settings={},*args, **kwargs):
        super(LVSlider, self).__init__(parent)
        self.setSizePolicy(QtWidgets.QSizePolicy.Fixed,QtWidgets.QSizePolicy.Fixed)
        self.__mousePressPos = None
        self.__mouseMovePos = None
        self.h =  200
        self.w =  80

        self.default_settings = {'show_warnings':True, 'pos': self.pos()}
        self.default_settings['signals'] = ['none']
        self.default_settings['selected'] = False
        self.default_settings['selected_signal'] = 'none'
        self.default_settings['height'] = self.h
        self.default_settings['width'] = self.w
        self.default_settings['min_val'] = 0
        self.default_settings['max_val'] = 100
        self.default_settings['value'] = 50
        self.default_settings['radix'] = 'decimal'

        self.settings = {**self.default_settings, **settings}

        self.h = self.settings['height']        
        self.w = self.settings['width']        
        layout = QVBoxLayout()
        self.l1 = QLabel("Hello")
        self.l1.setAttribute(Qt.WA_TranslucentBackground)
        self.labeltext = self.settings['selected_signal'] 
        self.l1.setAlignment(Qt.AlignCenter)
        self.l1.setSizePolicy(QtWidgets.QSizePolicy.Fixed,QtWidgets.QSizePolicy.Fixed)
        layout.addWidget(self.l1)
        self.setLabel()
        # self.labeltext = self.settings['selected_signal'] + '  ' + '{:3X}h'.format(self.settings['value'])
        # self.l1.setText(self.labeltext)
        
        self.sl = QSlider(Qt.Vertical)
        self.sl.setAttribute(Qt.WA_TranslucentBackground)
        self.sl.setMinimum(self.settings['min_val'])
        self.sl.setMaximum(self.settings['max_val'])
        self.sl.setValue(self.settings['value'])
        self.sl.setTickPosition(QSlider.TicksBelow)
        val_range = self.settings['max_val'] - self.settings['min_val']
        self.sl.setTickInterval(int(10*val_range/self.h))
        self.sl.setSizePolicy(QtWidgets.QSizePolicy.Fixed,QtWidgets.QSizePolicy.Expanding)
		
        layout.addWidget(self.sl)
        self.sl.valueChanged.connect(self.valuechange)
        self.setLayout(layout)
        self.resize(self.w,self.h)
        self.show()


    def sizeHint(self):
        return QtCore.QSize(self.w,self.h)

    def valuechange(self):
        value = self.sl.value()
        self.settings['signal_mask'] = -1
        self.dashboard_value.emit(self.settings['selected_signal'],self.settings['id'],value,self.settings['signal_mask'])
        self.settings['value'] = self.sl.value()
        # self.labeltext = self.settings['selected_signal'] + '  ' + '{:3X}h'.format(self.settings['value'])
        # self.l1.setText(self.labeltext)
        self.setLabel()

    def setLabel(self):
        if self.settings['radix'] == 'hex':
            self.labeltext = self.settings['selected_signal'] + '  ' + 'x{:3X}'.format(self.settings['value'])
        else:
            self.labeltext = self.settings['selected_signal'] + '  ' + ' {:3}'.format(self.settings['value'])
        self.l1.setText(self.labeltext)

    def setValue(self,val):
        self.sl.setValue(val)

    def restore_pos(self):
        self.move(self.settings['pos'])

    def select(self,id_list,state):
        if self.settings['id'] in id_list:
            if state:
                self.settings['selected'] = True
            else:
                self.settings['selected'] = False
        self.update()  

    def signal_update(self,wrsigs,rdsigs):
        pass

    def signal_setting(self,wrsigs,rdsigs):
        if type(wrsigs)== dict:
            self.settings['signals'] = []
            for key in wrsigs:
                self.settings['signals'].append(key)


    def mousePressEvent(self, event):
        self.__mousePressPos = None
        self.__mouseMovePos = None
        if event.button() == Qt.LeftButton:
            self.__mousePressPos = event.globalPos()
            self.__mouseMovePos = event.globalPos()

        super(LVSlider, self).mousePressEvent(event)


    def mouseMoveEvent(self, event):
        if event.modifiers() & Qt.ControlModifier:
            if event.buttons() == Qt.LeftButton:
                currPos = self.mapToGlobal(self.pos())
                globalPos = event.globalPos()
                if self.__mouseMovePos != None:
                    diff = globalPos - self.__mouseMovePos
                    self.newPos = self.mapFromGlobal(currPos + diff)
                    self.move(self.newPos)
                    self.settings['pos'] = self.newPos
                    self.__mouseMovePos = globalPos
        super(LVSlider, self).mouseMoveEvent(event)


    def mouseReleaseEvent(self, event):
        if event.button() == Qt.RightButton:
            settings_dialog = DSpinBoxSettingsDialog(self.settings,self)
            settings_dialog.exec()
            self.sl.setMinimum(self.settings['min_val'])
            self.sl.setMaximum(self.settings['max_val'])
            # self.labeltext = self.settings['selected_signal'] + '  ' + '{:3X}'.format(self.settings['value'])
            # self.l1.setText(self.labeltext)
            self.setLabel()
            self.h = self.settings['height']
            self.w = self.settings['width']
            self.resize(self.w,self.h)

        if event.button() == Qt.LeftButton:
            if event.modifiers() & Qt.ShiftModifier:
                print('Shift Key pressed',self.settings['selected'])
                self.settings['selected'] = not self.settings['selected'] 
                self.selected.emit(self.settings['id'])
            else:
                self.valuechange()
            self.update()
        super(LVSlider, self).mouseReleaseEvent(event)

    def paintEvent(self, event):
        painter = QtGui.QPainter(self)
        if self.settings['selected']:
            print('paint rectangle')
            painter.setPen(QPen(Qt.red,  5, Qt.SolidLine))
            rect = QtCore.QRect(0, 0, self.w, self.h)
            painter.drawRect(rect)
        painter.end()
        super(LVSlider, self).paintEvent(event)

class LDial(QtWidgets.QWidget):
    selected = pyqtSignal(int)
    dashboard_value = pyqtSignal(str,int,int,int)

    def __init__(self,parent = None, settings={},*args, **kwargs):
        super(LDial, self).__init__(parent)
        self.setSizePolicy(QtWidgets.QSizePolicy.Fixed,QtWidgets.QSizePolicy.Fixed)
        self.__mousePressPos = None
        self.__mouseMovePos = None
        self.h =  80
        self.w =  80

        self.default_settings = {'show_warnings':True, 'pos': self.pos()}
        self.default_settings['signals'] = ['none']
        self.default_settings['selected'] = False
        self.default_settings['selected_signal'] = 'none'
        self.default_settings['height'] = self.h
        self.default_settings['width'] = self.w
        self.default_settings['min_val'] = 0
        self.default_settings['max_val'] = 100
        self.default_settings['value'] = 50
        self.default_settings['radix'] = 'decimal'

        self.settings = {**self.default_settings, **settings}

        self.h = self.settings['height']        
        self.w = self.settings['width']        
        layout = QVBoxLayout()
        self.labeltext = self.settings['selected_signal'] 
        self.l1 = QLabel(self.labeltext)
        self.l1.setAttribute(Qt.WA_TranslucentBackground)
        self.l1.setAlignment(Qt.AlignCenter)
        self.l1.setSizePolicy(QtWidgets.QSizePolicy.Fixed,QtWidgets.QSizePolicy.Fixed)
        # self.labeltext = self.settings['selected_signal'] + '  ' + '{:3X}h'.format(self.settings['value'])
        # self.l1.setText(self.labeltext)
        self.setLabel()
        layout.addWidget(self.l1)
		
        self.sl = QDial()
        self.sl.setAttribute(Qt.WA_TranslucentBackground)
        self.sl.setMinimum(self.settings['min_val'])
        self.sl.setMaximum(self.settings['max_val'])
        self.sl.setValue(self.settings['value'])
        #self.sl.setTickPosition(QSlider.TicksBelow)
        #val_range = self.settings['max_val'] - self.settings['min_val']
        #self.sl.setTickInterval(val_range // 10)
        self.sl.setSizePolicy(QtWidgets.QSizePolicy.Expanding,QtWidgets.QSizePolicy.Fixed)
		
        layout.addWidget(self.sl)
        self.sl.valueChanged.connect(self.valuechange)
        self.setLayout(layout)
        if self.w < 50:
            self.w = 50
        if self.h < 50: 
            self.h = 50
        self.resize(self.w,self.h)
        self.show()


    def sizeHint(self):
        return QtCore.QSize(self.w,self.h)

    def valuechange(self):
        value = self.sl.value()
        print('valuechange',value)
        self.settings['signal_mask'] = -1
        self.dashboard_value.emit(self.settings['selected_signal'],self.settings['id'],value,self.settings['signal_mask'])
        self.settings['value'] = self.sl.value()
        # self.labeltext = self.settings['selected_signal'] + '  ' + '{:3X}'.format(self.settings['value'])
        # self.l1.setText(self.labeltext)
        self.setLabel()
        
    def setValue(self,val):
        self.sl.setValue(val)

    def setLabel(self):
        if self.settings['radix'] == 'hex':
            self.labeltext = self.settings['selected_signal'] + '  ' + 'x{:3X}'.format(self.settings['value'])
        else:
            self.labeltext = self.settings['selected_signal'] + '  ' + ' {:3}'.format(self.settings['value'])
        self.l1.setText(self.labeltext)

    def restore_pos(self):
        self.move(self.settings['pos'])

    def select(self,id_list,state):
        if self.settings['id'] in id_list:
            if state:
                self.settings['selected'] = True
            else:
                self.settings['selected'] = False
        self.update()  

    def signal_update(self,wrsigs,rdsigs):
        pass

    def signal_setting(self,wrsigs,rdsigs):
        if type(wrsigs)== dict:
            self.settings['signals'] = []
            for key in wrsigs:
                self.settings['signals'].append(key)


    def mousePressEvent(self, event):
        self.__mousePressPos = None
        self.__mouseMovePos = None
        if event.button() == Qt.LeftButton:
            self.__mousePressPos = event.globalPos()
            self.__mouseMovePos = event.globalPos()

        super(LDial, self).mousePressEvent(event)


    def mouseMoveEvent(self, event):
        if event.modifiers() & Qt.ControlModifier:
            #if event.buttons() == Qt.LeftButton:
            if event.buttons() == Qt.LeftButton:
                # adjust offset from clicked point to origin of widget
                currPos = self.mapToGlobal(self.pos())
                globalPos = event.globalPos()
                if self.__mouseMovePos != None:
                    diff = globalPos - self.__mouseMovePos
                    self.newPos = self.mapFromGlobal(currPos + diff)
                    self.move(self.newPos)
                    self.settings['pos'] = self.newPos
                    self.__mouseMovePos = globalPos
        super(LDial, self).mouseMoveEvent(event)


    def mouseReleaseEvent(self, event):
        if event.button() == Qt.RightButton:
            print('right button clicked')
            settings_dialog = DSpinBoxSettingsDialog(self.settings,self)
            settings_dialog.exec()
            self.sl.setMinimum(self.settings['min_val'])
            self.sl.setMaximum(self.settings['max_val'])
            # self.labeltext = self.settings['selected_signal'] + '  ' + '{:3X}'.format(self.settings['value'])
            # self.l1.setText(self.labeltext)
            self.setLabel()
            self.h = self.settings['height']
            self.w = self.settings['width']
            self.resize(self.w,self.h)

        if event.button() == Qt.LeftButton:
            print('left button clicked')
            if event.modifiers() & Qt.ShiftModifier:
                print('Shift Key pressed',self.settings['selected'])
                self.settings['selected'] = not self.settings['selected'] 
                self.selected.emit(self.settings['id'])
            else:
                self.valuechange()
            super(LDial, self).mouseReleaseEvent(event)
            self.update()

    def paintEvent(self, event):
        painter = QtGui.QPainter(self)
        if self.settings['selected']:
            print('paint rectangle')
            painter.setPen(QPen(Qt.red,  5, Qt.SolidLine))
            rect = QtCore.QRect(0, 0, self.w, self.h)
            painter.drawRect(rect)
        painter.end()
        super(LDial, self).paintEvent(event)
        
class LSpinBox(QtWidgets.QWidget):
    selected = pyqtSignal(int)
    dashboard_value = pyqtSignal(str,int,int,int)

    def __init__(self,parent = None, settings={},*args, **kwargs):
        super(LSpinBox, self).__init__(parent)
        self.setSizePolicy(QtWidgets.QSizePolicy.Fixed,QtWidgets.QSizePolicy.Fixed)
        self.__mousePressPos = None
        self.__mouseMovePos = None
        self.h =  60
        self.w =  120

        self.default_settings = {'show_warnings':True, 'pos': self.pos()}
        self.default_settings['signals'] = ['none']
        self.default_settings['selected'] = False
        self.default_settings['selected_signal'] = 'none'
        self.default_settings['height'] = self.h
        self.default_settings['width'] = self.w
        self.default_settings['min_val'] = 0
        self.default_settings['max_val'] = 100
        self.default_settings['value'] = 50

        self.settings = {**self.default_settings, **settings}

        self.h = self.settings['height']        
        self.w = self.settings['width']        
        layout = QVBoxLayout()
        self.l1 = QLabel("Hello")
        self.labeltext = self.settings['selected_signal'] 
        self.l1 = QLabel(self.labeltext)
        self.l1.setAlignment(Qt.AlignCenter)
        self.l1.setSizePolicy(QtWidgets.QSizePolicy.Fixed,QtWidgets.QSizePolicy.Fixed)
        layout.addWidget(self.l1)
		
        self.sl = QSpinBox()
        self.sl.setAttribute(Qt.WA_TranslucentBackground)
        self.sl.setMinimum(self.settings['min_val'])
        self.sl.setMaximum(self.settings['max_val'])
        self.sl.setValue(self.settings['value'])
        self.sl.setSizePolicy(QtWidgets.QSizePolicy.Expanding,QtWidgets.QSizePolicy.Fixed)
		
        layout.addWidget(self.sl)
        self.sl.valueChanged.connect(self.valuechange)
        self.setLayout(layout)
        self.resize(self.w,self.h)
        self.show()

    def sizeHint(self):
        return QtCore.QSize(self.w,self.h)

    def valuechange(self):
        value = self.sl.value()
        print('valuechange',value)
        self.settings['signal_mask'] = -1
        self.dashboard_value.emit(self.settings['selected_signal'],self.settings['id'],value,self.settings['signal_mask'])
        self.settings['value'] = self.sl.value()
        self.labeltext = 'S '+self.settings['selected_signal'] + '  ' + '{:3X}'.format(self.settings['value'])
        self.l1.setText(self.labeltext)

    def setValue(self,val):
        self.sl.setValue(val)

    def restore_pos(self):
        self.move(self.settings['pos'])

    def select(self,id_list,state):
        if self.settings['id'] in id_list:
            if state:
                self.settings['selected'] = True
            else:
                self.settings['selected'] = False
        self.update()  

    def signal_update(self,wrsigs,rdsigs):
        pass

    def signal_setting(self,wrsigs,rdsigs):
        if type(wrsigs)== dict:
            self.settings['signals'] = []
            for key in wrsigs:
                self.settings['signals'].append(key)


    def mousePressEvent(self, event):
        self.__mousePressPos = None
        self.__mouseMovePos = None
        if event.button() == Qt.LeftButton:
            self.__mousePressPos = event.globalPos()
            self.__mouseMovePos = event.globalPos()

        super(LSpinBox, self).mousePressEvent(event)


    def mouseMoveEvent(self, event):
        if event.modifiers() & Qt.ControlModifier:
            #if event.buttons() == Qt.LeftButton:
            if event.buttons() == Qt.LeftButton:
                # adjust offset from clicked point to origin of widget
                currPos = self.mapToGlobal(self.pos())
                globalPos = event.globalPos()
                if self.__mouseMovePos != None:
                    diff = globalPos - self.__mouseMovePos
                    self.newPos = self.mapFromGlobal(currPos + diff)
                    self.move(self.newPos)
                    self.settings['pos'] = self.newPos
                    self.__mouseMovePos = globalPos
        super(LSpinBox, self).mouseMoveEvent(event)


    def mouseReleaseEvent(self, event):
        if event.button() == Qt.RightButton:
            print('right button clicked')
            settings_dialog = DSpinBoxSettingsDialog(self.settings,self)
            settings_dialog.exec()
            self.sl.setMinimum(self.settings['min_val'])
            self.sl.setMaximum(self.settings['max_val'])
            self.labeltext = self.settings['selected_signal'] + '  ' + '{:3X}'.format(self.settings['value'])
            self.l1.setText(self.labeltext)
            self.h = self.settings['height']
            self.w = self.settings['width']
            self.resize(self.w,self.h)

        if event.button() == Qt.LeftButton:
            print('left button clicked')
            if event.modifiers() & Qt.ShiftModifier:
                print('Shift Key pressed',self.settings['selected'])
                self.settings['selected'] = not self.settings['selected'] 
                self.selected.emit(self.settings['id'])
            else:
                self.valuechange()
            super(LSpinBox, self).mouseReleaseEvent(event)
            self.update()

    def paintEvent(self, event):
        painter = QtGui.QPainter(self)
        if self.settings['selected']:
            print('paint rectangle')
            painter.setPen(QPen(Qt.red,  5, Qt.SolidLine))
            rect = QtCore.QRect(0, 0, self.w, self.h)
            painter.drawRect(rect)
        painter.end()
        super(LSpinBox, self).paintEvent(event)

class LCheckBox(QtWidgets.QWidget):
    selected = pyqtSignal(int)
    dashboard_value = pyqtSignal(str,int,int,int)

    def __init__(self,parent = None, settings={},*args, **kwargs):
        super(LCheckBox, self).__init__(parent)
        self.setSizePolicy(QtWidgets.QSizePolicy.Fixed,QtWidgets.QSizePolicy.Fixed)
        self.__mousePressPos = None
        self.__mouseMovePos = None
        self.h =  40
        self.w =  120

        self.default_settings = {'show_warnings':True, 'pos': self.pos()}
        self.default_settings['signals'] = ['none']
        self.default_settings['selected'] = False
        self.default_settings['selected_signal'] = 'none'
        self.default_settings['height'] = self.h
        self.default_settings['width'] = self.w
        self.default_settings['min_val'] = 0
        self.default_settings['max_val'] = 100
        self.default_settings['value'] = 50

        self.settings = {**self.default_settings, **settings}

        self.h = self.settings['height']        
        self.w = self.settings['width']        
        layout = QHBoxLayout()

        self.sl = CheckBox()
        self.sl.setAttribute(Qt.WA_TranslucentBackground)
        self.sl.setValue(self.settings['value'])
        self.sl.setSizePolicy(QtWidgets.QSizePolicy.Fixed,QtWidgets.QSizePolicy.Fixed)		
        layout.addWidget(self.sl)
        
        self.labeltext = self.settings['selected_signal'] + ' ' + '({:3X})'.format(self.settings['value'])
        self.l1 = QLabel(self.labeltext)
        self.l1.setAttribute(Qt.WA_TranslucentBackground)
        self.l1.setAlignment(Qt.AlignLeft)
        self.l1.setSizePolicy(QtWidgets.QSizePolicy.Expanding,QtWidgets.QSizePolicy.Fixed)
        layout.addWidget(self.l1)
		
        self.sl.valueChanged.connect(self.valuechange)
        self.setLayout(layout)
        self.resize(self.w,self.h)
        self.show()


    def sizeHint(self):
        return QtCore.QSize(self.w,self.h)

    def valuechange(self,value):
        self.dashboard_value.emit(self.settings['selected_signal'],self.settings['id'],value,self.settings['signal_mask'])
        self.settings['value'] = value
        self.labeltext = self.settings['selected_signal'] + ' ({:2d}) '.format(self.settings['signal_mask'])
        self.l1.setText(self.labeltext)

    def setValue(self,val):
        self.sl.setValue(val)

    def restore_pos(self):
        self.move(self.settings['pos'])

    def select(self,id_list,state):
        if self.settings['id'] in id_list:
            if state:
                self.settings['selected'] = True
            else:
                self.settings['selected'] = False
        self.update()  

    def signal_update(self,wrsigs,rdsigs):
        pass

    def signal_setting(self,wrsigs,rdsigs):
        if type(wrsigs)== dict:
            self.settings['signals'] = []
            for key in wrsigs:
                self.settings['signals'].append(key)


    def mousePressEvent(self, event):
        self.__mousePressPos = None
        self.__mouseMovePos = None
        if event.button() == Qt.LeftButton:
            self.__mousePressPos = event.globalPos()
            self.__mouseMovePos = event.globalPos()

        super(LCheckBox, self).mousePressEvent(event)


    def mouseMoveEvent(self, event):
        if event.modifiers() & Qt.ControlModifier:
            if event.buttons() == Qt.LeftButton:
                # adjust offset from clicked point to origin of widget
                currPos = self.mapToGlobal(self.pos())
                globalPos = event.globalPos()
                if self.__mouseMovePos != None:
                    diff = globalPos - self.__mouseMovePos
                    self.newPos = self.mapFromGlobal(currPos + diff)
                    self.move(self.newPos)
                    self.settings['pos'] = self.newPos
                    self.__mouseMovePos = globalPos
        super(LCheckBox, self).mouseMoveEvent(event)


    def mouseReleaseEvent(self, event):
        if event.button() == Qt.RightButton:
            settings_dialog = CheckBoxSettingsDialog(self.settings,self)
            settings_dialog.exec()
            self.labeltext = self.settings['selected_signal'] + '  ' + '{:3X}'.format(self.settings['signal_mask'])
            self.l1.setText(self.labeltext)
            self.h = self.settings['height']
            self.w = self.settings['width']
            self.resize(self.w,self.h)

        if event.button() == Qt.LeftButton:
            if event.modifiers() & Qt.ShiftModifier:
                self.settings['selected'] = not self.settings['selected'] 
                self.selected.emit(self.settings['id'])
            else:
                pass
                #self.valuechange()
            self.update()
        super(LCheckBox, self).mouseReleaseEvent(event)

    def paintEvent(self, event):
        painter = QtGui.QPainter(self)
        if self.settings['selected']:
            painter.setPen(QPen(Qt.red,  5, Qt.SolidLine))
            rect = QtCore.QRect(0, 0, self.w, self.h)
            painter.drawRect(rect)
        painter.end()
        super(LCheckBox, self).paintEvent(event)

class CheckBox(QtWidgets.QWidget):
    valueChanged = pyqtSignal(int)
    def __init__(self,parent = None, settings={},*args, **kwargs):
        super(CheckBox, self).__init__(parent=parent)

        self.h =  20
        self.w =  20
        self.value = False
        self.setSizePolicy(QtWidgets.QSizePolicy.Fixed,QtWidgets.QSizePolicy.Fixed)
        
    def sizeHint(self):
        return QtCore.QSize(self.w,self.h)
    
    def setValue(self,val):
        self.value = val
        self.update()
        
    def mouseReleaseEvent(self, event):

        if event.button() == Qt.LeftButton:
            self.value = not self.value
            self.valueChanged.emit(self.value)    
            self.update()
        super(CheckBox, self).mouseReleaseEvent(event)

    def paintEvent(self, event):
        painter = QPainter(self)
        painter.setPen(QPen(Qt.black,  1, Qt.SolidLine))
        rect = QtCore.QRect(2, 2, self.h-5, self.w-5)
        painter.drawRect(rect)

        if self.value:
            brush = QtGui.QBrush()
            brush.setColor(QtGui.QColor('black'))
            brush.setStyle(Qt.SolidPattern)
            a = 4
            rect = QtCore.QRect(a, a, self.h-2*a, self.w-2*a)
            painter.fillRect(rect, brush)


   
class PowerBar(QtWidgets.QWidget):
    """
    Custom Qt Widget to show a power bar and dial.
    Demonstrating compound and custom-drawn widget.
    """

    def __init__(self, steps=5, *args, **kwargs):
        super(PowerBar, self).__init__(*args, **kwargs)

        layout = QtWidgets.QVBoxLayout()
        #self._bar = NumericDisplay(steps)
        self._bar = Led('buttons',1)
        layout.addWidget(self._bar)

        self._dial = QtWidgets.QDial()
        layout.addWidget(self._dial)

        self.setLayout(layout)
        self._dial.valueChanged.connect(self._bar._trigger_refresh)  
        
if __name__ == '__main__':

    app = QtWidgets.QApplication([])
    volume = PowerBar()
    volume.show()
    app.exec_()        