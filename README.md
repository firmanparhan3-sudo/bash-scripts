# Bash Scripts Portfolio

Collection of Bash scripting projects created while learning Linux System Administration and Cyber Security fundamentals.

## About Me

My name is M. Firman Parhanul Hakim.

I am a vocational high school graduate (TKJ) with an interest in Linux, networking, automation, and cyber security.

This repository contains Bash scripts that I created as part of my learning journey.

---

## Project Structure

```text
bash_scripts/
├── backup/
│   └── backup.sh
├── networking/
│   ├── network_info.sh
│   ├── ping-sweep.sh
│   └── port_count.sh
├── system/
│   ├── info_sistem.sh
│   └── log_analyzer.sh
└── utilities/
    ├── cyber_menu.sh
    └── host_count.sh
```

---

## Scripts

### backup.sh

Creates compressed backups of directories using tar.

Features:

* Directory validation
* Timestamp-based backup names
* Automatic compression
* Backup size information

Example:

```bash
./backup.sh test.data
```

---

### log_analyzer.sh

Analyzes log files and generates a summary report.

Features:

* Counts INFO messages
* Counts WARNING messages
* Counts ERROR messages
* Finds the most common INFO message
* Finds the most common ERROR message

Example:

```bash
./log_analyzer.sh sample.log
```

---

### network_info.sh

Displays network information such as:

* IP Address
* Gateway
* DNS Server

---

### ping-sweep.sh

Scans hosts on a local network using ping.

---

### port_count.sh

Displays open ports found in scan results and counts them.

---

### host_count.sh

Counts discovered hosts from network scan results.

---

### info_sistem.sh

Displays system information including:

* Hostname
* Current User
* Kernel Version
* IP Address
* DNS Server
* Memory Usage
* Disk Usage

---

### cyber_menu.sh

Simple Bash menu for practicing Linux scripting and user interaction.

---

## Skills Used

* Bash Scripting
* Linux Command Line
* grep
* awk
* sort
* uniq
* wc
* find
* tar
* Git
* GitHub
* Networking Fundamentals

---

## Future Projects

* restore.sh
* user_audit.sh
* service_monitor.sh
* network_scanner.sh

---

## Author

M. Firman Parhanul Hakim

GitHub: firmanparhan3-sudo
