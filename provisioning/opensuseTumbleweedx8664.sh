#!/bin/bash
set -eox pipefail #safety for script

echo "===================================================================================="
                          hostnamectl status
echo "===================================================================================="
echo "         \   ^__^                                                                  "
echo "          \  (oo)\_______                                                          "
echo "             (__)\       )\/\                                                      "
echo "                 ||----w |                                                         "
echo "                 ||     ||                                                         "
echo "=============================ansible ============================================================="
# hostnamectl set-hostname vg-arch-01
# echo "192.168.18.81 vg-arch-01.local vg-arch-01" |sudo tee -a /etc/hosts
# cat /etc/hosts
# echo "name: nameserver, ip: 8.8.8.8 " |sudo tee -a /etc/resolv.conf
# cat /etc/resolv.conf
# pacman -Syu --noconfirm #Update and upgrade  all packages on the system
# pacman -Si ansible #Show extensive info about a package
# sudo pacman -Syu --noconfirm ansible #Install (and update package list)
# # pacman -Ql ansible #List files installed by ansible package
# ansible --version
# cat <<EOF | sudo tee ansible-local.yml
# ---
#   - name: "Run ansible locally localhost"
#     hosts: localhost
#     connection: local
#     tasks:
#
#     - name: "run ls -lrt command"
#       shell: "ls -lrt"
#       register: "output"
#
#     - debug: var=output.stdout_lines
# EOF
# pwd && ls -lai
# ansible-playbook ansible-local.yml
echo "=========================================================================================="
