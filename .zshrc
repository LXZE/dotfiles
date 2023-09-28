# instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# nvm
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
export NVM_LAZY_LOAD_EXTRA_COMMANDS=('pnpm')

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git ruby rails zsh-autosuggestions)
plugins=(
	zsh-nvm
	git
	docker
	zsh-autosuggestions
	fast-syntax-highlighting
	# k
	asdf
	# kubectl
)

source $ZSH/oh-my-zsh.sh

# default PATH
# export PATH="/usr/local/bin:/usr/local/sbin:/opt/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

# mac
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# rust
export PATH="$PATH:$HOME/.cargo/bin"

# rust app (zoxide)
eval "$(zoxide init zsh)"

[ -s "/Users/azi1mov/.bun/_bun" ] && source "/Users/azi1mov/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# zsh
alias vz="vi ~/.zshrc"
alias esh="exec $SHELL"

# python
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
# fix brew after pyenv
# alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'

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
alias dufile='du -d 0 -h $(ls -A) | sort -rh | head -n 20'

# docker & k8s
alias d="docker"
alias k="kubectl"

# K8s completion
# if [ -f /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi
# complete -F __start_kubectl k

# fuck
# alias fuck='$(thefuck $(fc -ln -1))'
# alias FUCK='fuck'

export EDITOR="vi"

# pnpm
alias p="pnpm"
export PNPM_HOME="/Users/azi1mov/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# remove duplicated paths
typeset -U path

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

