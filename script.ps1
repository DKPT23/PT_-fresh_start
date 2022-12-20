#install choco
function before{
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

#use choco to install packages
choco install -y virtualbox slack burp-suite-pro-edition forticlientvpn Notepadplusplus 7zip git adb go Firefox openssl microsoft-windows-terminal docker-desktop greenshot nmap GoogleChrome wireshark python javaruntime android-sdk powertoys
choco install -y genymotion --ignore-checksums
wsl --install


$loginScriptPath = "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\wsl-install-kali.bat"

Add-Content -Path $loginScriptPath -Value 'powershell _____ -File -Command after'
Add-Content -Path $loginScriptPath -Value 'DEL "%~f0"'

}


function after{
#create logon script that will install kali 
wsl --set-default-version 2
wsl --install -d kali-linux
wsl --setdefault Kali-linux 
kali config --default-user root
wsl apt update
wsl apt install -y kali-linux-headless seclists nuclei
Set-Location C:Android\Sdk\tools\bin


}

#restart the computer to enable the kali installation

if ($before.ScriptName -eq $before.MyCommand.Path) {
    before
    restart-computer
  }
