#/usr/bin/sh

notify-send "CPU usage: $(top -bn2 | grep '%Cpu' | tail -1 | awk '{print 100-$8}')%
RAM: $(grep 'MemTotal' /proc/meminfo | awk '{print $2/1000000.2f}')"
