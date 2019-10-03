# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="xxf"

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
	git
	docker
	# ruby
	zsh-autosuggestions
	fast-syntax-highlighting
	# k
	vi-mode
)

source $ZSH/oh-my-zsh.sh
source $ZSH_CUSTOM/plugins/enhancd/init.sh

# User configuration
export EDITOR='vim'

export PYTHONPATH="/opt/local/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages"

export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"

export PATH="/usr/local/bin:/usr/local/sbin:/opt/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/usr/local/opt/openvpn/sbin:$PATH"
export PATH=$PATH:/usr/local/go/bin:$HOME/.composer/vendor/bin
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH=$PATH:$HOME/dev/flutter/bin
export PATH=$PATH:$HOME/.rvm/bin
export PATH=$PATH:$HOME/.cargo/bin
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

alias ga="git add --a"
alias gs="git status"
alias gcm="git commit -m"
alias gpush='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gpull='git pull origin $(git rev-parse --abbrev-ref HEAD)'

alias fucking="sudo"
alias zshconfig="vi ~/.zshrc"
alias tracert="traceroute"
alias fuck='$(thefuck $(fc -ln -1))'
alias FUCK='fuck'
alias v='vim -u NONE'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC' 
alias ll='ls -al'
alias lhalt='ls -haltr'
alias dufile='du -d 0 -h * | sort -rh | head -n 20'

alias op1='osascript -e "tell application \"Tunnelblick\"" -e "connect \"client\"" -e "end tell"'
alias op2='osascript -e "tell application \"Tunnelblick\"" -e "disconnect \"client\"" -e "end tell"'
alias startVPN="sshVM \"sudo service openvpnas start\" && op1"
alias stopVPN="sshVM \"sudo service openvpnas stop\" && op2"

alias operaDev='/Applications/Opera.app/Contents/MacOS/Opera --remote-debugging-port=9222'
alias todo='subl ~/todo.list'

alias mongodb='mongod --dbpath ~/data/mongodb'
alias gitloggraph='git log --graph --abbrev-commit --decorate --date=relative --all'

# Java
if which java > /dev/null; then export JAVA_HOME=$(/usr/libexec/java_home); fi

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
