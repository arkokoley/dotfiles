sudo apt-get install python-pip git zsh vim vim-gnome

git clone https://github.com/Lokaltog/powerline-fonts --depth=1
cd powerline-fonts
sh install.sh
cd .. && rm powerline-fonts -r

pip install --user git+git://github.com/Lokaltog/powerline

ln -s vim/vimrc $HOME/.vimrc
ln -s zsh/zshrc $HOME/.zshrc

chsh -s zsh
