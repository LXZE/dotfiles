# instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# nvm lazy loader
export NVM_LAZY_LOAD=true

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="xxf"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git ruby rails zsh-autosuggestions)
plugins=(
	# vi-mode
	zsh-nvm
	git
	docker
	# ruby
	zsh-autosuggestions
	fast-syntax-highlighting
	# k
	# asdf
	# kubectl
)

source $ZSH/oh-my-zsh.sh
# source $ZSH_CUSTOM/plugins/enhancd/init.sh

# User configuration
export EDITOR='vim'

# default PATH
# export PATH="/usr/local/bin:/usr/local/sbin:/opt/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

# rust
export path="$path:$home/.cargo/bin"

# rust app (zoxide)
eval "$(zoxide init zsh)"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# custom alias
[ -f ~/.zsh_custom ] && source ~/.zsh_custom

# zsh
alias vz="vi ~/.zshrc"
alias esh="exec $SHELL"

# python
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init --path)"

# git
alias ga="git add --a"
alias gs="git status"
alias gcm="git commit -m"
alias gpush='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gpull='git pull origin $(git rev-parse --abbrev-ref HEAD)'
alias gitloggraph='git log --graph --abbrev-commit --decorate --date=relative --all'

# bin
alias fucking="sudo"
alias tracert="traceroute"
alias v='vim -u NONE'
alias ll='ls -al'
alias lhalt='ls -haltr'
alias dufile='du -d 0 -h {.,}* | sort -rh | head -n 20'

# docker & k8s
alias d="docker"
alias k="kubectl"

# yarn
# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# updateYarn() {
# 	curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
# }

# fuck
# alias fuck='$(thefuck $(fc -ln -1))'
# alias FUCK='fuck'

export VISUAL=vi
export EDITOR="$VISUAL"

# NVM (disabled, loaded by zsh-nvm instead)
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# K8s
# if [ -f /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi
# complete -F __start_kubectl k

# tabtab source for yo package
# uninstall by removing these lines or running `tabtab uninstall yo`
# [[ -f /usr/local/lib/node_modules/yo/node_modules/tabtab/.completions/yo.zsh ]] && . /usr/local/lib/node_modules/yo/node_modules/tabtab/.completions/yo.zsh

typeset -U path

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
