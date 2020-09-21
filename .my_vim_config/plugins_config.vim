"" lightline
let g:lightline = {
	\	'active': {
	\	'left': [ ['mode', 'paste'],
	\	['fugitive', 'readonly', 'filename', 'modified'] ],
	\	'right': [ [ 'lineinfo' ], ['percent'] ]
	\	},
	\	'component': {
	\	'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
	\	'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
	\	'fugitive': '%{exists("*FugitiveHead")?FugitiveHead():""}'
	\	},
	\	'component_visible_condition': {
	\	'readonly': '(&filetype!="help"&& &readonly)',
	\	'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
	\	'fugitive': '(exists("*FugitiveHead") && ""!=FugitiveHead())'
	\	},
	\	'separator': { 'left': ' ', 'right': ' ' },
	\	'subseparator': { 'left': ' ', 'right': ' ' }
	\	}

""ctrlp
"[CTRL]+[p] = Ctrlp:
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

""NerdTree
"NERDTree automatically when emty vim or opening dir
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
"Close vim if NERDTree is the only open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"[CTRL]+[n] = NERDTree
map <C-n> :NERDTreeToggle<CR>

""TagBar
nmap <C-t> :TagbarToggle<CR>

""Commentary
"gc=comment+{motion} ex:(gcu=uncomment current and adjacent lines)
"gcc=comment
"gcap=comment paragraph

""Vim-gitgutter
"config:
	":GitGutterSignsDisable
	":GitGutterLineHighlightsEnable
nmap <C-g> :GitGutterToggle<CR>

""YCM
"for cmake need to add: set( CMAKE_EXPORT_COMPILE_COMMANDS ON )
"Commands:
	"|GoToInclude| subcommand .h <-->.c
	nmap <C-i> :YcmCompleter GoToInclude<CR>
	"|GoToDeclaration| subcommand == |GoToDefinition| subcommand
	nmap <C-d> :YcmCompleter GoToDeclaration<CR>
	"|GoToReferences| subcommand list of referencies
	nmap <Space> :YcmCompleter GoToReferences<CR>
	"'GoToSymbol <symbol query>' subcommand search referencies
	 "nmap <Space> :YcmCompleter GoToSymbol<CR>
	"|GoToImprecise| subcommand
	"|GoTo| subcommand
	"|GoToImplementation| subcommand
	"|GoToImplementationElseDeclaration| subcommand
	"|GoToType| subcommand
