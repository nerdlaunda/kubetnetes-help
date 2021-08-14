echo 'Starting Setup' 

echo 'Downloading and Configuaring .bashrc'
sleep .5
# add alias to bashrc
curl -s https://raw.githubusercontent.com/nerdlaunda/kubetnetes-helper/main/.bashrc >> $HOME/.bashrc
sleep .5
source $HOME/.bashrc

echo 'Configuating .vimrc'
sleep .5
# add tab specifications to .vimrc
echo "set tabstop=2" >> $HOME/.vimrc
echo "set expandtab" >> $HOME/.vimrc
echo "set shiftwidth=2" >> $HOME/.vimrc

# COMPLETE -run bash
echo "Complete!!! Starting bash."
sleep .5
exec bash
