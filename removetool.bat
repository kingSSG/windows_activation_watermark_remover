@echo off
set "startupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
(
    echo @echo off
    echo color 04
    echo echo "Done...." 
    echo color 04
    echo echo   have a great day %date%
    ::TIMEOUT /T 3 /NOBREAK
    echo taskkill /F /IM explorer.exe
    echo explorer.exe     
    echo exit
) > "%startupFolder%\removewindowatermark.bat"
echo color 02
echo Done... 
echo "Restart your PC"
echo NewScript.bat created 
echo in %startupFolder% with content.
TIMEOUT /T 5 /NOBREAK  
exit