source ./util.sh

# install
which rustup || curl https://sh.rustup.rs -sSf | sh

packages=(
  exa
  branch-d
)

function rust_install_packages() {
  e_header "Installing Rust packages: ${packages[*]}"
  for package in "${packages[@]}"; do
    cargo install $package
  done
}

rust_install_packages
