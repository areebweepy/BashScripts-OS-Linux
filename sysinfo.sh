#!/bin/bash

get_hostname() {
  hostname=$(hostname)
  echo "Hostname          : $hostname"
}

get_ram() {
  ram=$(free -h | grep Mem: | awk '{print $2}')
  echo "RAM               : $ram"
}

get_disk() {
  disk=$(df -h --total | grep total | awk '{print $2}')
  echo "Disk Size         : $disk"
}

get_cpu() {
  cpu=$(lscpu | grep "Model name" | awk -F: '{print $2}' | sed 's/^[ \t]*//')
  cpu_cores=$(nproc)
  echo "CPU Model         : $cpu"
  echo "CPU Cores         : $cpu_cores"
}

get_os() {
  os=$(cat /etc/os-release | grep PRETTY_NAME | awk -F= '{print $2}' | tr -d '"')
  echo "Operating System  : $os"
}

get_kernel() {
  kernel=$(uname -r)
  echo "Kernel Version    : $kernel"
}

get_uptime() {
  uptime=$(uptime -p)
  echo "Uptime            : $uptime"
}

get_ipaddress() {
  ip_address=$(hostname -I | awk '{print $1}')
  echo "IP Address        : $ip_address"
}

get_serial() {
  serial=$(sudo dmidecode -s system-serial-number)
  echo "Serial Number     : $serial"
}

get_system_version() {
  system_version=$(sudo dmidecode -s system-version)
  echo "System Version    : $system_version"
}

if [ $# -eq 0 ]
then
  get_hostname
  get_os 
  get_kernel
  get_serial
  get_system_version
  get_cpu
  get_ram
  get_disk
  get_ipaddress
  get_uptime 
else
while getopts "cmdoikuhsv" opt;
do
  case ${opt} in
   c)
   get_cpu
;;
   m)
   get_ram
;;
   d)
   get_disk
;;
   o)
   get_os
;;
   i)
   get_ipaddress
;;
   k)
   get_kernel
;;
   u)
   get_uptime
;;
   h)
   get_hostname
;;
   s)
   get_serial
;;
   v)
   get_system_version
;;
   *)
   echo "InValid Flag used."
;;
esac
done
fi
