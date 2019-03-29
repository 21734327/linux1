#!bin/bash

#####################################################
### remember to modify limits.conf and login.defs ###
#####################################################

mkdir /etc/skel/home
mkdir /etc/skel/work
wget ftp://172.31.1.16/policy.pdf /etc/skel/policy.pdf
wget ftp://172.31.1.16/welcome.pdf /etc/skel/welcome.pdf

groupadd users
groupadd huma
groupadd publ
groupadd stud
groupadd telc

useradd -g huma -G users nasanovaoscar -c "Nasanova, Oscar"  
useradd -g huma -G users noilhanjoe    -c "Noilhan, Joe"
useradd -g huma -G users polcherjamie  -c "Polcher, Jamie"
useradd -g huma -G users shmakinandy   -c "Shmakin, Andy"
useradd -g publ -G users vandammjean   -c "VanDamm Jean"
useradd -g publ -G users hendersonjody -c "Henderson, Jody"
useradd -g stud -G users walkerjohnny  -c "Walker, Johnny"
useradd -g stud -G users wenxuekerr    -c "Wen-Xue Kerr"
useradd -g stud -G users pavlickris    -c "Kris Pavlic"
useradd -g stud -G users cokalee       -c "Lee, Coka"
useradd -g telc -G users johnsonpat    -c "Johnson, Pat"
useradd -g telc -G users bureshpatty   -c "Buresh, Patty"
useradd -g telc -G users skeltonred    -c "Skelton, Red"
useradd -g telc -G users ricocoricky   -c "Ricoco, Ricky"
useradd -g telc -G users handlerrobin  -c "Handler, Robin"
echo 123456 | passwd --stdin nasanovaoscar
echo 123456 | passwd --stdin noilhanjoe   
echo 123456 | passwd --stdin polcherjamie 
echo 123456 | passwd --stdin shmakinandy  
echo 123456 | passwd --stdin vandammjean  
echo 123456 | passwd --stdin hendersonjody
echo 123456 | passwd --stdin walkerjohnny 
echo 123456 | passwd --stdin wenxuekerr   
echo 123456 | passwd --stdin pavlickris   
echo 123456 | passwd --stdin cokalee      
echo 123456 | passwd --stdin johnsonpat   
echo 123456 | passwd --stdin bureshpatty  
echo 123456 | passwd --stdin skeltonred   
echo 123456 | passwd --stdin ricocoricky  
echo 123456 | passwd --stdin handlerrobin 

mkdir /home/public
mkdir /home/public/huma
mkdir /home/public/publ
mkdir /home/public/stud
mkdir /home/public/telc
chown :huma /home/public/huma
chown :publ /home/public/publ
chown :stud /home/public/stud
chown :telc /home/public/telc
chmod 775 /home/public/huma
chmod 775 /home/public/publ
chmod 775 /home/public/stud
chmod 775 /home/public/telc

mkdir /home/private
mkdir /home/private/huma
mkdir /home/private/publ
mkdir /home/private/stud
mkdir /home/private/telc
chown :huma /home/private/huma
chown :publ /home/private/publ
chown :stud /home/private/stud
chown :telc /home/private/telc
chmod 770 /home/private/huma
chmod 770 /home/private/publ
chmod 770 /home/private/stud
chmod 770 /home/private/telc

mkdir /home/share
mkdir /home/share/huma
mkdir /home/share/publ
mkdir /home/share/stud
mkdir /home/share/telc
chown :huma /home/share/huma
chown :publ /home/share/publ
chown :stud /home/share/stud
chown :telc /home/share/telc
chmod 777 /home/share/huma
chmod 777 /home/share/publ
chmod 777 /home/share/stud
chmod 777 /home/share/telc

usermod -L palvickris

groupadd proj00
mkdir /home/private/proj00
chown :proj00 /home/private/proj00
chmod 770 /home/private/proj00
usermod -aG proj00 noilhanjoe
usermod -aG proj00 wenxuekerr
usermod -aG proj00 ricocoricky

usermod -e 2019-04-01 skeltonred

groupadd proj01
mkdir /home/private/proj01
chown :proj01 /home/private/proj01
chmod 770 /home/private/proj01
usermod -aG proj01,publ shmakinandy
usermod -aG proj01 hendersonjody -e 2019-04-28

groupadd tran
mkdir /home/public/tran
mkdir /home/private/tran
mkdir /home/shared/tran
chown :tran /home/public/tran
chown :tran /home/private/tran
chown :tran /home/shared/tran
chmod 777 /home/public/tran
chmod 770 /home/private/tran
chmod 775 /home/shared/tran

useradd -g tran -G users kenesalpaul -c "Kenesal, Paul"  
useradd -g tran -G users ferrarivick -c "Ferrari Vick"  
useradd -g tran -G users wendalgary  -c "Wendal, Gary"  
echo 123456 | passwd --stdin kenesalpaul
echo 123456 | passwd --stdin ferrarivick
echo 123456 | passwd --stdin wendalgary 

useradd -g telc -G users colourscyan -c "Cyan, Colours"
echo 123456 | passwd --stdin colourscyan
mkdir /home/colourscyan/skelton
cp -r /home/skeltonred /home/colourscyan/skelton

groupadd motd
chown :motd /etc/motd
chmod g+w /etc/motd
usermod -aG motd nasanovaoscar

groupadd temp
mkdir /home/public/temp
mkdir /home/private/temp
mkdir /home/shared/temp
chown :temp /home/public/temp
chown :temp /home/private/temp
chown :temp /home/shared/temp
chmod 777 /home/public/temp
chmod 770 /home/private/temp
chmod 775 /home/shared/temp

useradd -g temp -G users mantellamicky -c "Mantella, Micky"  
echo 123456 | passwd --stdin mantellamicky 
