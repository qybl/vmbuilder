#cloud-config
users:
  - name: vmbuilder
    passwd: $1$KLJSFLKA$.7un4gQ2c8VJMVu2OgyHe/
    lock_passwd: false
    groups: sudo
    shell: /bin/bash
write_files:
  - path: /etc/vmbuilder_init
    content: |
      vmbuilder was here
  - path: /etc/systemd/timesyncd.conf
    content: |
      [Time]
      NTP=0.de.pool.ntp.org 1.de.pool.ntp.org 2.de.pool.ntp.org 3.de.pool.ntp.org
package_upgrade: true
packages:
  - haveged
  - tmux
timezone: Europe/Berlin
power_state:
  delay: "+0"
  mode: poweroff
  message: Good bye
  timeout: 1
  condition: true
final_message: "Done."
