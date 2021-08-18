echo 'Begin Uninstall...'

echo 'Replacing ~/.bashrc with ~/.bashrc-bak-nl-k8s'
sleep .5
if [ -f "~/.bashrc-bak-nl-k8s" ]; then
    echo 'Replacing ~/.bashrc with ~/.bashrc-bak-nl-k8s'
    mv ~/.bashrc-bak-nl-k8s ~/.bashrc
    rm ~/.bashrc-bak-nl-k8s
    sleep .5
else
    echo 'Backup for bashrc is not available.'
    echo '!!!  Manual cleaning required. Edit ~/.bashrc and remove everything between "#CUSTOM-ALIAS-END-K8S" and "#CUSTOM-ALIAS-END-K8S"'
    echo 'Skipping'
    sleep 1
fi

source $HOME/.bashrc


if [ -f "~/.vimrc-bak-nl-k8s" ]; then
    echo 'Replacing ~/.vimrc with ~/.vimrc-bak-nl-k8s'
    mv ~/.vimrc-bak-nl-k8s ~/.vimrc
    rm ~/.vimrc-bak-nl-k8s
    sleep .5
else
    echo 'Removing ~/.vimrc'
    rm ~/.vimrc
fi

echo "Installation complete. Try to type 'k' and hit enter. If output is 'kubectl help' then type 'exec bash'."