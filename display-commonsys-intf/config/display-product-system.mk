PRODUCT_PACKAGES += libdisplayconfig \
                    libqdMetaData \
                    libqdMetaData.system \
                    libgralloc.qti \
                    libdrm \
                    vendor.display.config@1.0 \
                    vendor.display.config@1.1 \
                    vendor.display.config@1.2 \
                    vendor.display.config@1.3 \
                    vendor.display.config@1.4 \
                    vendor.display.config@1.5 \
                    vendor.display.config@1.6 \
                    vendor.display.config@1.7 \
                    vendor.display.config@1.8 \
                    vendor.display.config@1.9 \
                    vendor.display.config@1.10 \
                    vendor.display.config@1.11 \
                    vendor.display.config@1.12 \
                    vendor.display.config@1.13 \
                    vendor.display.config@1.14 \
                    vendor.display.config@1.15 \
                    vendor.display.config@1.16 \
                    libsmomo.qti \
                    liblayerext.qti \
                    libsmomoconfig.qti \
                    libcomposerextn.qti \
                    libdisplayconfig.qti

SOONG_CONFIG_NAMESPACES += qtidisplaycommonsys
# Soong Keys
SOONG_CONFIG_qtidisplaycommonsys := displayconfig_enabled
# Soong Values
SOONG_CONFIG_qtidisplaycommonsys_displayconfig_enabled := false

ifeq ($(call is-vendor-board-platform,QCOM),true)
    SOONG_CONFIG_qtidisplaycommonsys_displayconfig_enabled := true
endif
