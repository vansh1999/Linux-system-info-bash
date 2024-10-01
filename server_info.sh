#!/bin/bash

# Set the date and time
CURRENT_DATE=$(date +"%A, %B %d, %Y")
CURRENT_TIME=$(date +"%T")

# Get the current user
CURRENT_USER=$(whoami)

# Function to draw a line
draw_line() {
  echo "========================================"
}

# Server-like header with system greeting
clear
draw_line
echo " Welcome to the server, $CURRENT_USER"
echo " Date: $CURRENT_DATE"
echo " Time: $CURRENT_TIME"
draw_line

# System Information
echo -e "\n[SERVER SYSTEM INFORMATION]"
draw_line
echo "Hostname: $(hostname)"
echo "Operating System: $(cat /etc/os-release | grep '^PRETTY_NAME=' | cut -d= -f2 | tr -d \")"
echo "Kernel Version: $(uname -r)"
echo "Uptime: $(uptime -p)"
draw_line

# CPU Information
echo -e "\n[CPU INFORMATION]"
draw_line
lscpu | grep -E 'Model name|Architecture|CPU MHz|CPU(s)|Thread'
draw_line

# Memory Information
echo -e "\n[MEMORY INFORMATION]"
draw_line
free -h
draw_line

# Disk Information
echo -e "\n[DISK INFORMATION]"
draw_line
df -h | awk '{print $1 "\t" $2 "\t" $3 "\t" $4 "\t" $5 "\t" $6}'
draw_line

# Network Information
echo -e "\n[NETWORK INFORMATION]"
draw_line
ip addr show | grep inet | awk '{print $2}' | grep -v '127.0.0.1'
draw_line

# PCI and USB devices
echo -e "\n[PCI AND USB DEVICES]"
draw_line
echo "PCI Devices:"
lspci | grep -E 'VGA|Network'
echo -e "\nUSB Devices:"
lsusb
draw_line

# Ending note
echo -e "\nThank you, $CURRENT_USER, for using the server. Goodbye!"
draw_line

