# Inherit from common
include device/samsung/gprimelte-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/fortunalte

# Asserts
TARGET_OTA_ASSERT_DEVICE := gprimeltexx,gprimeltezt,fortunalte,fortunaltexx,fortunaltezt,fortunalteuh,gprimelteuh

# Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_fortunalte
TARGET_LIBINIT_DEFINES_FILE := $(LOCAL_PATH)/init/init_fortunalte.cpp

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_fortuna_aio_defconfig

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE    :=  1468006400
BOARD_SYSTEMIMAGE_PARTITION_TPE    := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 5834256384

# NFC
BOARD_NFC_CHIPSET := pn547
BOARD_NFC_DEVICE := "/dev/$(BOARD_NFC_CHIPSET)"

# Misc.
TARGET_SYSTEM_PROP                              := $(LOCAL_PATH)/system.prop
