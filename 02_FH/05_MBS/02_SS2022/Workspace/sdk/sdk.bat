@echo off
set mypath=%cd%
echo *************************************
echo Working Directory is %mypath%
echo Hit [Enter Enter] to launch the xsct with sdk.tcl file
echo *************************************
echo Launhcing this script will cretae new hw1,bsp1 and app1 projects
echo or existing projects updated with system_wrapper.hdf file from ../apps/proj_zybo_awfg/*
echo *************************************
echo and MATLAB genberated .c and .h files coppied to sdk/app1/src from
echo ../MATLAB/CPU_ert_rtw/*.c
echo ../MATLAB/CPU_ert_rtw/*.h
echo *************************************

pause
C:\Xilinx\SDK\2019.1\bin\xsct.bat sdk.tcl