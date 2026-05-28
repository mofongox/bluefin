#!/usr/bin/bash

source /usr/lib/ublue/setup-services/libsetup.sh

version-script flatpaks privileged 1 || exit 0

set -x

# Install essential Flatpak applications
# Browsers (not in Fedora or preferred versions)
flatpak install -y flathub org.librewolf.LibreWolf
flatpak install -y flathub com.brave.Browser

# Office Suite (OnlyOffice not available in Fedora 44 COPR)
flatpak install -y flathub org.onlyoffice.desktopeditors

# Note-taking (Joplin COPR incompatible with Fedora 44)
flatpak install -y flathub org.joplinapp.Joplin

# Terminal (Alacritty COPR incompatible with Fedora 44)
flatpak install -y flathub org.alacritty.Alacritty

# Firefox configuration removed - user prefers Librewolf (installed via Flatpak above)
