#!/bin/bash
script_dir=$( dirname -- "${BASH_SOURCE[0]}")
source $script_dir/venv/bin/activate
python $script_dir/main.py