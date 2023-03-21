SET root_dir=%~dp0
pip install -r %root_dir%requirements.txt
sc create fixclipboard binPath= "%root_dir%fixClipboard.bat" start= auto
sc start fixclipboard
pause