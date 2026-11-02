#!/bin/bash
# Symlinks everything into $HOME. Existing files are moved to *.bak.<timestamp>.
set -e
D=$(cd "$(dirname "$0")" && pwd); TS=$(date +%s)
link() { # src dst
  mkdir -p "$(dirname "$2")"
  [[ -L $2 ]] && rm "$2"
  [[ -e $2 ]] && mv "$2" "$2.bak.$TS" && echo "backup: $2.bak.$TS"
  ln -s "$1" "$2"
}
for f in "$D"/config/*; do link "$f" ~/.config/"$(basename "$f")"; done
for f in "$D"/home/.[!.]*; do link "$f" ~/"$(basename "$f")"; done
link "$D/bin/theme" ~/.local/bin/theme

mkdir -p ~/.local/share/fonts/dotfiles && cp "$D"/fonts/* ~/.local/share/fonts/dotfiles/
command -v fc-cache >/dev/null && fc-cache -f >/dev/null

"$D/bin/theme" "${1:-tokyo-night}"
echo "done. Open a new terminal. Change theme with: theme <name>"
