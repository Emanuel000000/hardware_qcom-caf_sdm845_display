ifneq ($(TARGET_DISABLE_DISPLAY),true)
sdm-libs := sdm/libs
display-hals := include libdebug $(sdm-libs)/utils $(sdm-libs)/core

ifneq ($(TARGET_IS_HEADLESS), true)
    display-hals += libcopybit libmemtrack dp_cec \
                    $(sdm-libs)/hwc2 gpu_tonemapper libdrmutils
endif

display-hals += gralloc

ifneq ($(TARGET_PROVIDES_LIBLIGHT),true)
    display-hals += liblight
endif
endif #TARGET_DISABLE_DISPLAY
ifneq ($(TARGET_IS_HEADLESS), true)
    display-hals += libcopybit
endif

ifeq ($(call is-vendor-board-platform,QCOM),true)
    include $(call all-named-subdir-makefiles,$(display-hals))
else
ifneq ($(filter msm% apq%,$(TARGET_BOARD_PLATFORM)),)
    include $(call all-named-subdir-makefiles,$(display-hals))
endif
endif
