# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit products
$(call inherit-product, device/alcatel/bcm21553-common/common.mk)
$(call inherit-product, vendor/alcatel/acar/vendor_blobs.mk)
$(call inherit-product, build/target/product/languages_full.mk)
$(call inherit-product, build/target/product/full_base.mk)

# Add device package overlay
DEVICE_PACKAGE_OVERLAYS += device/alcatel/acar/overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Add LDPI assets
    PRODUCT_LOCALES += ldpi



# Board-specific init
PRODUCT_COPY_FILES += \
    device/alcatel/acar/ramdisk/ueventd.bcm21553.rc:root/ueventd.rc \
    device/alcatel/acar/ramdisk/init.bcm21553.rc:root/init.rc
