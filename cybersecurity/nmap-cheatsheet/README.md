# Nmap Scanner Cheatsheet

A practical guide and commands reference for network security auditing using Nmap on local environments.

## Essential Nmap Commands

### 1. Scan a specific port (e.g., our Podman container)
Check if a specific port is open, closed, or filtered:
```bash
nmap -p 8080 localhost
```

### 2. Scan a whole machine for top 1000 common ports
Find all open doors on a local or remote target server:
```bash
nmap localhost
```

### 3. Detect operating system and service versions (Aggressive scan)
Identify what software and OS version are running behind the open ports (requires sudo):
```bash
sudo nmap -A localhost
```

---

## Ethical Reminder
* **Authorized targets only:** Never run Nmap scans against servers, websites, or networks that you do not own or have explicit written permission to audit. Unauthorized scanning can be flagged as a cyberattack.
