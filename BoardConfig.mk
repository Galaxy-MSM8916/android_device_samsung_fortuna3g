# Inherit from common
include device/samsung/gprimelte-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/fortuna3g

# Asserts
TARGET_OTA_ASSERT_DEVICE := fortuna3g,fortuna3gxx

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_fortuna3g_eur_defconfig

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 1568669696
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 5731479552

# RIL
SIM_COUNT := 2