" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

"NERDTree
Plug 'scrooloose/nerdtree'

"Dracula Theme
"Plug 'dracula/vim',{'as':'dracula'}

" gruvbox colorscheme
Plug 'morhetz/gruvbox'

" airline statusline
"Plug 'vim-airline/vim-airline'

"light line statusline
Plug 'itchyny/lightline.vim'

"fugitive git wrapper
Plug 'tpope/vim-fugitive'

"End File
call plug#end()
"INIT in .vimrc file with [:PlugInstall] vim command
