#!/usr/bin/bash

source /usr/lib/ublue/setup-services/libsetup.sh

version-script flatpaks privileged 1 || exit 0

set -x

# Install essential Flatpak applications that are not available in Fedora 44 repos
flatpak install -y flathub org.librewolf.LibreWolf
flatpak install -y flathub org.onlyoffice.desktopeditors
flatpak install -y flathub com.brave.Browser

# Firefox configuration removed - user prefers Librewolf (installed via Flatpak above)
