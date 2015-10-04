sudo apt-get install python-pip git zsh vim vim-gnome cmake python-dev python3-dev exuberant-ctags

git clone https://github.com/Lokaltog/powerline-fonts --depth=1
cd powerline-fonts
sh install.sh
cd .. && rm powerline-fonts -r

cd vim/bundle/
rm Vundle.vim -r
git clone https://github.com/gmarik/Vundle.vim
cd ../..

[[ -f $HOME/.vimrc ]] && mv $HOME/.vimrc $HOME/.vimrc-old
ln -s $PWD/vim/vimrc $HOME/.vimrc

[[ -f $HOME/.zshrc ]] && mv $HOME/.zshrc $HOME/.zshrc-old
ln -s $PWD/zsh/zshrc $HOME/.zshrc

chsh -s /bin/zsh
vim +PluginInstall

cd $HOME/.vim/bundle/vimproc.vim/
make
cd

echo "Done!"
