TARGET := iphone:clang:latest:13.0
INSTALL_TARGET_PROCESSES = YouTube
ARCHS = arm64
PACKAGE_VERSION = 1.7.2
MIN_YOUTUBE_VERSION = 17.33.2

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YTABConfig

$(TWEAK_NAME)_FILES = Settings.x Tweak.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc -DTWEAK_VERSION=$(PACKAGE_VERSION)
$(TWEAK_NAME)_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
