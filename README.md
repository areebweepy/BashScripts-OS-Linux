# 🖥️ Operating System Lab Scripts – Bash Utilities

This repository contains two Bash scripts created for the **Operating Systems Lab** to demonstrate shell scripting for real-world system utilities.

---

## 📁 Script 1: `fileorganizer.sh` – File Organizer

Organizes files in a target directory into categorized folders based on their extensions (e.g., Images, Documents, Music, Videos, etc.).

### ✅ Features

- Automatically sorts files into categories:
  - Images, Documents, TextFiles, Music, Videos, Archives, Scripts, Packages, Web, Executables
- Uses associative arrays for fast type lookup
- Handles multiple extensions per category
- Prints status of each file processed

### 🧪 Example Usage

```bash
./fileorganizer.sh /path/to/Downloads
```
> ⚠️ If no directory is provided, it shows usage instructions and exits.

## 📁 Script 2: sysinfo.sh – System Information Tool
Displays detailed information about the current Linux system including CPU, RAM, disk, OS, IP address, and more.

## ✅ Features
Shows:
Hostname
OS version
Kernel version
CPU model & core count
RAM & Disk size
IP address
System uptime
System serial number & version
Supports individual queries using command-line flags

##🧪 Example Usage
Full System Info:
```
./sysinfo.sh
```
With Flags:
```
./sysinfo.sh -c -m -d
```
## 🏁 Supported Flags
-h:	Hostname
-o:	Operating System
-k:	Kernel Version
-s:	Serial Number
-v:	System Version
-c:	CPU Info
-m:	RAM Info
-d:	Disk Size Info
-i:	IP Address
-u:	Uptime

## 🛠️ Requirements
Unix-like system (Linux, macOS)
bash shell
awk, sed, df, free, uptime, dmidecode (installed by default on most Linux distros)

## 📂 Project Structure
```
BashScripts-OS-Linux/
├──README.md             # Project documentation
├── fileorganizer.sh      # File sorting utility
└── sysinfo.sh            # System info tool with flags
```

## 👨‍💻 Author
**Mirza Areeb Baig**
