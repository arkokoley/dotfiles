sudo apt-get install python-pip git zsh vim vim-gnome cmake python-dev python3-dev

#git clone https://github.com/Lokaltog/powerline-fonts --depth=1
#cd powerline-fonts
#sh install.sh
#cd .. && rm powerline-fonts -r

#pip install --user git+git://github.com/Lokaltog/powerline

cd vim/bundle/
rm Vundle.vim -r
git clone https://github.com/gmarik/Vundle.vim

[[ -f $HOME/.vimrc ]] && mv $HOME/.vimrc $HOME/.vimrc-old
[[ -f $HOME/.zshrc ]] && mv $HOME/.zshrc $HOME/.zshrc-old

cd ../..
ln -s $PWD/vim/vimrc $HOME/.vimrc
ln -s $PWD/zsh/zshrc $HOME/.zshrc
chsh -s /bin/zsh
vim +PluginInstall
cd $HOME/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py
cd ../../..
