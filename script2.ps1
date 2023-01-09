#cmd wsl --set-default-version 2
#cmd wsl --install -d kali-linux
cmd wsl --setdefault Kali-linux 
cmd kali config --default-user root
cmd wsl DEBIAN_FRONTEND=noninteractive apt update
cmd wsl DEBIAN_FRONTEND=noninteractive apt install -y kali-linux-headless seclists nuclei golang-go tmux neovim zsh
cmd wsl chsh /bin/zsh



C:\Android\android-sdk\tools\bin\sdkmanager.bat "platform-tools" "platforms;android-28"
C:\Android\android-sdk\tools\bin\sdkmanager.bat "system-images;android-28;google_apis;x86_64"
for($i=0;$i -lt 30;$i++) { $response += "y`n"}; $response | C:\Android\android-sdk\tools\bin\sdkmanager.bat --licenses

Write-Output "no" | C:\Android\android-sdk\tools\bin\avdmanager.bat create avd -n Android28 -k "system-images;android-28;google_apis;x86_64"

write-output "./../emulator.exe -writable-system -no-snapshot -avd Android28"


