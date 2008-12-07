#!/bin/sh
sudo rm -f /System/Library/Extensions.kextcache
sudo rm -f /System/Library/Extensions.mkext

sudo rm -rf /System/Library/Extensions/ApplePS2Controller.kext/Contents/Plugins/ApplePS2Keyboard.kext

sudo chown -R root:wheel build/Release/ApplePS2Keyboard.kext

sudo cp -r build/Release/ApplePS2Keyboard.kext /System/Library/Extensions/ApplePS2Controller.kext/Contents/Plugins

