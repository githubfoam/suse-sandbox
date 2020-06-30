#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script


echo "=============================bcc============================================================"

#https://github.com/iovisor/bcc/blob/master/INSTALL.md#opensuse---binary
zypper ref #Refreshing Repositories
zypper update -y #update all installed packages with newer version as far as possible

#Reboot is required to ensure that your system benefits from these updates.
zypper install -y bcc-tools bcc-examples git

#https://github.com/iovisor/bcc
git clone https://github.com/iovisor/bcc.git && cd bcc/examples/tracing
./bitehist.py
