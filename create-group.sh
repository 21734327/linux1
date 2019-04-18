#!bin/bash
#name: create-group
#version: 1.0
#purpose: create groups
#created: 2019/04/11

mkdir /home/public
mkdir /home/private
mkdir /home/shared

while : ; do

echo "create new group"
read ngroup
ngroup=`echo ${ngroup,,} | cut -c 1-4`

groupadd $ngroup
mkdir /home/public/$ngroup
mkdir /home/private/$ngroup
mkdir /home/shared/$ngroup
chmod 775 /home/public/$ngroup
chmod 770 /home/private/$ngroup
chmod 777 /home/shared/$ngroup
chown :$ngroup /home/public/$ngroup
chown :$ngroup /home/private/$ngroup
chown :$ngroup /home/shared/$ngroup

echo "group created"

done