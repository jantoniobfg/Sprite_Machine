@echo off
REM ****************************************************************************
REM Vivado (TM) v2022.2 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Wed Jan 04 11:18:03 +0000 2023
REM SW Build 3671981 on Fri Oct 14 05:00:03 MDT 2022
REM
REM IP Build 3669848 on Fri Oct 14 08:30:02 MDT 2022
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim test_memory_func_synth -key {Post-Synthesis:sim_1:Functional:test_memory} -tclbatch test_memory.tcl -protoinst "protoinst_files/sprite_mem.protoinst" -protoinst "protoinst_files/frame_buffer.protoinst" -protoinst "protoinst_files/buffer_rams.protoinst" -log simulate.log"
call xsim  test_memory_func_synth -key {Post-Synthesis:sim_1:Functional:test_memory} -tclbatch test_memory.tcl -protoinst "protoinst_files/sprite_mem.protoinst" -protoinst "protoinst_files/frame_buffer.protoinst" -protoinst "protoinst_files/buffer_rams.protoinst" -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
