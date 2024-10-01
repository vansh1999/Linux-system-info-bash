## Introduction

Server-styled Bash script that outputs server, disk, and user information

## Breakdown of the script:

Date and User Greeting: The script uses whoami to greet the current user, and date to output the current date and time in a server-like format.

System Information: Outputs the hostname, operating system, kernel version, and uptime.

CPU Information: Uses lscpu to display key CPU specs such as model, architecture, and number of CPUs/threads.

Memory Information: Uses free -h to show memory usage in human-readable format.

Disk Information: Uses df -h to show disk usage and available space.

Network Information: Displays the active network interfaces and their IP addresses.

PCI/USB Devices: Outputs a list of PCI devices (like GPU, network cards) and connected USB devices.

## How to run

1. Clone the project using git clone command or copy the bash script server_info.sh on your local

2. Make it executable
   
``` $ chmod 770 server_info.sh ```

4. Check the file permissions
   
``` $ ls -la server_info.sh  ```

6. Run the script

``` ./server_info.sh ```

## Output 

![Screenshot 2024-10-01 at 7 52 28 AM](https://github.com/user-attachments/assets/9610fac9-4e5c-4a16-ac7e-c317b3e787ce)


