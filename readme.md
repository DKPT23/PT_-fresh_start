This is a simple powershell script that can be run on a fresh windows installation and installs basic packages we use for penetration testing.
The script installs the Chocolatey package manager and uses it to install a bunch of essential programs.
The script also installs WSL2 and Kali-linux

##
```powershell
set-executionpolicy bypass; iex ((New-Object System.Net.WebClient).DownloadString('https://github.com/DKPT23/PT_fresh_start/raw/2file/script.ps1'));

```


