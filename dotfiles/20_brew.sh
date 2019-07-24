source ./util.sh

# Install Homebrew.
if [[ ! "$(type -P brew)" ]]; then
  e_header "Installing Homebrew"
  true | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Exit if, for some reason, Homebrew is not installed.
[[ ! "$(type -P brew)" ]] && e_error "Homebrew failed to install." && return 1

# e_header "Updating Homebrew"
# brew doctor
# brew update

# Homebrew taps
taps=(
  isacikgoz/taps
)

# Homebrew recipes
recipes=(
  bash
  fish
  git
  git-extras
  glide
  go
  jq
  m-cli
  node
  ssh-copy-id
  terminal-notifier
  the_silver_searcher
  thefuck
  tree
  vim
  watchman
  yarn
  zsh
  zsh-syntax-highlighting
  autoenv
  dep
  fx
  gitin
  exa
  mkcert
  awscli
  mysql
  python
  ansible
  warrensbox/tap/tfswitch
)

# Install Homebrew recipes.
function brew_install_recipes() {
  if (( ${#taps[@]} > 0)); then
    e_header "Install Homebrew taps: ${taps[*]}"
    for tap in "${taps[@]}"; do
      brew tap $tap
    done
  fi
  if (( ${#recipes[@]} > 0 )); then
    e_header "Installing Homebrew recipes: ${recipes[*]}"
    for recipe in "${recipes[@]}"; do
      brew reinstall $recipe
    done
  fi
}

brew_install_recipes
