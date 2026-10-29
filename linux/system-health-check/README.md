# System Health Check Script

A lightweight Bash script to monitor Linux system health resources such as disk space, memory, and active users.

## Features
* **Disk Monitoring:** Checks available and used space on the root (`/`) partition.
* **RAM Monitoring:** Displays total, used, and free memory in Megabytes.
* **User Auditing:** Counts and displays usernames currently logged into the system.

## How to use this script on your server

### 1. Download or clone the script
Make sure you have cloned this repository and navigate to the directory:
```bash
cd learning-tech/linux/system-health-check
```

### 2. Make the script executable
By default, Linux restricts execution permissions for new scripts. Grant permissions using:
```bash
chmod +x system-health-check.sh
```

### 3. Run the script
Execute the dashboard directly from your terminal:
```bash
./system-health-check.sh
```

