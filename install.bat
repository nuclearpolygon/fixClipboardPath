SET root_dir=%~dp0
mklink "%rootdir%wnd\lesta_fixClipboard.exe" "%PROGRAMDATA%\Microsoft\Windows\Start Menu\Programs\Startup\lesta_fixClipboard.exe"
%PROGRAMDATA%\Microsoft\Windows\Start\ Menu\Programs\Startup\lesta_fixClipboard.exe
echo "symlink created: %PROGRAMDATA%\Microsoft\Windows\Start Menu\Programs\Startup\lesta_fixClipboard.exe"
echo "installation completed"
pause