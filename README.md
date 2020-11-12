# Windows Subsystem for Linux Helper

## Setup  
To setup this tool in your WSL, please do these steps

  1. Open your WSL and Clone the repository
``` shell
> wsl
$ git clone https://github.com/pranithan-kang/WSLHelper.git
```
  2. Open repository folder and execute setup.sh in WSL
``` shell
$ cd WSLHelper
$ sudo ./setup.sh
```

## How to use

### `cdw`
cdw stands for Change (WSL) Linux Directory with Windows Path.
You can use this tool by the command `. cdw "win_path"`.

Example
``` shell
~ $ . cdw "C:\Users\foobar\Documents\quux"
/mnt/c/Users/foobar/Documents/quux $
```
