#!/bin/bash
p=$( dirname -- "${BASH_SOURCE[0]}")
script_dir="$(cd "$(dirname "$p")"; pwd)/$(basename "$p")"
pip install -r "${script_dir}/requirements.txt"
file="[Unit]\nDescription=Fix Path Service\nAfter=multi-user.target\n[Service]\nType=simple\nRestart=always\nExecStart=${script_dir}/fixClipboard.sh\n[Install]\nWantedBy=multi-user.target"
mkdir -p ~/.config/systemd/user/
echo -e $file > ~/.config/systemd/user/fixclipboard.service
systemctl --user enable fixclipboard
systemctl --user start fixclipboard