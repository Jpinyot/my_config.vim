" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

"NERDTree
Plug 'scrooloose/nerdtree'

" gruvbox colorscheme
Plug 'morhetz/gruvbox'

" airline statusline
"Plug 'vim-airline/vim-airline'

"light line statusline
Plug 'itchyny/lightline.vim'

"fugitive git wrapper
Plug 'tpope/vim-fugitive'

"Syntastic syntax checking
Plug 'scrooloose/syntastic'

"Ctrlp.vim
Plug 'ctrlpvim/ctrlp.vim'

"End File
call plug#end()
"INIT in .vimrc file with [:PlugInstall] vim command
