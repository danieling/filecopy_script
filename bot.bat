@echo off
set src_folder=D:\Source
set dst_folder=D:\Destination
set file_list=D:\Filelist.txt

if not exist "%dst_folder%" mkdir "%dst_folder%"

for /f "delims=" %%f in (%file_list%) do (
    xcopy "%src_folder%\%%f" "%dst_folder%\"
)