#!/usr/bin/env bash

set -euo pipefail

version-script gsconnect-firewall system 1 || exit 0

# Enable GSConnect firewall service
echo "Enabling GSConnect firewall ports..."
firewall-cmd --permanent --add-service=gsconnect || true
firewall-cmd --reload || true

echo "GSConnect firewall configuration complete"
