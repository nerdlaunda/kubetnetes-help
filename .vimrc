"CUSTOM-VIMRC-BEGIN-K8S
" ls -l /usr/share/vim/vim80/colors
colorscheme torte
set paste
set ruler

" basic settings for yaml and python files
autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab number autoindent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab autoindent

" folding can help troubleshoot indentation syntax
set foldenable
set foldlevelstart=20
set foldmethod=indent
nnoremap <space> za
set number
"CUSTOM-VIMRC-BEGIN-K8S