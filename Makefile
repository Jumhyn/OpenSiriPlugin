GO_EASY_ON_ME = 1
include theos/makefiles/common.mk

LIBRARY_NAME = opensiriplugin
opensiriplugin_FILES = opensiriplugin.mm
opensiriplugin_INSTALL_PATH = /var/mobile/Library/OpenSiri

include $(THEOS_MAKE_PATH)/library.mk
