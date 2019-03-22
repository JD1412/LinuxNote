#!/usr/bin/env bash

## this script is writed for installing DEB software packets,
## before you use it you should change somethind

# ------------------
## fix the document which contain the deb packets,
## so you should move all of the software into this documents before install 
Documents="/media/root/Files/应用程序的集合/Linux_software/"
# ------------------

for i in `ls $Documents`; do
    # echo $i
    software_name=$i
    if [ "${software_name##*.}" == "deb" ]; then
        echo $software_name
        # ------------------ make the commend work before install software
        # gdebi $software_name -y
        # ------------------
    fi
    #statements
done
