# Inherit AOSP device configuration for blade.
$(call inherit-product, device/alcatel/acar/device_acar.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Include FM-Radio stuff
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_acar
PRODUCT_BRAND := TCT
PRODUCT_DEVICE := Vodafone_Smart_II_gsm
PRODUCT_MODEL := Vodafone Smart II
PRODUCT_MANUFACTURER := TCT
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=Vodafone_Smart_II_VFGR BUILD_ID=GINGERBREAD BUILD_DISPLAY_ID=GINGERBREAD BUILD_FINGERPRINT=TCT/Vodafone_Smart_II_VFGR/Vodafone_Smart_II_gsm:2.3.7/GINGERBREAD/gf1:user/release-keys PRIVATE_BUILD_DESC="Vodafone_Smart_II_VFGR-user 2.3.7 GINGERBREAD gf1 release-keys"

# Add LDPI assets, in addition to LDPI
PRODUCT_LOCALES += ldpi

# Extra overlay for LDPI
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi

# Copy bootanimation
PRODUCT_COPY_FILES += \
     vendor/cyanogen/prebuilt/ldpi/media/bootanimation.zip:custpack/JRD_custres/media/bootanimation.zip

# Release name and versioning
PRODUCT_RELEASE_NAME := alcatelV860
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
