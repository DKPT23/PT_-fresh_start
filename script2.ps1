wsl --set-default-version 2
wsl --install -d kali-linux
wsl --setdefault Kali-linux 
kali config --default-user root
wsl apt update
wsl apt install -y kali-linux-headless seclists nuclei golang-go tmux neovim
wsl chsh /bin/zsh



C:\Android\android-sdk\tools\bin\sdkmanager.bat "platform-tools" "platforms;android-28"
C:\Android\android-sdk\tools\bin\sdkmanager.bat "system-images;android-28;google_apis;x86_64"
for($i=0;$i -lt 30;$i++) { $response += "y`n"}; $response | C:\Android\android-sdk\tools\bin\sdkmanager.bat --licenses

Write-Output "no" | C:\Android\android-sdk\tools\bin\avdmanager.bat create avd -n Android28 -k "system-images;android-28;google_apis;x86_64"

write-output "./../emulator.exe -writable-system -no-snapshot -avd Android28"


