#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script


echo "=============================bcc============================================================"

#https://github.com/iovisor/bcc/blob/master/INSTALL.md#opensuse---binary
zypper ref #Refreshing Repositories
zypper update #update all installed packages with newer version as far as possible
#zypper -n bcc-tools bcc-examples #use --non-interactive mode, in shortcut -n
zypper install -y --quiet bcc-tools bcc-examples git

#https://github.com/iovisor/bcc
git clone https://github.com/iovisor/bcc.git && cd examples/tracing
./bitehist.py
