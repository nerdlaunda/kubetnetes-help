# add alias to bashrc
curl https://raw.githubusercontent.com/nerdlaunda/kubetnetes-helper/main/.bashrc >> $HOME/.bashrc
source $HOME/.bashrc

# add tab specifications to .vimrc
echo "set tabstop=2" >> $HOME/.vimrc
echo "set expandtab" >> $HOME/.vimrc
echo "set shiftwidth=2" >> $HOME/.vimrc