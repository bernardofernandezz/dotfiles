# dotfiles

Minhas configurações pessoais de Linux: terminal, shell, editor, temas e fontes. Funcionam em qualquer ambiente (GNOME, KDE, Sway, Hyprland...).

## Instalação

```sh
git clone https://github.com/bernardofernandezz/dotfiles ~/dotfiles
~/dotfiles/install.sh [tema]   # padrão: tokyo-night
```

O `install.sh` cria symlinks de `config/*` em `~/.config/`, de `home/.*` em `~/` e copia as fontes para `~/.local/share/fonts`. Arquivos existentes são renomeados para `*.bak.<timestamp>`, nada é apagado.

## Temas

```sh
theme            # lista os temas
theme gruvbox    # troca o tema
```

São 22 temas, cada um com cores para alacritty, kitty, ghostty, foot, btop, neovim, vscode e outros, além de papéis de parede. O tema ativo fica em `~/.config/theme/current`. No GNOME/KDE/swww o comando também troca o papel de parede e o modo claro/escuro.

## Conteúdo

| Pasta | O quê |
|---|---|
| `config/` | alacritty, ghostty, kitty, foot, btop, tmux, nvim (LazyVim), git, lazygit, starship, mise, imv, xournalpp, fontconfig, bash |
| `home/` | `.bashrc`, `.XCompose` |
| `themes/` | temas e papéis de parede |
| `fonts/` | JetBrainsMono Nerd Font, iA Writer |
| `bin/theme` | troca de tema |
| `extras/hyprland/` | config do Hyprland (referência) |

## Dependências

alacritty, kitty ou ghostty · neovim · tmux · btop · starship · fzf · zoxide · eza · bat · mise · lazygit
