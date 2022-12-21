wsl --set-default-version 2
wsl --install -d kali-linux
wsl --setdefault Kali-linux 
kali config --default-user root
wsl apt update
wsl apt install -y kali-linux-headless seclists nuclei golang-go tmux neovim
wsl chsh /bin/zsh

Set-Location C:Android\Sdk\tools\bin

./sdkmanager.bat "platform-tools" "platforms;android-28"
./sdkmanager.bat "system-images;android-28;google_apis;x86_64"
for($i=0;$i -lt 30;$i++) { $response += "y`n"}; $response | sdkmanager --licenses

Write-Output "no" | avdmanager create avd -n Android28 -k "system-images;android-28;google_apis;x86_64"

write-output "./../emulator.exe -writable-system -no-snapshot -avd Android28"


