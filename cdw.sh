#!/bin/bash

help_msg=$(cat <<-EOM
Change (WSL) Linux Directory with Windows Path
==============================================
You can use this tool by the command
    . cdw "win_path"

Example:
    ~ $ . cdw "C:\Users\foobar\Documents\quux"
    /mnt/c/Users/foobar/Documents/quux $
EOM
)

function convert_win_2_wsl_path() {
    # NOTE: Replace Backslash with Slash
    # --------------------
    linux_path=$(echo $win_path | sed 's/\\/\//g')
    # echo $linux_path

    # NOTE: Get the Windows Drive in path
    # --------------------
    win_drive=$(echo $linux_path | grep -P -o '^\w(?=:)')
    # echo $win_drive

    # NOTE: Replace Drive to Mount Directory
    # --------------------
    mnt_dir="\\/mnt\\/${win_drive,,}"
    # echo $mnt_dir
    linux_path=$(echo $linux_path | sed "s/^\w:/$mnt_dir/g")
    # echo $linux_path
}

win_path=$1

if [ "$win_path" == "" ]; then
    echo "$help_msg"
    exit 0
fi

convert_win_2_wsl_path $win_path

cd $linux_path