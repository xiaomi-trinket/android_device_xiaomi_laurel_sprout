#
# Copyright (C) 2018-2019 The LineageOS Project
# Copyright (C) 2020 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from trinket-common
-include device/xiaomi/trinket-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/laurel_sprout

# Assert
TARGET_OTA_ASSERT_DEVICE := laurel_sprout

# Audio
AUDIO_FEATURE_ENABLED_DYNAMIC_LOG := false
AUDIO_FEATURE_ENABLED_DLKM := false

# Display
TARGET_SCREEN_DENSITY := 440

# A/B manifest.
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/hidl/manifest.xml

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/laurel_sprout
KERNEL_DEFCONFIG := vendor/laurel_sprout-perf_defconfig

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 0x0800000
BOARD_METADATAIMAGE_PARTITION_SIZE := 16777216
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 115869577216
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824
BOARD_USES_METADATA_PARTITION := true

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true

# Sepolicy
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/public
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Inherit from the proprietary version
-include vendor/xiaomi/laurel_sprout/BoardConfigVendor.mk
