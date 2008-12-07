Hi,
I hope this driver works for you.
It works fine with a Gateway ML6720, which happens to be one of the machines for which absolutely no PS2 hack had worked so far.
To install, you need to have ApplePS2Controller.kext in /System/Library/Extensions.
Open this kext's content, navigate down Contents/PlugIns/ and you should see a pre-existing ApplePS2Keyboard.kext package.

INSTALL:
1. Delete the old driver:
sudo rm -rf ApplePS2Keyboard.kext
2. Install the new kext:
cp -R ~/Desktop/ApplePS2Keyboard.kext .
(this is assuming that the new kext is located on your desktop)
3. "Bless" the new kext:
sudo find -type d ApplePS2Keyboard.kext -exec chmod 755 {} \;
sudo find -type f ApplePS2Keyboard.kext -exec chmod 644 {} \;
sudo chown -R root:wheel ApplePS2Keyboard.kext
4. You can now reboot or, if you feel adventurous, type:
sudo kextload -c ApplePS2Controller.kext/Contents/PlugIns/ApplePS2Keyboard.kext

CREDITS:
Jalavoui @ http://forum.insanelymac.com posted a keyboard driver for the Acer TravelMate 4100 with a portuguese layout.
I simply changed the layout back to a US English layout and made the keyboard detection much more lenient than it was (the original author was making a fair assumption that all laptop keyboards would pass the same detection test; he was sadly mistaken).

You can contact me at http://forum.insanelymac.com, my username is 'Fusion'.
-Chris.
