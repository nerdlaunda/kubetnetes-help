echo 'Starting Setup' 

echo 'Configuating .bashrc'
sleep .5
echo 'Creating backup of ~/.bashrc to ~/.bashrc-bak-nl-k8s'
cp ~/.bashrc ~/.bashrc-bak-nl-k8s

echo 'Downloading and Configuaring .bashrc'
# add alias to bashrc
curl -s https://raw.githubusercontent.com/nerdlaunda/kubetnetes-helper/main/.bashrc >> $HOME/.bashrc
source $HOME/.bashrc
sleep .5

echo 'Configuating .vimrc'
# add customization to .vimrc
echo 'Creating backup...'
if [ -f "~/.vimrc" ]; then
    echo '.vimrc exists.'
    echo 'Creating a backup of ~/.vimrv to ~/.vimrc-bak-nl-k8s'
    cp ~/.vimrc ~/.vimrc-bak-nl-k8s
else
    echo "~/.vimrv doesn't exists. Creating new file."
    touch ~/.vimrc
    touch ~/.vimrc-bak-nl-k8s
fi
echo 'Downloading and Configuaring .vimrc'
curl -s https://raw.githubusercontent.com/nerdlaunda/kubetnetes-helper/main/.vimrc >> $HOME/.vimrc
sleep .5


# COMPLETE -run bash
echo "Complete!!! Starting bash."
sleep .5
exec bash
source $HOME/.bashrc
echo "Installation complete. Try to type k and hit enter. If output is kubectl help then you're good to go. Other wise type 'exec bash'."
