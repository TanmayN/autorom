./adb push rom /sdcard/rom.zip
if [ -f gapps.zip ]; do
	./adb push gapps.zip /sdcard/gapps.zip
	echo "install /sdcard/gapps.zip" >> openrecoveryscript
fi
./adb reboot bootloader
./adb push openrecoveryscript /cache/recovery/openrecoveryscript
print "Booting TWRP..."
./fastboot boot twrp.img
echo "Done, wait for the installation to finish."
echo "Your device may take several minutes to boot up."
