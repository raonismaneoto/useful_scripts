#!/bin/bash

bash generate_ssh_key_pair tmp

cat tmp.pub >> ~/.ssh/authorized_keys

sudo ufw allow ssh

ed /etc/ssh_config <<!
/PasswordAuthentication yes/
d
a
PasswordAuthentication yes
.
w
!

ed /etc/sshd_config <<!
/PasswordAuthentication yes/
d
a
PasswordAuthentication yes
.
w
!

exit 0
