This is a simple powershell script that can be ran on a fresh windows installation and installs basic packages we use for penetration testing.
The script installs Chocolity package manager and uses it to install a bunch of essential programs
The script also installs WSL2 and Kali-linux



## common issues

### issue 1: 
E: Sub-process /usr/bin/dpkg returned an error code (1)
### solution:
```bash
cd /tmp
apt -y download libcrypt1
apt -y install ./libcrypt*
apt -y --fix-broken install
```
