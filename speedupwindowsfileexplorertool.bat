@echo off
set "params=%*"
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
echo =============================================
echo =      Speed Up Windows File Explorer       =
echo =============================================
echo =           Made by Jacob Nicked            =
echo =============================================
echo -
echo Hello, %username%! 
echo -
echo Would you like to apply a fix to speed up File Explorer? (yes/no)
echo Type the answer: 
set/p "answer="

if %answer%==yes goto yes
if %answer%==no goto no

	:yes
	echo -
    reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell" /v FolderType /t REG_SZ /d NotSpecified /f
    echo -
  echo Registry value set successfully. Press any key to exit.
	pause > nul
	exit

	:no 
	exit