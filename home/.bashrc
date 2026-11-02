# Interactive only
[[ $- != *i* ]] && return

# Env (was omarchy default/bash/envs)
export EDITOR="${EDITOR:-nvim}" SUDO_EDITOR="${EDITOR:-nvim}"
export BAT_THEME=ansi MANROFFOPT="-c" MANPAGER="sh -c 'col -bx | bat -l man -p'"
case ":$PATH:" in *":$HOME/.local/bin:"*) ;; *) export PATH="$PATH:$HOME/.local/bin" ;; esac

B=~/.config/bash
source $B/shell; source $B/aliases; source $B/functions; source $B/init
bind -f $B/inputrc

# Personal
[[ -d $HOME/.local/share/pnpm ]] && export PNPM_HOME="$HOME/.local/share/pnpm" && PATH="$PNPM_HOME/bin:$PATH"
[[ -d $HOME/.opencode/bin ]] && PATH="$HOME/.opencode/bin:$PATH"
[[ -r $HOME/.cargo/env ]] && . "$HOME/.cargo/env"
