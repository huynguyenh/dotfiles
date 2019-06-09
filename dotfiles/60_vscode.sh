source ./util.sh

which code || return 1

extensions=(
  abusaidm.html-snippets-0.2.1
  castwide.solargraph-0.17.0
  esbenp.prettier-vscode-1.3.1
  kumar-harsh.graphql-for-vscode-1.10.2
  ms-mssql.mssql-1.3.1
  rust-lang.rust-0.4.2
  alefragnani.bookmarks-0.19.1
  CoenraadS.bracket-pair-colorizer-1.0.37
  formulahendry.auto-close-tag-0.5.6
  kumar-harsh.graphql-for-vscode-1.10.3
  ms-vscode.go-0.6.79
  Shan.code-settings-sync-2.9.2
  alefragnani.project-manager-0.25.2
  dbaeumer.vscode-eslint-1.4.8
  gnhuy91.theme-oceanicnext-sublime-1.2.1
  wayou.vscode-todo-highlight-0.5.12
  bungcip.better-toml-0.3.2
  eamodio.gitlens-8.2.4
  hnw.vscode-auto-open-markdown-preview-0.0.4
  lukehoban.go-0.6.78
  rebornix.ruby-0.18.0
  xabikos.reactsnippets-2.1.0
  castwide.solargraph-0.16.0
  EditorConfig.editorconfig-0.12.1
  jpoissonnier.vscode-styled-components-0.0.18
  misogi.ruby-rubocop-0.7.0
  robertohuertasm.vscode-icons-7.23.0
  zxh404.vscode-proto3-0.2.1
)

function install_extensions() {
  e_header "Installing VSCODE extensions"
  for ex in "${extensions[@]}"; do
  echo "code --install-extension" $ex
  code --install-extension $ex
  done
}

# install_extensions

function copy_my_user() {
  e_header "Copy my user profile"
  cp -r $ASSETS/vscode_user/User /Users/$CURRENT_USER/Library/Application\ Support/Code/
}

copy_my_user
