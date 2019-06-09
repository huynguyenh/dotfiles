# Path to your oh-my-zsh installation.
export DOTFILES=$HOME/.dotfiles
export PATH=/Users/$(id -un)/.nvm/versions/node/v8.9.0/bin:/Users/$(id -un)/.dotfiles/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/$(id -un)/bin:/Users/$(id -un)/.cargo/bin:/Users/$(id -un)/.fzf/bin

umask 022

# alias
if type exa > /dev/null; then
  alias ls="exa"
  alias ll="exa --long --group --git"
  alias lt="exa --long --group --tree"
  alias grep="grep --color=auto"
fi

# Easier navigation: .., ..., -
alias ..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'

alias ip="ipconfig en0"
alias c="clear"

alias g='git'
alias gp='git push'
alias gpa='gp --all'
alias gu='git pull'
alias gl='git log'
alias gg='gl --decorate --oneline --graph --date-order --all'
alias gs='gitin status'
alias gst='gs'
alias gd='git diff'
alias gdc='gd --cached'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gba='git branch -a'


# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""
DEFAULT_USER=$USER

ZSH_THEME=pygmalion

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx thefuck z golang zsh-autosuggestions shrink-path)

# User configuration
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=10"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# iterm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Choose "pure" as prompt theme
autoload -U promptinit; promptinit
prompt pure

# Go env
export GOPATH=$HOME
PATH=$PATH:$GOPATH/bin
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# Keep these lines at the bottom of zshrc
ZSH_HIGHLIGHT_DIR=$DOTFILES/vendor/zsh-syntax-highlighting
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=$ZSH_HIGHLIGHT_DIR/highlighters
source $ZSH_HIGHLIGHT_DIR/zsh-syntax-highlighting.zsh

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
