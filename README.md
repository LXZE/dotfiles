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
- [asdf](https://asdf-vm.com/guide/getting-started.html)
- [nvm](https://github.com/nvm-sh/nvm#install--update-script)
- [pyenv](https://github.com/pyenv/pyenv#getting-pyenv)
- [zoxide](https://github.com/ajeetdsouza/zoxide#step-1-install-zoxide)

Setup
==
- Apply dotfiles to home directory
```sh
chezmoi init --apply --verbose https://github.com/LXZE/dotfiles.git
chezmoi apply
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
- lukechilds/zsh-nvm
- asdf


tmux
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
