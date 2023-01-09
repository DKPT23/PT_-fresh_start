Set-ExecutionPolicy Bypass
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

#use choco to install packages
#choco install -y virtualbox slack burp-suite-pro-edition forticlientvpn Notepadplusplus 7zip git adb go Firefox openssl microsoft-windows-terminal docker-desktop greenshot nmap GoogleChrome wireshark python javaruntime android-sdk powertoys obsidian
#choco install -y genymotion --ignore-checksums
#wsl --install
choco install -y android-sdk docker-desktop
choco install -y --exit-when-reboot-detected wsl2 --params "/Version:2 /Retry:true"
choco install wsl-kalilinux 


C:\Android\android-sdk\tools\bin\sdkmanager.bat "platform-tools" "platforms;android-28"
C:\Android\android-sdk\tools\bin\sdkmanager.bat "system-images;android-28;google_apis;x86_64"
for($i=0;$i -lt 30;$i++) { $response += "y`n"}; $response | C:\Android\android-sdk\tools\bin\sdkmanager.bat --licenses
Write-Output "no" | C:\Android\android-sdk\tools\bin\avdmanager.bat create avd -n Android28 -k "system-images;android-28;google_apis;x86_64"



$loginScriptPath = "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\wsl-install-kali.bat"
Add-Content -Path $loginScriptPath -Value 'powershell  iex ((New-Object System.Net.WebClient).DownloadString("https://github.com/DKPT23/PT_fresh_start/raw/choco/script2.ps1"));'
Add-Content -Path $loginScriptPath -Value 'DEL "%~f0"'

#Restart-Computer 



