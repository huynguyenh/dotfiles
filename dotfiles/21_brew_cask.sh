source ./util.sh

recipes=(
  1password
  appcleaner
  caprine
  docker
  flux
  google-chrome
  gotiengviet
  insomnia
  insomniax
  iterm2
  ngrok
  polymail
  slack
  spectacle
  tableplus
  teamviewer
  visual-studio-code
  spotify
)

# Install Homebrew recipes.
function brew_install_recipes() {
  if (( ${#recipes[@]} > 0 )); then
    e_header "Installing Homebrew recipes: ${recipes[*]}"
    for recipe in "${recipes[@]}"; do
      brew cask install $recipe
    done
  fi
}

brew_install_recipes
