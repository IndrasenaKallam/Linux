# cleaning the log files
#!/bin/bash
log_dir = /var/log

cd $log_dir
cat /dev/null >> messages
cat /dev/null1 >> wtmp

echo "logs cleaned"
