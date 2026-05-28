#!/usr/bin/bash
set -euo pipefail

version-script terminal-default user 1 || exit 0

# Set Alacritty as default terminal
mkdir -p ~/.config/xdg-terminal-exec
cat > ~/.config/xdg-terminal-exec/EXEC << 'EOF'
#!/usr/bin/env sh
exec alacritty "$@"
EOF
chmod +x ~/.config/xdg-terminal-exec/EXEC

# Set fish as default shell for the user
chsh -s /usr/bin/fish 2>/dev/null || true
