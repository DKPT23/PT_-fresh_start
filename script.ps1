#install choco
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

#use choco to install packages
choco install -y genymotion --ignore-checksums virtualbox slack burp-suite-pro-edition forticlientvpn Notepadplusplus 7zip git adb go Firefox openssl microsoft-windows-terminal docker-desktop greenshot nmap GoogleChrome

#install wsl2
wsl --install

#create logon script that will install kali 
$loginScriptPath = "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\wsl-install-kali.bat"
Add-Content -Path $loginScriptPath -Value 'wsl --set-default-version 2'
Add-Content -Path $loginScriptPath -Value 'wsl --install -d kali-linux'
Add-Content -Path $loginScriptPath -Value 'wsl --setdefault Kali-linux'
Add-Content -Path $loginScriptPath -Value 'kali config --default-user root'
Add-Content -Path $loginScriptPath -Value 'wsl apt update'
Add-Content -Path $loginScriptPath -Value 'wsl apt install -y kali-linux-headless seclists'
Add-Content -Path $loginScriptPath -Value 'DEL "%~f0"'

#restart the computer to enable the kali installation
restart-computer
