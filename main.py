import pyperclip
import time
from pathlib import Path
import os
import platform

if platform.system() == 'Windows':
    map_path = {'/media/white': 'Y:', '/media/black': 'X:'}
else:
    map_path = {'Y:': '/media/white', 'V:': '/media/white', 'T:': '/media/white', 'X:': '/media/black'}

while True:
    spam = pyperclip.paste()
    res = spam
    for k, v in map_path.items():
        if res.startswith(k):
            if platform.system() != 'Windows':
                res = res.replace('\\', '/')
            res = res.replace(k, v)
            res = os.path.normpath(res)
            if Path(res).exists():
                pyperclip.copy(res)
            # break

    # print(spam, end='\r')
    time.sleep(.1)
