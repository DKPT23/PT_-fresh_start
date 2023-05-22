Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -FeatureName Containers-DisposableClientVM -All
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

choco feature enable -n allowGlobalConfirmation


$loginScriptPath = "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\wsl-install-kali.bat"

Add-Content -Path $loginScriptPath -Value 'powershell  iex ((New-Object System.Net.WebClient).DownloadString("https://github.com/DKPT23/PT_fresh_start/raw/2file/script2.ps1"));'
Add-Content -Path $loginScriptPath -Value 'DEL "%~f0"'

Restart-Computer 



