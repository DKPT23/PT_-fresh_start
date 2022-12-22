## common wsl issues

### issue 1:
if `apt --fix-missing install` and `apt --fix-broken install` fail and return error: 
`E: Sub-process /usr/bin/dpkg returned an error code (1)`
#### solution:
```bash
cd /tmp
apt -y download libcrypt1
apt -y install ./libcrypt*
apt -y --fix-broken install
```

### issue 2:
if `apt upgrade` or `apt install` fail with http error 403
#### solution:
Change to non supervized wifi, fortigate tends to block some kali repos



## android emulator
```sh
emulator -writable-system -no-snapshot -avd Android28


#Copy burp certificate
adb devices #wake adb demon and list devices

adb root #restart adb as root (necessary for adding certificate)
adb remount # remount /system partition in writable mode in order to write  certificate
adb push .\9a5ba575.0 /system/etc/security/cacerts/
```
