Set-ExecutionPolicy Bypass
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

#use choco to install packages
#choco install -y virtualbox slack burp-suite-pro-edition forticlientvpn Notepadplusplus 7zip git adb go Firefox openssl microsoft-windows-terminal docker-desktop greenshot nmap GoogleChrome wireshark python javaruntime android-sdk powertoys obsidian
#choco install -y genymotion --ignore-checksums
#wsl --install
choco install wsl2 --params "/Version:2 /Retry:true"
choco install wsl-kalilinux 

$loginScriptPath = "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\wsl-install-kali.bat"

Add-Content -Path $loginScriptPath -Value 'powershell  iex ((New-Object System.Net.WebClient).DownloadString("https://github.com/DKPT23/PT_fresh_start/raw/choco/script2.ps1"));'
Add-Content -Path $loginScriptPath -Value 'DEL "%~f0"'

#Restart-Computer 



