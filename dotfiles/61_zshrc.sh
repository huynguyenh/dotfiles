source ./util.sh

cp $ASSETS/dotfiles/.zshrc ~/.zshrc

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cd vendor && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source .dotfiles/vendor/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

cd .. 
cd vendor && git clone https://github.com/rupa/z
echo "source .dotfiles/vendor/z/z.sh" >> ${ZDOTDIR:-$HOME}/.zshrc

