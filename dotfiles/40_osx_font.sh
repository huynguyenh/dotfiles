source ./util.sh


function copy_font() {
  local files=($ASSETS/fonts$1/*)

  [[ $(declare -f "$1_files") ]] && files=($($1_files "${files[@]}"))

  e_header "Copying fonts (${#files[@]})"
  for f in "${files[@]}"; do
    e_arrow "$f"
    cp "$f" ~/Library/Fonts/
  done
}

copy_font
