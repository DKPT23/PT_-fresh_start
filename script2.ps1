[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))


choco feature enable -n allowGlobalConfirmation


choco install -y --ignore-checksums winget-cli gsudo  slack forticlientvpn Notepadplusplus 7zip git adb go Firefox openssl microsoft-windows-terminal  greenshot nmap GoogleChrome  python javaruntime powertoys fzf

winget install PortSwigger.BurpSuite.Professional 9PKR34TNCV07 --accept-package-agreements --accept-source-agreements
function install-extras{
  choco install -y ignore-checksums virtualbox genymotion wireshark docker-desktop
  } 


Install-PackageProvider -Name NuGet -Force
Install-Module PSReadLine -Force
Install-Module PSFzf -Force
import-module PSReadLine
import-module PSFzf
iwr https://github.com/yechielw/windows-deploy/raw/main/profile.ps1 -outfile $PROFILE

wsl --setdefault Kali-linux
kali config --default-user root
wsl apt update
wsl apt install -y kali-linux-headless seclists nuclei golang-go
wsl chsh -s /bin/zsh
wsl sed -i 's/#\[ "\$EUID"/\[ "\$EUID"/' ~/.zshrc

