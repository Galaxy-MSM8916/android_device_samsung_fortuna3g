# Inherit from common
include device/samsung/gprimelte-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/fortuna3g

# Asserts
TARGET_OTA_ASSERT_DEVICE := fortuna3g,SM-G530H,samsung_sm_g530h,samsung_sm_g530h

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_fortuna3g_eur_defconfig

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE    :=  1468006400
BOARD_SYSTEMIMAGE_PARTITION_TPE    := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 5834256384
