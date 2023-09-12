# remove-boot-device

Bash script and systemd service file that powers off/unmounts a removable storage device containing the /boot partition of a Linux system.

`$ git clone https://github.com/mdxio/remove-boot-device && cd remove-boot-device` 

`# install -D -m755 bootdev-poweroff.sh /usr/bin/bootdev-poweroff.sh`

`$ systemctl enable bootdev-poweroff.service`
