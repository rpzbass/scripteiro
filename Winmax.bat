@echo off  
color 2
Title  WinMax 1.0


echo		        	 ====================================
echo 			 =         WinMax Batch 1.o         = 
echo 		         =           By  MaxPayne           =
echo 		         ====================================
echo.
echo.
echo 1.Limpar espaço livre do disco
echo 2.Gerenciamento do computador
echo 3.Gerenciador de Conta do Windows 
echo 4.Gerenciador de Cores
echo 5.Desfragmentar o disco
echo 6.Diskpart 
echo 7.Robocopy     
echo 8.msconfig
echo 9.SAIR
echo.
echo.
echo.
echo.
:Menu

set/p a=DIGITE O NUMERO DO PROGRAMA DESEJADO?= 
if %a%==1 (goto :1)
if %a%==2 (goto :2)
if %a%==3 (goto :3)
if %a%==4 (goto :4)
if %a%==5 (goto :5)
if %a%==6 (goto :6)
if %a%==7 (goto :7)
if %a%==8 (goto :8)
if %a%==9 (goto :9)
pause


:1
cleanmgr
goto :Menu


:2
compmgmt
goto :Menu
 

:3 
control userpasswords2
goto :Menu

:4
calc
goto :Menu

:5
dfrgui
goto :Menu

:6
diskpart
goto :Menu

:7
robocopy
goto :Menu

:8
msconfig
goto :Menu

:9
pause
exit

