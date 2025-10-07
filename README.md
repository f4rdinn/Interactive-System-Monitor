# Interactive-System-Monitor
Interactive System Monitor is a terminal-based Bash script that lets users view CPU, RAM, and Disk usage with colorful, easy-to-read output. Optional per-core CPU stats included. Lightweight, dependency-free, and perfect for quick system checks

A terminal-based, interactive system monitor script written in Bash.  
Users can choose which system information to view: CPU, RAM, or Disk usage. The script displays colored output for better readability and optional per-core CPU usage if available.

## Features
- Interactive menu for CPU, RAM, and Disk usage
- Color-coded terminal output
- Optional per-core CPU usage display
- Easy-to-read summary of system resources
- Lightweight and dependency-free (except `mpstat` for per-core CPU info)

## Dependencies
- bash (v4+)
- mpstat (optional, for per-core CPU usage)

## Installation
```bash
git clone https://github.com/YourUsername/interactive-system-monitor.git
cd interactive-system-monitor
chmod +x system-monitor.sh
