#!/bin/bash
echo "-----------------------"
echo "Plug in your phone now!"
echo "-----------------------"
sleep 5

echo "Retrieving IP address for device"

# Get the IP address of the device
ip_address=$(adb shell ip addr show wlan0 | grep "inet " | awk '{print $2}' | cut -d/ -f1)

# Check if the IP address was found
if [ -z "$ip_address" ]; then
  echo "Could not retrieve IP address for device"
else
  echo "Device IP address: $ip_address"

  # Set up ADB over WiFi
  echo "Setting up ADB over WiFi..."
  adb tcpip 55555
  
  # Connect to ADB Device
  adb connect $ip_address:55555

  sleep 2
  #   Add a pause here to display text that says "unplug phone"
  clear
  echo "----------------------"
  echo "Unplug your phone now!"
  echo "----------------------"
  sleep 5

  # Run scrcpy and connect to the device
  echo "Running scrcpy and connecting to the Android device..."
  scrcpy
fi

