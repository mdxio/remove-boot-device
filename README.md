# remove-boot-device

Bash script and systemd service file to poweroff/unmount a boot partition that is on a removable device when the system boots.

`$ git clone https://github.com/mdxio/remove-boot-device && cd remove-boot-device` 

`# install -D -m755 bootdev-poweroff.sh /usr/bin/bootdev-poweroff.sh`

`$ systemctl enable bootdev-poweroff.service`
