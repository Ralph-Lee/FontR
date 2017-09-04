#!/bin/sh
#
# Author libo
# Mail: libo214@gmail.com
#
FONT_DIR=/usr/share/fonts/bobofonts
#
echo "-----------------------------------------"
echo ".1. Fonts Installing......"
echo "-----------------------------------------"
if [ -d "$FONT_DIR" ] ; then 
    echo "Warning: Font Directory Already Exist."
    rm -rf $FONT_DIR
    mkdir -p $FONT_DIR
else
    mkdir -p $FONT_DIR
fi
# unalias cp
cp ./*.ttf $FONT_DIR
chmod 644 -R $FONT_DIR
cd $FONT_DIR
mkfontscale && mkfontdir && fc-cache -fv
chkfontpath --add $FONT_DIR
service xfs restart
echo "-----------------------------------------"
echo ".2. Fonts Checking......"
echo "-----------------------------------------"
chkfontpath
echo "-----------------------------------------"
echo "Remember, Check the Fonts Configuration File:"
echo "vim /etc/fonts/fonts.conf"
echo "-----------------------------------------"
echo "-----.The.End.---------------------------"
echo "-----------------------------------------"
exit
