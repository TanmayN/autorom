import os

print "Welcome to AutoROM.\nPlease enter the device codename (listed in devices/)"
device = raw_input("[mako] ")

if not os.path.isdir("devices/" + device):
	print "Invalid device, quitting..."
	exit()

print "\nPlease enter the full path to your flashable ZIP."
path = raw_input("[" + os.getcwd() + "/flashable.zip] ")

if path == "":
	path = os.getcwd() + "/flashable.zip"

if not os.path.isfile(path):
	print "Invalid file, quitting..."
	exit()

print "Please enter the full path to your gapps package."
gapps = raw_input("[leave blank for none] ")	

noGapps =  False
if gapps == "":
	noGapps = True

if not os.path.isfile(gapps) and not noGapps:
	print "Invalid file, quitting..."
	exit()

if noGapps:
	print "Starting build script without gapps..."
	os.execl("/bin/bash", "-c",  os.getcwd() + "/buildscript.sh", path, device)
else:
	print "Starting build script with gapps..."
	os.execl(os.getcwd(), path, device, gapps)
