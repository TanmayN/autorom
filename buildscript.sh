mkdir rom-linux
cp devices/$2/recovery.img devices/$2/installscript.sh tools/fastboot tools/adb devices/$2/openrecoveryscript $1 rom/
mv rom-linux/$1 rom-linux/rom.zip
if [ -n "$3" ]; then
	cp $3 rom-linux/
	mv rom-linux/$3 rom-linux/gapps.zip
fi
chmod 777 rom-linux/installscript.sh
zip -r AutoROM-Linux rom-linux/
rm -r rom-linux/
echo "Done, distribute AutoROM-Linux.zip to your users."
echo "NOTE: It is recommended to change the file name to prevent ambiguity"
