@ECHO OFF&PUSHD %~DP0 &TITLE One-Key V1.02.01    ����������ҳ_ZhuYe.Cloud
mode con cols=60 lines=30
color 0A
:Menu
cls
echo.
echo                   ***** ģʽ�л� *****
echo.
echo ѡ�����ֺ�ִ������
echo=============================================================
echo.
echo ����1ִ���������ģʽ��QQ+΢�ţ�
echo.
echo ����2ִ���������ģʽ��MES+PLSQL/Developer��
echo.
echo ����3ִ�����1��Сʱ֮���Զ��ػ�
echo.
echo ����4ִ���������ʱ2��Сʱ�°�ģʽ
echo.
echo ����5ִ������Զ���ػ�ģʽ
echo.
echo ����6ִ�����ȡ���Զ��ػ�
echo.
echo ����7ִ������˳��������Ҳ�Ӱ���������Ľ���
echo.
echo=============================================================
echo.
echo.
set /p xz=���������ѡ������Ӧ���ַ��������س���ȷ��:
if /i "%xz%"=="1" goto A
if /i "%xz%"=="2" goto B
if /i "%xz%"=="3" goto one
if /i "%xz%"=="4" goto C
if /i "%xz%"=="5" goto D
if /i "%xz%"=="6" goto E
if /i "%xz%"=="7" goto F
cls &echo ������벻��ȷ������������ &pause &goto Menu ��������
:O
start shutdown -s -t 1
goto Menu
:A
echo ������������������Ժ󡭡�
echo QQ STARTING
start /d "C:\Program Files (x86)\Tencent\QQ\Bin" QQScLauncher.exe
ping localhost -n 3 >nul
echo WeChat STARTING
start /d "C:\Program Files (x86)\Tencent\WeChat" WeChat.exe
ping 127.1 -n 3 >nul
goto Menu
:B
echo ������������������Ժ󡭡�
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
echo ������ػ�ʱ�䲢���س�������
echo ע���Է���λ��λ������
set /p sert1=�����룺
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
echo      ��л��ʹ�ñ����� ��������3����˳�
echo           �����ˣ�����ҳ_ZhuYe.Cloud
echo.
ping 127.1 -n 3 >nul
exit