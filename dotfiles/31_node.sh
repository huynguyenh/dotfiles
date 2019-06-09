# exit if node is not installed.
which node || return 1

source ./util.sh

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

packages=(
  eslint
  flow-bin
  pure-prompt
  svgo
  gh
)

function node_install_packages() {
  e_header "Installing Node packages: ${packages[*]}"
  for package in "${packages[@]}"; do
    npm install -g $package
  done
}

node_install_packages
