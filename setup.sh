source ./util.sh

function setup() {
  local files=($DOTFILES/$1/*)

  [[ $(declare -f "$1_files") ]] && files=($($1_files "${files[@]}"))
  # No files? abort.
  if (( ${#files[@]} == 0 )); then return; fi

  ## add permission
  chmod -R 750 $DOTFILES

  for file in "${files[@]}"; do
    ./$file
  done
}

setup
