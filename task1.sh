#!/bin/bash
### Check script name hmi_base.sh exist or not, if not create it
if [ ! -e ~/hmi_base.sh ]
  then
    touch ~/hmi_base.sh
  else
    echo "~/hmi_base.sh is exist"
### Create folder name Demo
if [ ! -d ~/Demo ]
then
   mkdir ~/Demo
fi
### Create a text file with content "Hello world" in Demo folder, print info when finish
if [ ! -e ~/Demo/hello.txt ]
then
   touch ~/Demo/hello.txt
   cd ~/Demo
   echo "Hello World" >> hello.txt
   cat hello.txt
fi
### Create folder_copy, file_copy.txt and file_copy_rsync.txt for task copy
### Create folder_copy for task copy
if [ ! -d ~/folder_copy ]
then
   mkdir ~/folder_copy
fi
### Create file_copy.txt for task copy
if [ ! -e ~/folder_copy/file_copy.txt ]
then
   touch ~/folder_copy/file_copy.txt
fi
### Create file_copy_rsync.txt for task copy
if [ ! -e ~/folder_copy/file_copy_rsync.txt ]
then
   touch ~/folder_copy/file_copy_rsync.txt
fi
### Copy 1 file from other folder to Demo folder
### Using copy default
cp ~/folder_copy/file_copy.txt ~/Demo
### Using rsync
rsync -r ~/folder_copy/file_copy_rsync.txt ~/Demo
### Print End when finish execute file
echo "End"