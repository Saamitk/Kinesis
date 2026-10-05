# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers
# Kinesis / Saamrox configuration for the Xiaomi sm6250 family (miatoll)

## AnyKernel setup
# begin properties
properties() { '
kernel.string=Saamrox Kinesis
kernel.compiler=x
kernel.made=x
kernel.version=x
message.word=KernelSU + SuSFS + NoMount + DroidSpaces
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=miatoll
device.name2=curtana
device.name3=excalibur
device.name4=gram
device.name5=joyeuse
supported.versions=
supported.patchlevels=
'; } # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;


## AnyKernel file attributes
# no ramdisk files are shipped (do.systemless=1)

## AnyKernel boot install
dump_boot;
write_boot;
## end boot install
