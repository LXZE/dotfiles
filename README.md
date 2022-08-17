# LXZE's dotfiles

This repo contains my dotfiles and scripts to deploy dotfiles into home directory.

zsh
==
Make sure that zsh, [oh-my-zsh](https://ohmyz.sh/#install) and plugins are installed.

Required tools
- [pyenv](https://github.com/pyenv/pyenv#getting-pyenv)
- [zoxide](https://github.com/ajeetdsouza/zoxide#step-1-install-zoxide)

required plugins & themes
- [zsh-nvm](https://github.com/lukechilds/zsh-nvm)
	```sh
	git clone https://github.com/lukechilds/zsh-nvm \
	$ZSH/custom/plugins/zsh-nvm
	```
- [fast-syntax-highlighting](fast-syntax-highlighting)
	```sh
	git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git \
	$ZSH/custom/plugins/fast-syntax-highlighting
	```
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
	```sh
	git clone https://github.com/zsh-users/zsh-autosuggestions \
	$ZSH/custom/plugins/zsh-autosuggestions
	```
- [powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh)
	```sh
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
	$ZSH/custom/themes/powerlevel10k
	```


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

Eslint
==
TBD
