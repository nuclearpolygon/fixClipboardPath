#!/bin/bash
p=$( dirname -- "${BASH_SOURCE[0]}")
script_dir="$(cd "$(dirname "$p")"; pwd)/$(basename "$p")"
pip install -r "${script_dir}/requirements.txt"
file='[Unit]
Description=Fix Path Service
After=default.target
[Service]
Type=simple
Restart=always
ExecStart='$script_dir'/fixClipboard.sh
[Install]
WantedBy=default.target'
[[ -d ~/.config/systemd/user ]] || ( mkdir -p ~/.config/systemd/user && echo 'dir created: ~/.config/systemd/user' )
echo "$file" > ~/.config/systemd/user/fixclipboard.service && echo 'service created: fixclipboard.service'
systemctl --user enable fixclipboard && echo 'service enabled'
systemctl --user start fixclipboard