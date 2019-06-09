source ./util.sh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

git clone https://github.com/rupa/z
echo "source ${(q-)PWD}/z/z.sh" >> ${ZDOTDIR:-$HOME}/.zshrc

cp $ASSETS/dotfiles/.zshrc ~/.zshrc
