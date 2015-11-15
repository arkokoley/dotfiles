sudo apt-get install python-pip git zsh vim vim-gnome cmake python-dev python3-dev exuberant-ctags

git clone https://github.com/Lokaltog/powerline-fonts --depth=1
cd powerline-fonts
sh install.sh
cd .. && rm powerline-fonts -r

[[ -f $HOME/.zshrc ]] && mv $HOME/.zshrc $HOME/.zshrc-old
mkdir $HOME/.files/
mkdir $HOME/.files/zsh
cp zsh/* $HOME/.files/zsh/. -r
ln -s $HOME/.files/zsh/zshrc $HOME/.zshrc

chsh -s /bin/zsh

read -p "Install Arcana-Vim? [y/n]" answer
if [ $answer = y ] ; then
  git clone https://github.com/arkokoley/arcana-vim $HOME/.files/arcana-vim
  cd $HOME/.files/arcana-vim
  ./bootstrap.sh
  rm -f -r $HOME/.files/arcana-vim/
fi

echo "#### Done! ####"
