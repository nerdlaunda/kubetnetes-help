echo 'Begin Uninstall...'

echo 'Replacing ~/.bashrc with ~/.bashrc-bak-nl-k8s'
mv ~/.bashrc-bak-nl-k8s ~/.bashrc
source $HOME/.bashrc

echo 'Replacing ~/.vimrc with ~/.vimrc-bak-nl-k8s'
mv ~/.vimrc-bak-nl-k8s ~/.vimrc

echo "Installation complete. Try to type k and hit enter. If output is kubectl help then type 'exec bash'."