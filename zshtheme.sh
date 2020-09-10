cd ~
echo "Installing ZSH instead of bash"
sudo apt install zsh
echo "When it asks for what to run default instead of ***/bin/bash*** please select ***/bin/zsh*** without the stars (*)"
chsh $USER
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /home/$USER/powerlevel10k
echo 'source /home/$USER/powerlevel10k/powerlevel10k.zsh-theme' >>! /home/$USER/.zshrc
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source /home/$USER/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
echo source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh >> /home/$USER/.zshrc
