echo "Installing ZSH instead of bash"
sudo apt install zsh
echo "When it asks for what to run default instead of ***/bin/bash*** please select ***/bin/zsh*** without the stars (*)"
chsh $USER
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
echo source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh >> /home/$USER/.zshrc
