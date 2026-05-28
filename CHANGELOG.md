# Bluefin Custom - Changelog

## [2024-01] - Initial Custom Build

### Added
- **Productivity Apps**
  - Joplin Desktop - Note taking and organization
  - Signal Desktop - Secure messaging
  - FileZilla - FTP/SFTP client
  - OnlyOffice Desktop Editors - Full office suite
  - LibreOffice (Writer, Calc, Impress) - Alternative office suite
  - OBS Studio - Screen recording and streaming

- **Browsers**
  - Brave Browser (set as default) - Privacy-focused Chromium browser
  - Chromium - Open-source browser
  - Librewolf - Privacy-focused Firefox fork

- **System Tools**
  - SyncThing with GNOME extension - Decentralized file synchronization
  - Alacritty - GPU-accelerated terminal emulator
  - fish shell - User-friendly command line shell

- **GNOME Extensions**
  - Caffeine - Prevent automatic sleep/screensaver
  - GSConnect - KDE Connect implementation for GNOME
  - Dash to Dock - Customizable dock

### Changed
- Default browser changed from Firefox to Brave
- Default terminal changed from GNOME Terminal to Alacritty
- Default shell changed from bash to fish
- GSConnect firewall rules configured (ports 1716/1764 TCP/UDP)

### Removed
- Firefox browser completely removed from system
- Firefox flatpak configuration removed

### Technical Details
- COPR repositories added for:
  - `carlucio/onlyoffice` - OnlyOffice Desktop Editors
  - `henrybolton/librewolf` - Librewolf browser
  - `zeno/syncthing` - SyncThing and GNOME extension
- Firewall service created for GSConnect connectivity
- User setup hook for terminal and shell defaults
- System setup hook for GSConnect firewall rules

---

*This changelog tracks all custom modifications to the base Bluefin image.*
