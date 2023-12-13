#!/bin/bash

# SYSTEM INFORMATION
echo "SYSTEM"
echo "Hostname: $(hostname)"
echo "Manufacturer: $(sudo dmidecode -s system-manufacturer)"
echo "Product name: $(sudo dmidecode -s system-product-name)"
echo "Version: $(sudo dmidecode -s system-version)"
echo "Serial number: $(sudo dmidecode -s system-serial-number)"
echo "Operating system: $(lsb_release -ds)"
echo "Kernel: $(uname -r)"
echo "Architecture: $(arch)"

# PRIVATE NETWORK INFORMATION
echo -e "\nPRIVATE NETWORK INFORMATION"
echo "lo: $(ip addr show lo | awk '/inet / {print $2}')"
echo "lo: $(ip addr show lo | awk '/inet6 / {print $2}')"
echo "ensp03: $(ip addr show enp0s3 | awk '/inet / {print $2}')"
echo "ensp03: $(ip addr show enp0s3 | awk '/inet6 / {print $2}')"

# PUBLIC IP ADDRESS
echo -e "\nPUBLIC IP ADDR"
public_ip=$(curl -s ifconfig.me)
echo "Public IP: $public_ip"

# DNS
echo -e "\nDNS"
nameserver=$(cat /etc/resolv.conf | grep 'nameserver' | awk '{print $2}')
echo "nameserver $nameserver"

# CPU USAGE
echo -e "\nCPU USAGE"
model_name=$(grep "model name" /proc/cpuinfo | uniq | awk -F ':' '{print $2}' | xargs)
echo "Model name: $model_name"

# Fréquence du CPU
cpu_frequency=$(lscpu | grep "CPU MHz" | awk '{print $3}')
echo "CPU frequency: $cpu_frequency MHz"

# Nombre de cœurs
echo "CPU cores: $(grep "^processor" /proc/cpuinfo | wc -l)"

# DISK SPACE INFO
echo -e "\nDISK SPACE INFO"
echo "Free space /home: $(df -h /home | awk 'NR==2 {print $4}')"
echo "Free space /tmp: $(df -h /tmp | awk 'NR==2 {print $4}')"
