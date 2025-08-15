# Ubuntu Firewall Configuration Project 
This project demonstrates how to configure and harden a firewall on Ubuntu using both UFW and iptables. It includes modular scripts, test cases, and documentation to support secure system setup and validation.
---
## Structure
![Project Structure}(screenshots/File_structure.png)
---
### Setup Instructions
### Clone the Repository

```bash
git clone https://github.com/malik1456/firewall-config-project.git
cd firewall-config-project
```
## Install Dependencies
```bash
cd setup
sudo bash install.sh
```
## Apply firewall rules using ufw or use Config file below
```bash
sudo ufw reset
sudo ufw enable
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw allow 80/tcp
sudo ufw reload
```
## The config file
```bash
sudo ufw --dry-run < config/ufw-rules.conf
```
## iptables
```bash
sudo bash config/iptables-rules.sh
```
## Run Tests
```bash
bash tests/test-ufw.sh
bash tests/test-iptables.sh
```
## Documentation
see docs/architecture.md for system design and raitionale.Licensing information in docs/LICENCSE
## CONTACT
Malik Stockton
Linkedin:www.linkedin.com/in/malik-stockton-a6777b1aa
Email: Malikstockton@gmail.com



