@echo off
SET root_dir=%~dp0
rem echo %root_dir%wnd\lesta_fixClipboard.exe
erase "%PROGRAMDATA%\Microsoft\Windows\Start Menu\Programs\Startup\lesta_fixClipboard.exe" 
mklink "%PROGRAMDATA%\Microsoft\Windows\Start Menu\Programs\Startup\lesta_fixClipboard.exe" "%root_dir%wnd\lesta_fixClipboard.exe" 
start /b cmd /c "%PROGRAMDATA%\Microsoft\Windows\Start Menu\Programs\Startup\lesta_fixClipboard.exe"
rem echo "symlink created: %PROGRAMDATA%\Microsoft\Windows\Start Menu\Programs\Startup\lesta_fixClipboard.exe"
echo installation completed
pause