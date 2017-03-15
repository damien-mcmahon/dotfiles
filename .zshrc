# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

man() {
  env \
       LESS_TERMCAP_mb=$(printf "\e[1;31m") \
       LESS_TERMCAP_md=$(printf "\e[1;31m") \
       LESS_TERMCAP_me=$(printf "\e[0m") \
       LESS_TERMCAP_se=$(printf "\e[0m") \
       LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
       LESS_TERMCAP_ue=$(printf "\e[0m") \
       LESS_TERMCAP_us=$(printf "\e[1;32m") \
         man "$@"
}

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting jira-ticket-branch)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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


#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nv


#ALIASES
alias sshow="!f() { git stash show stash^{/$*} -p;}; f"
alias sapply="!f() { git stash apply stash^{$*}; }; f"
alias work="cd ~/Work/"
alias gpnc="gapa && gst"
alias gcnc="gco -p && gst"
alias wfe="work && cd WebFrontend"
alias gfpr="git fetch --prune"
alias serve="grunt server"
alias servelegacy="grunt serverLegacy"
alias test="grunt test"
alias pyserve="python -m SimpleHTTPServer 8000"
alias lx="m screensaver"
alias chromeopen="open -a /Applications/Google\ Chrome.app/ "
alias jira="gco $JIRA_BASE_BRANCH && create_jira_branch"
alias ghist="glola | grep"
alias sz="source ~/.zshrc"
alias grom="git rebase origin/master"
alias gror="git rebase origin/$RELEASE_BRANCH"
alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
alias v="vi"
alias vd="~/.vim"
alias lt="la -t"
#TMUX
alias tm="tmux"
alias tat="tmux attach -d -t"
#PATH
export PATH=$HOME.nvm/versions/node/v6.2.1/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.vimpkg/bin

export EDITOR='vim'
#HIGHLIGHTING - keep at end!
source ~/.bin/tmuxinator.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting-master/zsh-syntax-highlighting.zsh

export PATH="$HOME/.yarn/bin:$PATH"
