echo 'Starting Setup' 

echo 'Downloading and Configuaring .bashrc'
# add alias to bashrc
curl -s https://raw.githubusercontent.com/nerdlaunda/kubetnetes-helper/main/.bashrc >> $HOME/.bashrc
source $HOME/.bashrc

echo 'Configuating .vimrc'
# add tab specifications to .vimrc
echo "set tabstop=2" >> $HOME/.vimrc
echo "set expandtab" >> $HOME/.vimrc
echo "set shiftwidth=2" >> $HOME/.vimrc

# COMPLETE -run bash
echo "Complete!!!"
exec bash
