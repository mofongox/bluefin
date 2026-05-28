#!/usr/bin/bash

source /usr/lib/ublue/setup-services/libsetup.sh

version-script flatpaks privileged 1 || exit 0

set -x

# Firefox configuration removed - user prefers Librewolf
