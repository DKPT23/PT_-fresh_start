This is a simple powershell script that can be run on a fresh windows installation and installs basic packages we use for penetration testing.
The script installs the Chocolatey package manager and uses it to install a bunch of essential programs.
The script also installs WSL2 and Kali-linux

##
```powershell
set-executionpolicy bypass; iex ((New-Object System.Net.WebClient).DownloadString('https://github.com/DKPT23/PT_fresh_start/raw/2file/script.ps1'));

```

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
