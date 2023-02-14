DEVICE_PATH := device/samsung/a13ve
BOARD_VENDOR := samsung

# Security patch level
VENDOR_SECURITY_PATCH := 2022-11-01

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.cas@1.2-service-lazy.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.dumpstate@1.1-service-lazy.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.health@2.1-samsung.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.sensors@2.0-multihal.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.usb@1.3-service.coral.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.wifi.hostapd.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.wifi.supplicant.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.wifi@1.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/deviceManifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/engmode_manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/face-default-sec.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/hyper-default-sec.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/lights-default-sec.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest_android.hardware.drm@1.4-service.clearkey.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest_android.hardware.drm@1.4-service.widevine.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest_hwcomposer.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest_vendor.samsung.hardware.security.widevine.keyprov@1.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/nxp.android.hardware.nfc@1.2-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/power-default.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/sec_c2_manifest_default0_1_2.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vaultkeeper_manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.samsung.hardware.biometrics.fingerprint@3.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.samsung.hardware.hqm@1.0-manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.samsung.hardware.snap-default.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.samsung.hardware.thermal@1.0-manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.samsung.hardware.tlc.iccc@1.0-manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.samsung.hardware.tlc.kg@1.1-manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.samsung.hardware.vibrator-default.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.samsung.hardware.wifi.hostapd.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.samsung.hardware.wifi@2.0-service.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/framework_compatibility_matrix.xml

-include vendor/samsung/a13ve/BoardConfigVendor.mk