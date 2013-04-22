#!/bin/bash
clear
echo "Shoutcast Automation Server  By _TuXeD_ Instalado [ OK ]"
cd scripts/

chmod 777 * 
cp -rf * /usr/bin/

cd ..
cp -rf opt/radios/ /opt

cp $PWD/.install/radios /etc/init.d/

chmod +x /etc/init.d/radios

mkdir /etc/radios 

cat << RADIOS > /etc/radios/radios.conf
############ Shoutcast Automation Server ################
##################### By _TuXeD_ ########################
# En este archivo debe indicar las radios que quiere que se inicien con el sistema
# El formato de este archivo es muy simple simplemente debe poner los puertos de las radios que desea que se ejecuten
##
# De esta forma pero sin #
#8081
#8918
RADIOS

rm /usr/bin/binarios.txt








read PAUSE
