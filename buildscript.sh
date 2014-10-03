mkdir rom
cp twrp.img installscript.sh fastboot adb openrecoveryscript $1 rom/
mv rom/$1 rom/rom.zip
if [ -n "$2" ]; then
	cp $2 rom/
	mv rom/$2 rom/gapps.zip
fi
chmod 777 rom/installscript.sh
zip -r AutoROM-Installer rom/
rm -r rom
echo "Done, distribute AutoROM-Installer.zip to your users."
echo "NOTE: It is recommended to change the file name to prevent ambiguity"
