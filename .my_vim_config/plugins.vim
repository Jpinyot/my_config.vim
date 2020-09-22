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
""Plug 'scrooloose/syntastic'

"Ctrlp.vim search
Plug 'ctrlpvim/ctrlp.vim'

"vim-gitutter show git status of a file
"Plug 'airblade/vim-gitgutter'

""tagbar
Plug 'majutsushi/tagbar'
""dependencies:
"	ctags	; download: universal ctags

""commentary
Plug 'tpope/vim-commentary'

""youcompleeteme
"for cmake need to add: set( CMAKE_EXPORT_COMPILE_COMMANDS ON )
Plug 'valloric/youcompleteme'
""dependencies
"	cmake
"	python
"	mono
"	go
"	nodejs
"	macOs: macvim

"End File
call plug#end()
"INIT in .vimrc file with [:PlugInstall] vim command
