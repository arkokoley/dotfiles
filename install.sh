#!/usr/bin/env sh
sudo apt-get install python-pip git zsh vim vim-gnome cmake python-dev python3-dev exuberant-ctags silversearcher-ag

git clone https://github.com/Lokaltog/powerline-fonts --depth=1
cd powerline-fonts
sh install.sh
cd .. && rm powerline-fonts -r

wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O $HOME/.files/zsh/z
git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.files/fzf

mkdir $HOME/.files/
cp * $HOME/.files/. -r
cp .git $HOME/.files/. -r
echo "source $HOME/.files/zsh/zshrc" >> $HOME/.zshrc

chsh -s /bin/zsh
$HOME/.files/fzf/install

read -p "Install Arcana-Vim? [y/n]" answer
if [ $answer = y ] ; then
  git clone --depth 1 https://github.com/arkokoley/arcana-vim $HOME/.files/arcana-vim
  cd $HOME/.files/arcana-vim
  ./bootstrap.sh
  rm -f -r $HOME/.files/arcana-vim/
fi

echo "#### Done! ####"
