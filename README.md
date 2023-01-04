## Recovery Device Tree for the Samsung Galaxy A13 - SM-A137F (MTK)

## How-to compile it:

# Create dirs
$ mkdir tw; cd tw

# Init repo
$ repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-11

# Clone a13ve repo
$ git clone https://github.com/edward0181/android_device_samsung_a13ve device/samsung/a13ve

# Clone a13ve kernel
$ git clone https://github.com/edward0181/android_kernel_samsung_a13ve kernel/samsung/a13ve

# Sync
$ repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j`nproc`

# Build
$ source build/envsetup.sh; export ALLOW_MISSING_DEPENDENCIES=true; lunch twrp_a13ve-eng; mka recoveryimage

# Disable File Based Encryption (FBE) after installing TWRP.
$ Boot TWRP; format DATA partition; start TWRP SHELL; execute: multidisabler.
Your DATA partition will be secured against re-encryption.


Blobs version:
> Kernel base: Compiled from source.
> Ramdisk, DTB, DTBO base: A137FXXU1BVL1