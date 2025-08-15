# Ubuntu Firewall Configuration Project 
This project demonstrates how to configure and harden a firewall on Ubuntu using both UFW and iptables. It includes modular scripts, test cases, and documentation to support secure system setup and validation.
---
## Structure
firewall-config-project
config/ ├── iptables-rules.sh # Script for iptables firewall rules └── ufw-rules.conf # UFW rule configuration file

docs/ ├── architecture.md # System architecture and design notes ├── LICENSE # Project license (MIT) ├── READ.md # Alternate readme or notes └── README.md # Main documentation file

setup/ ├── dependencies.txt # Required packages and tools └── install.sh # Setup script for environment prep

tests/ ├── test-iptables.sh # Test cases for iptables rules └── test-ufw.sh # Test cases for UFW rules
---
### Setup Instructions
### Clone the Repository

```bash
git clone https://github.com/malik1456/firewall-config-project.git
cd firewall-config-project
```
```bash
## Install Dependencies
cd setup
sudo bash install.sh
```
```bash
## Apply firewall rules using ufw
sudo ufw reset
sudo ufw enable
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw allow 80/tcp
sudo ufw reload
```
```bash
## or use the config file
sudo ufw --dry-run < config/ufw-rules.conf
```
```bash
## iptables
sudo bash config/iptables-rules.sh
```
```bash
## Run Tests
bash tests/test-ufw.sh
bash tests/test-iptables.sh
```



