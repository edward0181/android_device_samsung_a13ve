## Recovery Device Tree for the Samsung Galaxy A13 - SM-A137F (MTK) - TESTING

Mounting /Data is still failing, as we need encryption blobs in A13. ***WIP***

Thanks @physwizz for compressed kernel Image.gz!!!

## How-to compile it:

# Create dirs
$ mkdir tw; cd tw

# Init repo
$ repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12

# Clone a13ve repo
$ git clone https://github.com/edward0181/android_device_samsung_a13ve device/samsung/a13ve

# Clone a13ve kernel if you want...
$ git clone https://github.com/edward0181/android_kernel_samsung_a13ve kernel/samsung/a13ve

# Sync
$ repo sync  -f --force-sync --no-clone-bundle --no-tags -j$(nproc --all)

# Build
$ source build/envsetup.sh; export ALLOW_MISSING_DEPENDENCIES=true; lunch twrp_a13ve-eng; mka recoveryimage

# Disable File Based Encryption (FBE) after installing TWRP.
$ Work in progress, to follow


Blobs version:
> Kernel base: Compiled from source, big thanks to @physwizz: https://github.com/physwizz/a137-T
> Ramdisk, DTB, DTBO base: A137FXXU1BVL1
