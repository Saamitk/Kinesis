# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers
# Kinesis / Saamrox configuration for the Xiaomi sm6250 family (miatoll)

## AnyKernel setup
# begin properties
properties() { '
kernel.string=Saamrox Kinesis
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
# NOTE: these are the variable names tools/ak3-core.sh actually reads. The old
# lowercase spellings (block=, is_slot_device=, ...) are ignored by this
# AnyKernel3 and make every recovery abort with "Unable to determine partition".
# BLOCK takes a by-name partition name (auto-detected across the usual by-name
# locations) or an explicit /dev path.
BLOCK=boot;
IS_SLOT_DEVICE=0;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;


## AnyKernel file attributes
# no ramdisk files are shipped (do.modules=0)

## AnyKernel boot install
dump_boot;
write_boot;
## end boot install
