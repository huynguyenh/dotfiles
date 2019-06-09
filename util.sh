# git repo
GITREPO=git://github.com/${github_user:-huynguyenh}/dotfiles.git

# Logging stuff.
function e_header()   { echo -e "\n\033[1m$@\033[0m"; }
function e_success()  { echo -e " \033[1;32m✔\033[0m  $@"; }
function e_error()    { echo -e " \033[1;31m✖\033[0m  $@"; }
function e_arrow()    { echo -e " \033[1;34m➜\033[0m  $@"; }

# OS detection
function is_osx() {
  [[ "$OSTYPE" =~ ^darwin ]] || return 1
}

export DOTFILES=./dotfiles
export ASSETS=./assets
export CURRENT_USER=$(id -un)
