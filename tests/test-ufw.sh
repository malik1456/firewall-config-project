#!/bin/bash
echo "Testing UFW rules.."
sudo ufw status verbose
sudo ufw show added | grep "DENY IN"
