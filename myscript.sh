#!/usr/bin/bash
# First Command
man ls
echo "man internsctl"

# command for help
help
echo "internsctl--help"

#command for version
internsctl--version
echo "internsctl--version"

#command for cpu info
lscpu
echo "internsctl-cpu-getinfo"

#command for memory info
free 
echo "internsctl-memory-getinfo"

#command for creating user
awk -F: '{ print $1}' /etc/passwd
echo "internsctl-user-create"

#command for sudo user list
echo "internsctl-user-list--sudo-only"
grep -Po '^sudo.+:\K.*$' /etc/group

#command for memory 

ls -l --b=M  /home/Documents/output | cut -d " " -f5

# for viewing the file 
stat /home/Desktop/output
echo "internsctl-file-getinfo"
 
#command for user list
echo "internsct-user-list"
awk -F: '{ print $1}' /etc/passwd

#command for file info 
echo "internsctl-file-getinfo"
stat /home/yashminder/output

#command for size
echo "internsctl-file-getinfo-size"
ls -ld /home/yashminder/output |awk '{ print $5; }'

#command for permission
echo "internsctl-file-getinfo-permission"
ls -ld /home/yashminder/output |awk '{ print $1; }'

#command for owner 
echo "internsctl-file-getinfo-owner"
ls -ld /home/yashminder/output |awk '{ print $3; }'

#command for modification
echo "internsctl-file-getinfo-modification"
stat -c ‘%y’ /home/yashminder/output











