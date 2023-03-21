#!/bin/bash
p=$( dirname -- "${BASH_SOURCE[0]}")
script_dir="$(cd "$(dirname "$p")"; pwd)/$(basename "$p")"
file="[Unit]\nDescription=My test service\nAfter=multi-user.target\n[Service]\nType=simple\nRestart=always\nExecStart=${script_dir}/fixClipboard.sh\n[Install]\nWantedBy=multi-user.target"
echo -e $file > /etc/systemd/system/fixclipboard.service
systemctl enable fixclipboard