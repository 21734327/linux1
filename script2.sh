#!bin/bash
#name: script2
#version: 1.0
#purpose: add a user
#created: 2019/04/11

while : ; do

echo "first name"
read fname
fname=${fname,,}
echo "last name"
read lname
lname=${lname,,}
echo "initial group"
read igroup
igroup=${igroup,,}
echo "additional group"
read addgroup
addgroup = ${addgroup,,}

uname=`echo $lname |cut -c 1-5``echo $fname | cut -c 1`

useradd $uname -g $igroup -G $addgroup -c "${fname^^} ${lname^^}"
echo 123456 | passwd --stdin $uname

echo "run again?"
read yn
yn=`echo ${yn,} | cut -c 1`
clear
if [ "$yn" != "y" ]; then break
fi
done