#install emulator
choco install android-sdk

sdkmanager "platform-tools" "platforms;android-28"
sdkmanager "system-images;android-28;google_apis;x86_64"
sdkmanager --licenses

echo "no" | avdmanager create avd -n Android28 -k "system-images;android-28;google_apis;x86_64"

emulator -writable-system -no-snapshot -avd Android28


#Copy burp certificate
adb devices #wake adb demon and list devices

adb root #restart adb as root (necessary for adding certificate)
adb remount # remount /system partition in writable mode in order to write  certificate
adb push .\9a5ba575.0 /system/etc/security/cacerts/

