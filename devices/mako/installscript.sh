./adb push rom.zip /sdcard/rom.zip
if [ -a gapps.zip ]; then
	./adb push gapps.zip /sdcard/gapps.zip
fi
