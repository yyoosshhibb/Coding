# -*- coding: utf-8 -*-
"""
Created on Tue Feb 11 17:55:17 2020

@author: Net

Revision 1:  include signals from entity
Revision 2: 18/10/2020:  added get lists for signals
"""

debug = 0 

class FpgaSignals:
    def __init__(self, fName):
        self.VHDL_Signals = dict()
        self.wrSignals,self.rdSignals = self._getSignals(fName)
        self.wrRegs    = self._getWrRegs(self.wrSignals)
        self.rdRegs    = self._getRdRegs(self.rdSignals)

    def  _getSignals(self,fName):
        if debug:
            print("file to parse: ",fName)
        wr_signals = dict()
        rd_signals = dict()
        do_parse_wr = False
        do_parse_rd = False
        do_parse_signals = False
        do_parse_portsignals = False
        do_parse_entity = False
        
        with open(fName,"r") as f:
           for line in f:
               if 'wr_regs_on' in line:
                   do_parse_wr = True
                   if debug:
                       print('found wr registers...')
               elif 'wr_regs_off' in line:
                   do_parse_wr = False
               elif 'rd_regs_on' in line:
                   do_parse_rd = True
                   if debug:
                       print('found rd registers...')
               elif 'rd_regs_off' in line:
                   do_parse_rd = False

               eol = line.find('--')
               if eol >= 0:
                   line = line[:eol]
               line = line.replace(';',' ')
               line = line.replace(':',' ')
               tokens = line.split()
               
               if len(tokens):
                   if tokens[0] == 'architecture':
                       do_parse_signals = True
                   elif tokens[0] == 'entity':
                       do_parse_entity = True
                   elif tokens[0][:4] == 'port':
                       if do_parse_entity:
                           do_parse_portsignals = True
                   elif tokens[0] == 'begin':
                       do_parse_signals = False
                   elif tokens[0] == 'end':
                       if debug:
                           print('end entity')
                       do_parse_portsignals = False
                       do_parse_entity = False
    
                   if do_parse_wr:
                       if len(tokens) >= 3:
                           tail = ''.join(tokens[2:])
                           if '_' in tail:
                               continue
                           tail=tail.replace('downto',':')
                           if '(' not in tail:
                               tail += '(31:0)' 
                           tail=tail[:-1]    
                           reg_id = tail.split('(')
                           reg_id.extend([0,0])         #append placeholders for write and read values
                           if ':' not in reg_id[1]:
                               reg_id[1] = reg_id[1]+':'+reg_id[1]
                           if tokens[0][:2] != '--':    #if signal is not commented out
                               wr_signals[tokens[0]] = reg_id    
    
                   if do_parse_rd:
                       if len(tokens) >= 3 and tokens[0][:3] == 'reg':                      
                           if debug:
                               print("read reg: ",tokens)
                           for i in range(2,len(tokens)):
                               if debug:
                                   print("index ",i, "len: ",len(tokens), "token",tokens[i])
                               if tokens[i] in self.VHDL_Signals:
                                   eot = line.find('<')
                                   reg_str = line[:eot] 
                                   if debug:
                                       print('reg_str',reg_str)
                                   if 'downto' not in reg_str:
                                       if '(' not in reg_str:
                                           reg_str += '(31 downto 0)'
                                   reg_str = reg_str.replace('downto',' ')  
                                   slice_start = reg_str.find('(')
                                   slice_stop = reg_str.find(')')
                                   reg_slice = reg_str[slice_start+1:slice_stop].split()
                                   if len(reg_slice)==1:
                                       range_slice = [int(reg_slice[0]),1]
                                   else:
                                       range_slice = [int(reg_slice[1]),int(reg_slice[0])-int(reg_slice[1])+1]
                                   regname_stop = reg_str.find('_')
                                   regname = reg_str[:regname_stop].lstrip()
                                   regaddr = int(regname[3:],16)
                                   
                                   if debug:
                                       print("found in  :",regname," range=",range_slice," ",tokens[i]," signal ",self.VHDL_Signals[tokens[i]])
                                   #rd_signals[tokens[i]]= [regname,regaddr,range_slice] 
                                   regslice = '{}:{}'.format(range_slice[0]+range_slice[1]-1,range_slice[0])
                                   rd_signals[tokens[i]]= [regname,regslice,0,0] 
                                   
                            
                   if do_parse_signals:
                       if tokens[0] == 'signal':
                           tail = ''.join(tokens[2:])
                           tail=tail.replace('downto',':')
                           if ':' not in tail:
                               tail=tail+'(0:0)'
                           if 'std_logic' in tail:
                               tail_start=tail.find('(')
                               tail_stop=tail.find(')')
                               tail=tail[tail_start+1:tail_stop]
                               tail = tail.replace(':',' ')
                               if '*' not in tail:
                                   tail_list = tail.split()
                                   try:
                                       self.VHDL_Signals[tokens[1]] = int(tail_list[0])-int(tail_list[1])+1
                                   #print("tail remaining: ",tail)
                                   except:
                                       self.VHDL_Signals[tokens[0]] = 99

                   if do_parse_portsignals:
                       if debug:
                           print('ENTITY:',tokens)
                       if len(tokens)>1:
                           if tokens[1] == 'in':
                               tail = ''.join(tokens[2:])
                               tail=tail.replace('downto',':')
                               if debug:
                                   print('tail:',tail)
                               if ':' not in tail:
                                   tail=tail+'(0:0)'
                               if 'std_logic' in tail:
                                   tail_start=tail.find('(')
                                   tail_stop=tail.find(')')
                                   tail=tail[tail_start+1:tail_stop]
                                   tail = tail.replace(':',' ')
                                   if '*' not in tail:
                                       tail_list = tail.split()
                                       try:
                                           self.VHDL_Signals[tokens[0]] = int(tail_list[0])-int(tail_list[1])+1
                                           #print("tail remaining: ",tail)
                                       except:
                                           self.VHDL_Signals[tokens[0]] = 99
                                               

        return wr_signals,rd_signals
 
    def _getWrRegs(self,signals):
        regs = dict()
        for key in signals:
            if signals[key][0] not in regs:
                regs[signals[key][0]] = 0
        return regs

    def _getRdRegs(self,signals):
        regs = dict()
        for key in signals:
            if signals[key][0] not in regs:
                regs[signals[key][0]] = 0
        return regs
    
    def _create_mask(self,regslice):
        slice_start = int(regslice[1])
        slice_stop = int(regslice[0])
        mask=0
        for i in range(32):
            if i >= slice_start and i <= slice_stop:
                mask |= 1 << i
        return mask,slice_start        
            
        
    def set(self,sigName,sigValue):
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

    def sigs_update(self):
        for key in self.wrSignals:
            reg_name = self.wrSignals[key][0]
            try:
                reg_addr = int(reg_name[3:],16)
                reg_val  = self.wrRegs[reg_name]
                regslice = self.wrSignals[key][1].split(':')
                mask,slice_start = self._create_mask(regslice)
                slice_val = reg_val & mask
                sig_val = slice_val >> slice_start
                self.wrSignals[key][3] = sig_val
                #print('~~~~{} {} {:X} {:X} {:X} {:X} {:X} {:X}'.format(key,reg_name,reg_addr,reg_val,mask,slice_start,slice_val,sig_val))
            except:
                pass
        for key in self.rdSignals:
            reg_name = self.rdSignals[key][0]
            try:
                reg_addr = int(reg_name[3:],16)
                reg_val  = self.wrRegs[reg_name]  # take value from wrRegs !!!!
                regslice = self.rdSignals[key][1].split(':')
                mask,slice_start = self._create_mask(regslice)
                slice_val = reg_val & mask
                sig_val = slice_val >> slice_start
                self.rdSignals[key][3] = sig_val
                #print('~~~~{} {} {:X} {:X} {:X} {:X} {:X} {:X}'.format(key,reg_name,reg_addr,reg_val,mask,slice_start,slice_val,sig_val))
            except:
                pass
                     
    def get(self,sigName):
        try:
            regname,regaddr,regslice = self.rdSignals[sigName]
            #print("get REG:",regname,regslice)
            return regaddr,regslice
        except:
            print(sigName,': No valid register name !!')
            return -1,-1
        
    def value(self,sigName):
        return self.wrSignals[sigName][3]
    
    def printsig(self,sigName):
        print('Signal {}: value={:08X} in {}  slice {}'.format(sigName,self.wrSignals[sigName][3],self.wrSignals[sigName][0],self.wrSignals[sigName][1]))
        
    def printall(self): 
        print('--- writeable registers: -----------------------------------')
        for key in self.wrRegs:
            print("{}: {:08X}".format(key,self.wrRegs[key]))
    
        print('--- writeable signals:')
        for key in self.wrSignals:
            if len(key)<=7:
                print("signal {}:\t\t\t{}".format(key,self.wrSignals[key]))
            elif len(key)<=15:
                print("signal {}:\t\t{}".format(key,self.wrSignals[key]))
            else:
                print("signal {}:\t{}".format(key,self.wrSignals[key]))
        print('--- readable registers:--------------------------------------')
        for key in self.rdRegs:
            print("{}: {:08X}".format(key,self.rdRegs[key]))
    
        print('--- readable signals:')
        for key in self.rdSignals:
            if len(key)<=7:
                print("signal {}:\t\t\t{}".format(key,self.rdSignals[key]))
            elif len(key)<=15:
                print("signal {}:\t\t{}".format(key,self.rdSignals[key]))
            else:
                print("signal {}:\t{}".format(key,self.rdSignals[key]))
            
    def get_signal_list(self):
        wr_signals = []
        rd_signals = []
        for key in self.wrSignals:
            if len(key)<=7:
                wr_signals.append("signal {}:\t\t\t{}".format(key,self.wrSignals[key]))
            elif len(key)<=15:
                wr_signals.append("signal {}:\t\t{}".format(key,self.wrSignals[key]))
            else:
                wr_signals.append("signal {}:\t{}".format(key,self.wrSignals[key]))
        
        for key in self.rdRegs:
            print("{}: {:08X}".format(key,self.rdRegs[key]))
    
        print('--- readable signals:')
        for key in self.rdSignals:
            if len(key)<=7:
                rd_signals.append("signal {}:\t\t\t{}".format(key,self.rdSignals[key]))
            elif len(key)<=15:
                rd_signals.append("signal {}:\t\t{}".format(key,self.rdSignals[key]))
            else:
                rd_signals.append("signal {}:\t{}".format(key,self.rdSignals[key]))
                    
        return wr_signals, rd_signals
        
       