function before{
    Set-ExecutionPolicy Bypass
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    
    #use choco to install packages
    choco install -y virtualbox slack burp-suite-pro-edition forticlientvpn Notepadplusplus 7zip git adb go Firefox openssl microsoft-windows-terminal docker-desktop greenshot nmap GoogleChrome wireshark python javaruntime android-sdk powertoys
    choco install -y genymotion --ignore-checksums
    wsl --install
    
    
    $loginScriptPath = "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\wsl-install-kali.bat"
    
    Add-Content -Path $loginScriptPath -Value 'powershell _____ -File -Command after'
    Add-Content -Path $loginScriptPath -Value 'DEL "%~f0"'
    
    Restart-Computer 
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
    
    ./sdkmanager.bat "platform-tools" "platforms;android-28"
    ./sdkmanager.bat "system-images;android-28;google_apis;x86_64"
    for($i=0;$i -lt 30;$i++) { $response += "y`n"}; $response | sdkmanager --licenses
    
    Write-Output "no" | avdmanager create avd -n Android28 -k "system-images;android-28;google_apis;x86_64"
    
   write-output "./../emulator.exe -writable-system -no-snapshot -avd Android28"

}

