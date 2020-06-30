#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script

echo "========================================================================================="
vagrant plugin install vagrant-libvirt #The vagrant-libvirt plugin is required when using KVM on Linux
vagrant plugin install vagrant-mutate #Convert vagrant boxes to work with different providers

# https://app.vagrantup.com/opensuse/boxes/Kubic.x86_64
# vagrant box add  "opensuse/Kubic.x86_64" --provider=libvirt
# vagrant up --provider=libvirt "vg-opensusekubicx8664"
# vagrant ssh -c "whoami && kubeadm init"

# # https://app.vagrantup.com/opensuse/boxes/Tumbleweed.x86_64
# vagrant box add  "opensuse/Tumbleweed.x86_64" --provider=libvirt
# vagrant up --provider=libvirt "vg-opensuse-01"
#
# # https://app.vagrantup.com/opensuse/boxes/MicroOS.x86_64
# vagrant box add  "opensuse/MicroOS.x86_64" --provider=libvirt
# vagrant up --provider=libvirt "vg-microosx8664"
#
# # https://github.com/chef/bento/tree/master/packer_templates/opensuse
vagrant box add  "bento/opensuse-leap-15.1" --provider=virtualbox
vagrant mutate "bento/opensuse-leap-15.1"  libvirt
vagrant up --provider=libvirt "vg-opensuseleap"


vagrant box list #veridy installed boxes
vagrant status #Check the status of the VMs to see that none of them have been created yet
vagrant status
virsh list --all #show all running KVM/libvirt VMs
