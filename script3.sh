#!bin/bash
#name: script3
#version: 1.0
#purpose: get info of a system user
#created: 2019/04/18

echo "enter username"
read username
username=${username,,}

userline=`grep $usernamename /etc/passwd`
userid=`echo $userline | cut -d ":" -f 3`
groupid=`echo $userline | cut -d ":" -f 4`

igroup=`grep $groupid /etc/group | cut -d ":" -f 1`
addgroup=`grep $username /etc/group | cut -d ":" -f 1 | tr [:space:] [,]`

echo "User $username has a UID of $userid and a GID of $groupid."
echo "User $username has an initial group have of $igroup."
echo "User $username is in the following additional groups: ${addgroup%?}."
