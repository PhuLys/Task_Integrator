#!/bin/bash
### Check script name hmi_base.sh exist or not, if not create it
if [ ! -e /home/$USER/hmi_base.sh ]
  then
    touch /home/$USER/hmi_base.sh
  else
    echo "/home/$USER/hmi_base.sh is exist"
fi
### Create folder name Demo
if [ ! -d /home/$USER/Demo ]
then
   mkdir /home/$USER/Demo
fi
### Create a text file with content "Hello world" in Demo folder, print info when finish
if [ ! -e /home/$USER/Demo/hello.txt ]
then
   touch /home/$USER/Demo/hello.txt
   cd /home/$USER/Demo
   echo "Hello World" >> hello.txt
   cat hello.txt
fi
### Create folder_copy, file_copy.txt and file_copy_rsync.txt for task copy
if [ ! -d /home/$USER/folder_copy ]
then
   mkdir /home/$USER/folder_copy
fi
### Create file_copy.txt for task copy
if [ ! -e /home/$USER/folder_copy/file_copy.txt ]
then
   touch /home/$USER/folder_copy/file_copy.txt
fi
### Create file_copy_rsync.txt for task copy
if [ ! -e /home/$USER/folder_copy/file_copy_rsync.txt ]
then
   touch /home/$USER/folder_copy/file_copy_rsync.txt
fi
### Copy 1 file from other folder to Demo folder
### Using copy default
cp /home/$USER/folder_copy/file_copy.txt /home/$USER/Demo
### Using rsync
rsync -r /home/$USER/folder_copy/file_copy_rsync.txt /home/$USER/Demo
### Print End when finish execute file
echo "End
