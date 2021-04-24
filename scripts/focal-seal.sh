if [ `id -u` -ne 0 ]; then
    echo "ERROR you are not in a root shell"
    exit 1
fi
set -v
apt-get update
apt-get dist-upgrade -y
apt-get purge open-vm-tools -y
apt clean
systemctl stop rsyslog
if [ -f /var/log/wtmp ]; then
    truncate -s0 /var/log/wtmp
fi
if [ -f /var/log/lastlog ]; then
    truncate -s0 /var/log/lastlog
fi
rm -rf /tmp/*
rm -rf /var/tmp/*
rm -f /etc/ssh/ssh_host_*
test -f /etc/ssh/ssh_host_dsa_key || dpkg-reconfigure openssh-server
truncate -s0 /etc/machine-id
rm /var/lib/dbus/machine-id
ln -s /etc/machine-id /var/lib/dbus/machine-id
cloud-init clean --logs
systemctl stop cloud-init
rm -rf /var/lib/cloud/*