dnf clean all
> /etc/machine-id
rm -f /etc/ssh/ssh_host
rm -rf /root/.ssh/
rm -f /root/anaconda-ks.cfg
rm -f /root/.bash_history
unset HISTFILE
rm -f /var/log/boot.log
rm -f /var/log/cron
rm -f /var/log/dmesg
rm -f /var/log/grubby
rm -f /var/log/lastlog
rm -f /var/log/maillog
rm -f /var/log/messages
rm -f /var/log/secure
rm -f /var/log/spooler
rm -f /var/log/tallylog
rm -f /var/log/wpa_supplicant.log
rm -f /var/log/wtmp
rm -f /var/log/yum.log
rm -f /var/log/audit/audit.log
rm -f /var/log/tuned/tuned.log
