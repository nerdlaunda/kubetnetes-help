echo 'Starting Setup' 

echo 'Configuaring .bashrc'
# add alias to bashrc
curl https://raw.githubusercontent.com/nerdlaunda/kubetnetes-helper/main/.bashrc >> $HOME/.bashrc
source $HOME/.bashrc

echo 'Configuating .vimrc'
# add tab specifications to .vimrc
echo "set tabstop=2" >> $HOME/.vimrc
echo "set expandtab" >> $HOME/.vimrc
echo "set shiftwidth=2" >> $HOME/.vimrc

# COMPLETE -run bash
echo "Complete!!!"
exec bash
