#!/bin/bash

# Timestamp
echo "------ $(date) ------" >> ~/system_health.log

# CPU Usage
echo "CPU Load:" >> ~/system_health.log
top -bn1 | grep "Cpu(s)" >> ~/system_health.log

# Memory Usage
echo "Memory Usage:" >> ~/system_health.log
free -h >> ~/system_health.log

# Disk Usage
echo "Disk Usage:" >> ~/system_health.log
df -h / >> ~/system_health.log

echo "" >> ~/system_health.log

