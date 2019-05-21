export ARCHS = armv7 arm64 arm64e

include /Users/mrvayga/theos/makefiles/common.mk
  
APPLICATION_NAME = akshun
akshun_FILES = main.m XXAppDelegate.m MainViewController.m SecondViewController.m PopViewController.m CustomCell.m MPThreeXController.m
akshun_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"akshun\"" || true
