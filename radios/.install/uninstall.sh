#!/bin/bash
clear
echo "Eliminando Binarios  [ OK ]" 
for binarios in $(cat .install/binarios.txt) ; do rm -rf /usr/bin/$binarios ;done
echo "Eliminando Radios"
bash $PWD/scripts/killallservers
bash $PWD/scripts/killallsources

rm -rf /opt/radios
rm /etc/init.d/radios
rm -rf /etc/radios

read PAUSE
