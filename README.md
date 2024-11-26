# LXZE's dotfiles

This repo contains my dotfiles to use with chezmoi.

Requirement
==
Shell and required tools
- ZSH
- [Chezmoi](https://www.chezmoi.io/install/#one-line-binary-install)
- [Zim](https://www.chezmoi.io/install/#one-line-binary-install)
```sh
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
```

Other binaries in used
- [zoxide](https://github.com/ajeetdsouza/zoxide#step-1-install-zoxide) For quick dir changing
- [mise](https://mise.jdx.dev/getting-started.html#_1-install-mise-cli)  Runtime Version Manager for several languages (rb, erl, ex, js)

Setup
==
- Apply dotfiles to home directory
```sh
chezmoi init --apply --verbose https://github.com/LXZE/dotfiles.git
```
- install all the plugins
```sh
zimfw install
```

zsh
==
All of the plugins are now managed by zimfw.
Here is the list of additional plugins I used.
- romkatv/powerlevel10k

tmux (Might move to zellij instead)
==
PS. for version prior to 2.9
edit line `set -g mode-style fg=white`
to `set-window-option -g window-status-current-fg white`

To check tmux version, use
```sh
$ tmux -V
```

vimrc
==
[But Our Princess is in Another Castle!](https://github.com/LXZE/.vimrc)
