#!bin/bash
#name: script3
#version: 1.0
#purpose: get info of a system user
#created: 2019/04/18

echo "enter username"
read username
username=${username,,}

userline=`grep $uname /etc/passwd`
userid=`echo $userline | cut -d ":" -f 3`
groupid=`echo $userline | cut -d ":" -f 4`

igroup=`grep $groupid /etc/group | cut -d ":" -f 1`
addgroup=`grep $username /etc/group | cut -d ":" -f 1 | tr [:space:] [,]`

echo
echo $username
echo $userid
echo $groupid
echo $igroup
echo $addgroup
