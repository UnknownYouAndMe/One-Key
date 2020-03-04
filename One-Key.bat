@ECHO OFF&PUSHD %~DP0 &TITLE One-Key V1.02.01    发布：云主页_ZhuYe.Cloud
mode con cols=60 lines=30
color 0A
:Menu
cls
echo.
echo                   ***** 模式切换 *****
echo.
echo 选择数字后执行命令
echo=============================================================
echo.
echo 输入1执行命令：娱乐模式（QQ+微信）
echo.
echo 输入2执行命令：工作模式（MES+PLSQL/Developer）
echo.
echo 输入3执行命令：1个小时之后自动关机
echo.
echo 输入4执行命令：倒计时2俩小时下班模式
echo.
echo 输入5执行命令：自定义关机模式
echo.
echo 输入6执行命令：取消自动关机
echo.
echo 输入7执行命令：退出本程序且不影响已启动的进程
echo.
echo=============================================================
echo.
echo.
set /p xz=请输入你的选择所对应的字符，并按回车键确认:
if /i "%xz%"=="1" goto A
if /i "%xz%"=="2" goto B
if /i "%xz%"=="3" goto one
if /i "%xz%"=="4" goto C
if /i "%xz%"=="5" goto D
if /i "%xz%"=="6" goto E
if /i "%xz%"=="7" goto F
cls &echo 你的输入不正确，请重新输入 &pause &goto Menu 重新输入
:O
start shutdown -s -t 1
goto Menu
:A
echo 正在启动多个程序，请稍后……
echo QQ STARTING
start /d "C:\Program Files (x86)\Tencent\QQ\Bin" QQScLauncher.exe
ping localhost -n 3 >nul
echo WeChat STARTING
start /d "C:\Program Files (x86)\Tencent\WeChat" WeChat.exe
ping 127.1 -n 3 >nul
goto Menu
:B
echo 正在启动多个程序，请稍后……
echo PLSQL Developer STARTING
start /d "C:\Program Files\PLSQL Developer 12" plsqldev.exe
ping localhost -n 3 >nul
echo Intmes STARTING
start /d "C:\Program Files\MES\DEV240-9" Intmes.Windows.Client.exe
ping 127.1 -n 3 >nul
goto Menu
:C
start shutdown -s -t 7200
goto Menu
:one
start shutdown -s -t 3600
goto Menu
:D
echo 请输入关机时间并摁回车继续。
echo 注意以分钟位单位！！！
set /p sert1=请输入：
@echo off
set /a a=%sert1%,b=60 
set /a variable=%a%*%b%
start shutdown -s -t %variable%
goto Menu
:E
start shutdown -a
goto Menu
:F
cls
echo.
echo      感谢您使用本程序 本程序将在3秒后退出
echo           制作人：云主页_ZhuYe.Cloud
echo.
ping 127.1 -n 3 >nul
exit