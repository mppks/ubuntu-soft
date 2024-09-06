#!/bin/bash

#
# Install UltiMaker-Cura
#

sudo curl -L "https://github.com/Ultimaker/Cura/releases/download/5.8.1/UltiMaker-Cura-5.8.1-linux-X64.AppImage" --output-dir /opt -O
# sudo mkdir /opt/cura
sudo chmod a+x /opt/UltiMaker-Cura-5.8.1-linux-X64.AppImage
app_offset=$(/opt/UltiMaker-Cura-5.8.1-linux-X64.AppImage --appimage-offset)
sudo mount /opt/UltiMaker-Cura-5.8.1-linux-X64.AppImage /opt/cura/ -o offset=$app_offset
sudo mkdir /usr/local/share/applications
sudo cp /opt/cura/com.ultimaker.cura.desktop /user/local/share/applications
sudo mkdir /usr/local/share/icons
sudo cp /opt/cura/usr/share/icons/hicolor /usr/local/share/icons
sudo ln -s /opt/UltiMaker-Cura-5.8.1-linux-X64.AppImage /usr/local/bin/UltiMaker-Cura
sudo umount /opt/cura
sudo rm -r /opt/cura
# cp /opt/cura/com.ultimaker.cura.desktop ~/.local/share/applications
# sed -i 's:Exec=.*:Exec=/opt/cura/AppRun:' ~/.local/share/applications/com.ultimaker.cura.desktop
# sed -i 's:Icon=:Icon=/opt/cura/:' ~/.local/share/applications/com.ultimaker.cura.desktop
