# scrcpy-over-wifi
A simple bash script to wirelessly control your Android Phone without any root or modifications needed! This simple bash script uses the software scrcpy over a wifi connection with ADB.

This script should be run when your device is connected over usb with usb debugging enabled.

[This article](https://itsfoss.com/install-adb-fastboot-linux/) from itsfoss.com show you how to install adb + enable usb debugging if you haven't yet or need to know how 
# Requirements
  1. adb 
     ``sudo apt install adb -y``
     or follow [this guide](https://itsfoss.com/install-adb-fastboot-linux/)
  2. scrcpy [Official Instructions](https://github.com/Genymobile/scrcpy/blob/master/doc/linux.md) If you don't want to build it, you can download it from the snap store using ``snap install scrcpy``
      Official repo for scrcpy: [scrcpy](https://github.com/Genymobile/scrcpy)

# Usage

## Linux
```bash scrcpy-ow.sh``` or ```./scrcpy-ow.sh```
## Windows
```Currently a WIP, may work with WSL but I haven't tested it.```


After running the script, pay attention for the message 

  **"Unplug your phone now!"**

# Troubleshooting
## 1. Are both of your devices connected to the same Wi-Fi Network?
## 2. Does your computer recognize your Android device 
 run  ``adb devices`` and check the output. If successful it should show you an ip adrress or serial number first, then the word "device"
## 3  

## To-Do
- [ ] powershell version for Windows OS
