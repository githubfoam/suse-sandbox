#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script


echo "=============================bcc============================================================"

#https://github.com/iovisor/bcc/blob/master/INSTALL.md#opensuse---binary
zypper ref
#zypper -n bcc-tools bcc-examples #use --non-interactive mode, in shortcut -n
zypper install -y bcc-tools bcc-examples

#https://github.com/iovisor/bcc
git clone https://github.com/iovisor/bcc.git && cd examples/tracing
./bitehist.py
