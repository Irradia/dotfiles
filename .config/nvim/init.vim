"All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
" runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim74/vimrc_example.vim or the vim manual
" and configure vim to your own liking!
"
" Left in for old times sake :)

" GENERAL {{{
	"  Line numbering
	set nu
	set relativenumber

	"  Search
	" set hlsearch
	set incsearch
	set smartcase

	"  Identation
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
	set autoindent
	set smartindent
	set smarttab
	set noexpandtab

	"  Listchars
	" set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
	set listchars=tab:•·,trail:‡,extends:>,precedes:<,nbsp:■
	set list

	"  Syntax
	syntax on
	"80 Line indicator by removing syntax highlighting
	" set synmaxcol=80

	"  Status stuff
	set laststatus=2
	set ruler
	set showcmd

	"  Wildmenu
	set wildmenu
	set wildmode=longest,full

	"  Offsets
	set scrolloff=6
	set sidescroll=1
	set sidescrolloff=6

	"  Folding
	set foldmethod=syntax
	set foldcolumn=1
	" Completion
	" set dictionary=/usr/share/dict/words

	" Regex
	set magic

	" Word wrapping
	set nowrap

	"  Clean backups
	set nowritebackup
	" set nobackup
	" set backupdir=~/.config/nvim/backup
	" MOVED TO NVIM DUE TO DEPRECIATION
	" set directory=~/.config/nvimtmp
	" set viminfo='100,<50,s10,h,n$HOME/.config/nvim/.nviminfo
	set history=256
" }}}
" INTERFACE {{{
	set fillchars+=vert:\ " Trailing space significant
	set foldcolumn=1
	hi LineNr guibg=bg
	hi foldcolumn guibg=bg
	hi VertSplit guibg=bg guifg=bg

	" set columns=124

	" let g:colorname = 'deficient'
	let g:colorname = 'usmyck'
	execute 'colorscheme' g:colorname

	" Highlight text past 80 characters
	" call matchadd('ColorColumn', '\%81v', 100)

	" Terminal force 256 colors
	" set t_Co=256

	if exists("g:neovide")
		" Put anything you want to happen only in Neovide here
		let g:neovide_cursor_animation_length=0.05
		" let g:neovide_cursor_vfx_mode = "sonicboom"
		let g:neovide_scale_factor = 0.75
		set guifont=Terminus\ \(TTF\)\ For\ Windows:h12
		" set guifont=Hack\ Nerd\ Font\ Mono:h16
		let g:neovide_padding_top = 0
		let g:neovide_padding_bottom = 0
		let g:neovide_padding_right = 0
		let g:neovide_padding_left = 4
		let g:neovide_transparency = 0.9
		let g:transparency = 0.9
		let g:neovide_remember_window_size = v:false
		" let g:neovide_background_color = '#820000'
	endif
"
	" if g:colorscheme == 'usmyck'
		" set ba
	" if g:colorscheme == 'deficient'
	set termguicolors
	" let g:terminal_ansi
		" let g:terminal_ansi_colors = [
		" 	\ '#1F0000', '#B00D0D', '#B00D0D', '#B00D0D',
		" 	\ '#B00D0D', '#B00D0D', '#B00D0D', '#FEFEFE',
		" 	\ '#150000', '#FF1111', '#FF1010', '#FF1010',
		" 	\ '#FF1010', '#FF1010', '#FF1010', '#FAFAFA'
		" 	\ ]

"background": "#000000",
""black":
"#1F0000",
""red":
""#B00D0D",
""green":
""#B00D0D",
""yellow":
""#B00D0D"
""blue":
"#B00D0D",
""purple":
""#B00D0D",
""cyan":
""#B00D0D",
""brightWhite":
""#FEFEFE",
""brightBlack":
""#150000",
""brightRed":
""#FF1111",
""brightGreen":
""#FF1010",
""brightYellow":
""#FF1010",
""brightBlue":
""#FF1010",
""brightPurple":
""#FF1010",
""brightCyan":
""#FF1010",
""white":
""#FAFAFA",
""cursorColor":
""#B00D0D",
""foreground":
""#B10E0E",
""name":
""HaX0R_R3D",
""selectionBackground":
""#EBC1FF",


""#B00D0D",
""#B10E0E",
""name":
""HaX0R_R3D",
""selectionBackground":
""#EBC1FF",

	" Gui options
	if has("gui_running")
		set guifont=Terminus\ 8
		set guioptions-=m  "remove menu bar
		set guioptions-=T  "remove toolbar
		set guioptions-=r  "remove right-hand scroll bar
		set guioptions-=L  "remove left-hand scroll bar
		" set guiheadroom=0
		execute 'colorscheme' g:colorname
	endif
" }}}
" NATIVE BINDINGS {{{
	"  COMMAND MAPS {{{
		" w!! to write as superuser
		" cmap w!! w !sudo tee % >/dev/null
	" }}}
	"  KEY MAPS {{{
		" remap the leader key
		let g:mapleader=" "
		" nmap <C-h> <C-w>h
		" nmap <C-j> <C-w>j
		" nmap <C-k> <C-w>k
		" nmap <C-l> <C-w>l

		" quick command things
		nmap <Leader>x :q<CR>
		nmap <Leader>c :close<CR>
		nmap <Leader>z :write<CR>
		nmap <Leader>th :set hlsearch!<CR>
		nmap <Leader>tn :set number!<CR>
		nmap <Leader>tr :set relativenumber!<CR>
		nmap <Leader>tl :set list!<CR>
		" clear search buffer
		nmap <Leader>n :let @/ = ""<CR>
		" reload vimrc
		nmap <Leader>v :source $MYVIMRC<CR>
		" quick buffer navigation
		nmap <Leader>bn :bn<CR>
		nmap <Leader>bp :bp<CR>
		" quick tab navigation
		nmap g1 1gt
		nmap g2 2gt
		nmap g3 3gt
		nmap g4 4gt
		nmap g5 5gt
		nmap g6 6gt
		nmap g7 7gt
		nmap g8 8gt
		nmap g9 9gt
		" Map g then Shift+1-9 to move tab to that position
		" Map g > Shift+1
		nmap gm1 :tabmove 0<CR>
		nmap gm2 :tabmove 1<CR>
		nmap gm3 :tabmove 2<CR>
		nmap gm4 :tabmove 3<CR>
		nmap gm5 :tabmove 4<CR>
		nmap gm6 :tabmove 5<CR>
		nmap gm7 :tabmove 6<CR>
		nmap gm8 :tabmove 7<CR>
		nmap gm9 :tabmove 8<CR>
		" }}}
" }}}
" VARIABLES {{{
	" let g:python3_host_prog = '/usr/bin/python3'  	" Resolve vimrc path from $MYVIMRC variable
	let vimrc_path = substitute($MYVIMRC, '\v(.*)/[^/]+$', '\1', '')
" }}}
" AUTO COMMANDS {{{
	augroup vertical_help
	autocmd!
	autocmd FileType help wincmd L
	augroup END

	autocmd VimEnter *
			\   if !argc()
			\ |   sleep 250m
			\ |   Startify
			" \ |   NERDTree
			\ |   wincmd w
			\ | endif
" }}}
" PLUGINS {{{
	" Vim-Plug INITIALIZATION {{{
		call plug#begin('C:\Users\jenny\AppData\Local\nvim\plugins')
		Plug 'severin-lemaignan/vim-minimap'
		Plug 'github/copilot.vim'
		Plug 'mtdl9/vim-log-highlighting'
		Plug 'PotatoesMaster/i3-vim-syntax'
		Plug 'Shougo/unite.vim'
		Plug 'godlygeek/tabular'
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
		Plug 'dense-analysis/ale'
		Plug 'junegunn/goyo.vim'
		Plug 'junegunn/rainbow_parentheses.vim'
		Plug 'junegunn/vim-plug'
		Plug 'thinca/vim-quickrun'
		Plug 'tpope/vim-commentary'
		Plug 'tpope/vim-fugitive'
		Plug 'tpope/vim-repeat'
		Plug 'tpope/vim-surround'
		Plug 'preservim/nerdtree'
		" Plug 'ervandew/supertab'
		Plug 'itchyny/vim-cursorword'
		" Plug 'nvim-lua/plenary.nvim'
		" Plug 'nvim-telescope/telescope.nvim'
		Plug 'mbbill/undotree'
		Plug 'powerman/vim-plugin-autosess'
		Plug 'kis9a/vimsidian'
		" Plug 'goolord/alpha-nvim'
		Plug 'mhinz/vim-startify'
		" Plug 'chrisbra/Colorizer'
		Plug 'norcalli/nvim-colorizer.lua'
		Plug 'nvim-lua/plenary.nvim'
		Plug 'kmontocam/nvim-conda'
		" Plug ''
		call plug#end()

		" Setup
		lua require'colorizer'.setup()
	" }}}
	" Startify {{{
			let g:startify_disable_at_vimenter = 1
			nmap <Leader>ts :tabnew  Startify

			" redir => test
			" 	" silent ! wsl -- cmatrix -ascii-C red
			" 	silent ! pwsh.exe -c "Write-Host 'Hello World'"
			" redir END
			" " let g:startify_custom_header =
			" " 	\ 'startify#center(map(split(test), ''repeat(" ", 10) . v:val''))'
			" let g:startify_custom_header =
			" 	\ map(split(test), 'repeat(" ", 10) . v:val')

			let g:startify_custom_header = [
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⡢⢔⡢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢄⢔⡆⠜⠱⠣⡪⠅⠀⠀⠄⡐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠈⠀⠁⠀⠀⠀⠀⠀⠱⢌⠂⠀⠑⡠⡀⢄⠠⠀⡐⡠⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢂⠂⠠⠢⢂⢕⡣⢇⣰⣮⣵⣼⣦⣤⢄⡠⢄⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢢⣜⡳⣷⣷⣿⣿⣿⣿⣿⣿⣿⣾⣇⡸⢄⡀⠔⢢⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢌⣱⣮⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡜⡪⢵⡮⢆⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢔⣪⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢟⡹⠎⡑⠪⢕⠨⢕⠔⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢐⡣⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢗⢣⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡐⣸⢯⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⡸⠕⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢔⡢⣜⣯⣿⣿⣿⠿⠛⠉⠀⠀⠀⠀⠉⠙⠻⣿⣿⣿⣿⣿⣿⡕⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠔⠢⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡌⢵⣵⣿⣷⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣎⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢪⢽⣾⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣷⡆⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠕⠀⠀⠀⠀⠀⠀⠀⠀⡠⢅⡸⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⡫⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢐⢆⡀⢀⡄⢠⠀⠀⠀⢀⠀⢐⡣⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡪⠪⢍⡰⢠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢌⡔⢣⡕⡪⣱⣾⣀⡀⢠⡆⢱⣧⣾⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣮⣾⣷⣷⣿⣿⣾⣿⣷⣾⣾⣵⣜⡑⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢕⢎⡱⢮⡿⢿⣿⣿⠿⠛⡣⢟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡪⡑⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢂⠈⠀⠁⠁⠊⢑⠀⠀⠀:⠑⡪⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣤⣤⣤⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⡻⢝⡹⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢌⢀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠘⢇⣕⣿⢿⣿⣿⢿⠿⢿⡿⠿⢿⣿⣿⣿⣿⣿⣿⣿⡫⢝⢯⣏⡹⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⡇⢸⡇⢨⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠅⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢔⡺⠇⠀⠀⠀⠀⠀⠀⠀⠁⠘⠛⠻⠇⠘⠑⠀⠨⠕⢪⣿⢟⣻⢿⡺⣿⣿⣿⣿⡿⡪⠜⠊⠊⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠊⡱⣒⡒⢰⣆⡠⠀⠔⢎⠜⠣⢸⢵⣎⡘⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢎⡱⢎⣿⡟⡪⢜⡫⢝⡫⢝⡪⢜⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢅⢜⡣⠌⠅⠂⠀⠑⠪⡕⢪⡝⢣⡜⡑⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠇⠹⠕⡚⢝⣯⡝⢑⡀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠕⠠⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⠁⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠀⠔⠑⠪⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⡜⡣⢎⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠌⠌⠀⠐⠀⠈⠌⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
			\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀', ]

			" \ '⣿⣿⣿⢿⣿⣻⣟⣿⣻⣟⣿⣻⣟⣿⣻⣟⣿⣻⣟⣿⣻⣟⣿⣻⣟⣿⣻⣟⣿⣻⣟⣿⣻⣟⣿⣻⣟⣿⣻⣟⣿⣻⣟⣿⣻⣟⣿⣻⣟⣿⣻⣟⣿⣻⣟⣿⣻⣟⣿⣻⣟⣿⣻⣟⡿⣽⣻⡽⢯⡿⣽⣫⡟⣽⣫⢟⣽⢫⡟⣽⢫⡟⣭⡻⣭⢻⡭⢯⡽⣭⢯⡽⣭⠻⣜⡣⢟⣜⡣⢟⡜⣣⢛⡜⣣⢛⡜⣣⢏⡼⣡⢏⡼⣡⢏⡼⣡⢏⡼⡱',
			" \ '⣿⣷⣻⣟⣾⣳⢿⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⡷⣯⣟⡷⣯⡽⣯⢷⣏⡷⣽⣣⢯⣟⢮⣯⢽⣚⡷⣹⢧⣻⡜⣧⣛⢧⡻⣜⢮⡳⣭⢻⡔⣏⡳⢎⡝⢮⠼⣱⢫⠼⣱⢫⡜⡱⢎⠶⡱⢎⠶⡱⢎⠶⡱⢎⠶⣙',
			" \ '⣿⢿⣽⡾⣷⣟⣯⢿⡾⣽⣻⢾⣽⣻⢾⣽⣻⢾⣽⣻⣞⣯⣟⣾⣳⣟⣾⣳⣟⣾⣳⣟⣾⣳⣟⣾⣳⣟⣾⣽⣻⢾⣽⣻⢾⣽⢾⣯⢷⣟⣾⣳⣟⣾⣳⣟⣾⣳⣟⣾⣳⢯⣟⡷⢯⣟⡷⣻⣵⡻⣾⣱⢷⣫⠷⣞⢯⡞⣧⢟⡼⣏⢷⣣⢟⡵⣫⢞⡽⣎⢷⡹⣞⢣⡞⣱⢭⡛⡼⣙⡞⣥⣋⢗⣣⠳⣜⡹⢎⡳⣙⢎⡳⣙⢎⡳⣙⢮⡹⣒',
			" \ '⣿⣯⣷⢿⣳⣯⣟⣯⡿⣽⢯⣿⢾⣽⣻⢾⣽⣻⣞⡷⣯⢷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⢯⣷⣟⡿⣞⡿⣞⣯⡿⣞⣷⣻⣞⣷⣻⣞⣷⣻⣾⣽⣿⣾⣿⣿⣾⣿⣷⣿⣷⣯⣟⣾⣭⢿⡹⣾⣹⢮⣏⢷⣫⢞⡵⣫⢷⡹⣎⢷⡹⣎⠷⡭⢮⡕⣏⠶⣹⢱⢣⠞⡴⣩⠞⡴⣋⠶⣙⢮⡱⣍⢮⡱⣍⢮⡱⡍⢶⣑⢣',
			" \ '⣿⡾⣽⡿⣽⡾⣽⣳⡿⣯⣟⣾⣻⢾⣽⣻⣞⡷⣯⢿⡽⣯⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⢾⡽⣟⣾⣽⣻⡽⣟⣯⣷⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣧⣛⡾⣼⢣⡟⣮⢳⡝⣮⢳⡝⣮⠳⣭⢛⡼⢣⢞⡬⡳⣍⢎⢧⡛⡴⢣⡛⡴⣍⢞⡱⢎⡵⣊⠶⡱⢎⡖⣱⡙⢦⡍⡖',
			" \ '⣿⣻⣽⣟⡷⣟⣯⡷⣟⡷⣯⢷⣻⣟⣾⣳⢯⡿⣽⢯⣟⡷⣯⢷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⢾⡽⣯⣟⣯⡷⣯⣷⣟⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣵⣫⢞⡵⣏⢾⡱⢯⡞⡵⣛⢦⣛⡼⣍⠾⣰⠳⡜⣎⠶⡹⣜⢣⡝⡲⣍⢮⡱⢫⠴⣩⠞⣡⠳⡜⡥⣚⢥⡚⡜',
			" \ '⣿⣽⣳⣯⣟⣯⡷⣟⣯⢿⡽⣯⢷⣻⢾⡽⣯⢿⣽⣻⢾⣽⣻⢯⣷⣻⣞⣷⣻⣞⣷⣻⣞⣷⣻⢾⡽⣯⢿⡽⣞⣯⢿⣳⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣞⡽⢮⡝⣧⡛⣵⡩⢖⣣⠞⣬⠳⣥⢛⡼⣌⢳⡱⢎⢧⡚⡵⣊⠶⣉⢧⢛⡤⣛⠴⣋⠼⡱⡜⣆⢧⡙',
			" \ '⣿⢾⣽⡾⣽⣳⣟⣯⣟⣯⢿⡽⣯⣟⣯⢿⣽⣻⢾⣽⣻⢾⣽⣻⡞⣷⣻⣞⣷⣻⣞⣷⣻⢾⡽⣯⢿⡽⣯⣟⣯⣟⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣣⢟⠶⣙⢦⡛⡵⢪⡝⢦⡛⡴⣋⠶⣩⢖⡹⢎⠶⡹⠴⣩⠞⡱⢎⡣⠞⡴⢋⡼⣡⠣⡵⣈⠦⣙',
			" \ '⣿⢯⣷⣟⣯⡷⣯⣷⣻⣞⣯⣟⣷⣻⣞⡿⣾⣽⣻⢾⡽⣻⡞⣷⡻⢷⣛⣾⣳⣟⣾⣳⣯⡿⣽⢯⡿⣽⣳⣟⡾⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣟⣿⢻⡽⢺⡝⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣎⢯⡹⣆⠻⣜⢣⠞⣥⢛⡴⣩⢞⡱⢎⡵⢋⡞⣱⢋⠶⣉⠷⡩⢞⡱⣘⠣⢖⡡⢓⡴⣉⠖⣡',
			" \ '⣿⣻⢷⣻⡾⣽⢷⣯⢷⣻⢾⡽⣞⡷⣯⣟⣷⣳⢯⣟⢾⣳⢟⣳⣟⣯⣟⣾⣳⡽⣞⡷⣯⢿⡽⣯⣟⣷⣻⣞⣿⣿⣿⡟⢥⠲⡝⣾⣟⣿⣿⣻⣿⣟⣿⣯⢿⣞⣷⣻⣽⣚⠷⣘⢧⡚⡕⢦⢫⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣲⢣⡭⢳⢬⢣⡛⡴⣋⠶⡱⢎⡵⢋⡜⣣⠞⡥⢫⡜⡱⢎⡱⢎⠴⢣⡙⢦⡙⢦⠱⣌⠚⡤',
			" \ '⣿⣽⣻⢷⣻⢯⣟⡾⣯⣟⣯⢿⣽⣻⢷⣻⢮⣽⣳⢯⣻⣭⡟⣷⣞⣳⣞⡷⣯⢿⡽⣽⣏⣯⣟⣷⣻⣞⣷⣻⣿⣿⠫⠄⣉⣳⣽⣼⣿⣿⣿⢿⣟⣿⢯⣟⡿⣞⣷⡳⢞⡜⢢⠏⡖⡩⢞⡥⣛⣞⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⢣⢞⡱⢎⢧⡙⢶⡩⢞⡱⣋⠶⣩⠞⣡⠞⣱⠣⡜⡱⢊⠖⡩⢎⡱⡘⠦⡑⢎⡱⢌⡓⡔',
			" \ '⣿⢾⣽⣻⣯⢿⣽⣻⢷⣻⣞⣯⢷⡯⣟⣞⡿⣼⢏⣯⢷⣳⣻⣳⣞⢷⣫⣟⡷⣯⣟⢷⣻⢮⡽⣞⣷⡻⣞⣿⣿⠁⠳⢾⣧⣽⣞⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⡿⣿⡝⣮⢞⡳⣎⠳⡵⢊⡴⢻⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢮⠳⣍⠶⣙⢦⡙⣎⠵⣊⠗⡱⢎⡱⣊⠥⡓⣬⢱⡉⢎⡱⢊⠴⣡⠣⣙⠢⡑⠦⡱⢌',
			" \ '⣿⢯⣟⡷⣯⣟⣾⡽⣯⢷⣻⣞⣯⣽⣻⣼⣛⣾⣛⡾⣏⡷⣏⡷⣞⣯⢷⢯⡽⣶⢯⣛⣧⢿⡽⣳⢾⣽⣻⣿⠃⢉⡷⣿⣹⢯⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣯⡿⣯⢟⡞⣞⡳⣜⣫⡑⠳⠾⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢌⡳⢬⢳⡩⢖⡹⡸⡜⡡⢏⡕⢎⡱⣉⠖⡱⢢⠱⡘⠦⡑⣍⠲⢄⠳⣄⢣⡙⢆⡱⢊',
			" \ '⣿⣯⢿⡽⣷⣻⣞⡿⣽⢯⣷⣻⢮⢷⣳⣳⠿⣜⣯⢷⣏⡿⣽⣹⢯⣞⣯⢯⣟⡾⣽⣛⣾⣫⡽⢯⣷⣫⣿⡟⢠⣯⣄⢿⣿⣿⣿⡧⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⡱⢦⡝⢳⡒⠦⡄⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣎⡱⣋⠶⣙⢎⡵⢱⠱⣙⠲⡘⢎⡱⢌⢎⡑⢣⠱⣡⢣⡑⠦⡙⣌⢃⢆⠣⡜⠢⣅⠣',
			" \ '⣿⣞⣿⡽⣷⢯⡿⣽⣻⣟⡶⣯⢟⣯⣗⡯⣿⠽⣞⣯⢾⣝⡧⣟⡧⢿⣜⡯⢾⡽⣞⡽⣶⢏⣿⣛⡶⣯⣿⠇⠿⢱⣿⢸⣿⣿⣡⣷⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣎⠧⡝⢲⠱⣌⡠⢘⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠳⣍⢞⡱⢎⠴⣋⢜⣢⡙⡱⢣⠜⡌⠦⣙⢂⠳⡐⠦⣑⢣⠱⡌⠎⡜⢢⡑⢣⠆⢣',
			" \ '⣿⡾⣽⣻⡽⣯⣟⣷⣻⠾⣝⣳⣟⣞⡾⣽⢞⡿⣽⣺⣝⣮⡽⣞⡽⣏⡾⣝⣯⠾⣽⣹⢞⣟⣮⢿⣱⢯⣿⠀⣐⡊⣿⣧⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣜⢣⠷⢤⡡⠉⠆⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡎⡵⣊⢮⡱⢍⡲⢩⡒⢤⢣⡑⢣⠚⢬⡑⢢⢍⠲⣉⠖⡡⢎⠱⡘⡜⣠⠣⣘⢂⢎⡡',
			" \ '⣿⡽⣷⢯⣟⣷⣻⢾⣽⣻⡽⣳⢾⣝⡾⣭⢿⣹⢧⢷⢾⣱⡟⡾⣵⢏⣷⢻⡼⣻⡵⢯⣾⣹⢮⣯⣻⣿⣧⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣶⣭⡞⢣⢏⣬⡱⡌⢒⡠⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡜⢲⠍⣦⠱⡎⡜⣡⠚⡔⢢⡙⢢⡙⢦⡘⢥⢊⠵⡨⠜⡐⢎⠱⡐⢆⡡⢒⡡⢊⠴⡐',
			" \ '⣿⣳⣟⡾⣽⢯⣟⡾⣽⣫⢷⣻⣞⣽⣳⣛⣞⢯⣞⠾⣼⢏⣷⡳⡽⣞⡽⣞⢧⡿⣱⠾⣭⡟⡾⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠾⢞⡩⣇⠣⠌⡑⢺⣿⣿⣿⣿⣿⣿⣿⣿⢟⣿⣿⣿⡑⢎⡴⢩⡒⢥⠣⣍⠲⣑⠪⡑⢎⡱⢨⠱⡌⢚⠤⢃⠲⡑⡌⢆⠓⡌⢃⠎⡱⠘⡄⢣',
			" \ '⣿⡽⣞⡿⣽⣻⢾⣽⣳⢯⣟⡵⣞⣧⢷⡻⣼⢏⣾⢻⡽⣺⢧⢿⣹⢾⣹⡞⣯⠾⣝⡯⣗⢿⡿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣖⣿⢯⢀⢒⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⡶⡷⣎⠷⣤⢓⡒⣩⢒⣿⣿⣿⣿⡟⡹⠋⢴⣆⡘⣿⣷⣏⢲⡘⢥⡙⢆⠳⣨⠱⠌⡥⣙⠢⣅⠣⢃⠍⡆⠣⠍⠦⡑⠌⡌⠱⡈⠆⡜⢠⠃⡜⢠',
			" \ '⣿⡽⣯⣟⡷⣯⣟⡾⣵⣻⠾⣽⣻⡼⣳⢏⣷⢻⢮⣏⡷⣏⢿⡺⣽⣚⣧⢟⣧⢿⣹⢾⣹⢾⣹⢟⡿⢥⣼⣿⣿⣿⣿⣿⣿⣿⣿⢳⠚⡼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣭⡛⠿⡵⣉⠞⣩⠳⢦⡀⢎⣽⣿⣿⣿⣇⢠⣅⠮⠿⢿⠿⣿⣗⠦⣙⢢⡙⣌⠳⣄⠫⡜⡰⢡⠣⡔⢩⢊⠜⡰⢩⠘⡰⢁⠞⡄⢣⠑⡌⠔⡡⢊⠔⡡',
			" \ '⣿⣽⣳⣯⣟⡷⣯⣟⣳⣽⢻⣳⣭⠷⣏⣟⡮⣟⡽⢮⣗⢯⡯⢷⡳⣏⣾⢫⣞⣳⢯⢾⣹⡞⣽⡞⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡭⣇⡋⡔⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣛⢮⡓⢦⡙⣷⡳⣬⣦⢥⡛⣤⡙⣦⣿⣿⣿⣿⣏⣿⢸⣿⣿⣿⣿⣾⣿⡜⣌⠣⣜⠰⢣⢌⡱⢢⢙⣂⠳⢌⡡⠎⢆⡑⢢⠡⡑⢊⠴⡈⢆⠱⣈⠒⡡⠎⡰⢁',
			" \ '⣿⣞⣷⣻⢾⣽⣳⢯⣷⢫⣯⢷⣚⣯⡽⣞⡵⣯⢽⡻⣼⣛⠾⣯⢽⡳⣽⢻⡼⣽⡺⣏⡷⣽⢣⣟⡞⣿⣾⣥⣿⣿⣿⣯⣿⡳⢷⡈⡑⠌⢠⡸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡽⣶⣍⢏⡞⣴⣙⣦⡹⢆⣿⣴⣽⣾⣿⣿⣿⣿⠐⡻⢷⢩⣿⣿⣿⣿⣿⡗⣨⠱⣌⠹⣂⠎⡔⢣⢌⠢⢃⠆⢢⠍⢢⠘⡄⢣⠘⣐⠢⡑⢌⠢⡁⢎⠰⡁⢆⠡',
			" \ '⣿⢾⣳⣯⢿⡾⣽⣻⣼⣻⢞⣽⣹⢶⣻⢼⣻⢼⣳⡻⣵⣫⢟⡮⣗⣻⡼⣳⡽⣖⣻⡝⣾⡱⣟⢮⣽⡟⢻⣿⣿⣿⣟⣿⣯⢳⣦⣷⣶⣿⣿⢿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣼⣆⢳⣎⠿⣖⣾⣿⣾⣿⣿⣿⣿⣿⡀⣟⢈⣦⣹⣿⣿⢿⣿⠓⡤⢓⣌⢣⠱⡊⢜⡂⢎⡱⢊⡜⢄⠚⡄⢣⠘⡄⢃⠆⡱⢈⠆⡱⢈⠆⡱⢈⠄⡃',
			" \ '⣿⢯⣟⡾⣯⣟⡷⣯⢶⣏⣟⡮⣗⣻⡼⣏⡾⡽⢶⡻⣵⢫⣾⡹⣞⡵⣫⢷⣹⢞⡵⣻⢖⣻⡝⣾⣿⠁⠰⠟⣿⣯⢸⣿⣯⡧⣴⣠⣴⣶⣦⣄⣳⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⢿⣿⣿⣮⣷⣾⣿⣿⣯⣿⣿⣿⣿⣿⣿⣿⣟⠃⢿⣿⠟⣽⣿⣿⠣⡙⡔⢣⠜⣢⠣⢍⠢⡙⢄⢢⠡⡘⢄⠣⡘⢄⠣⡘⢄⠊⡄⠣⡐⢄⠃⡔⢠⠃⡌⡐',
			" \ '⣿⢯⡿⣽⣻⢾⡽⢯⡷⣞⢧⣟⣭⠷⣝⡾⣱⠿⣭⢗⣯⢳⡞⣵⡻⣼⣛⢮⡗⣯⡝⣧⡟⣧⢻⡞⣿⠀⠀⣦⣿⣿⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣹⢯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣠⣛⣷⠿⣫⣾⢃⠧⡱⡘⢥⠚⣄⠳⣈⠱⡈⢆⠢⡑⢌⠢⡑⢌⠢⡑⠰⡈⢆⠡⢃⠌⡂⠜⡠⢂⠅⢢⠁',
			" \ '⣿⢯⣿⣳⣟⣯⣟⣯⠷⣏⡿⡼⣞⢯⣻⠼⣏⣟⢮⣻⡜⣯⢞⣳⡽⣣⢯⣳⢻⡼⣽⢲⡟⣼⡳⣏⢿⣆⠀⢿⣿⣿⣿⣯⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠶⢟⣿⢅⠺⡰⢡⡙⠤⢋⠤⠓⡄⢣⠘⡄⢣⠘⡄⢣⠘⠤⡑⢨⠑⠌⡄⢃⠢⡘⠄⡃⠔⣁⠊⡄⢃',
			" \ '⣿⣻⣞⡷⣿⢮⡽⣞⣿⡹⣞⡽⣞⢯⣳⢻⡝⣮⢟⡶⣻⡝⣞⣧⢻⡵⣫⣗⢯⣳⡭⢷⣫⢷⡹⣎⡯⢿⣆⠘⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⢀⢻⡯⢌⢣⡑⢧⠘⡥⢋⠌⡓⢌⠢⡑⢌⠢⡑⢌⠢⢉⠆⢡⠂⡜⡐⢌⠂⡅⠢⡑⠌⢒⡀⠣⠌⡄',
			" \ '⣿⣳⢯⡿⣽⣏⡿⣽⣲⢟⡽⣞⣭⢷⣫⢟⡼⣏⡾⣳⢧⣛⢷⡺⣝⡾⡵⣞⢯⡖⣯⡳⣝⡮⢷⡹⣞⣻⣿⡄⣿⣿⣿⡟⢛⣫⣿⣿⣿⣿⣿⣿⠟⣿⠛⢿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠸⣹⡟⣌⠲⣡⠊⡕⢢⠡⢚⠰⡈⠖⡡⢊⠔⠡⢂⠱⡈⢌⠂⡅⢒⡈⢄⠣⡐⢡⠂⢍⠂⡌⢡⠒⠠',
			" \ '⣿⡽⣯⣟⡷⣯⢷⣳⡽⢾⣹⡞⡽⣎⡷⣫⡽⣞⡵⣛⣮⢟⣮⢽⣣⢟⣵⢫⡾⣹⢖⣯⢳⡝⣧⢻⡜⣷⣿⣿⣿⣿⣿⣴⣿⡿⡏⢻⣿⣟⣤⣽⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠠⢚⡯⣐⠣⢆⠹⣠⢃⠣⢌⠢⡑⠌⠴⢁⢊⠱⡈⢆⠘⡠⢃⡘⢄⡘⢄⠢⢑⢂⠩⢄⠊⡔⠡⠌⡡',
			" \ '⣿⣽⣳⣯⣟⣷⣛⣶⢻⡝⣧⡻⣝⢾⣱⣏⢷⣹⢞⡽⣎⢿⡜⣧⣛⠾⣜⢯⣳⣛⠾⣜⢧⡻⣜⢧⡻⣜⣿⣿⣿⣿⣿⣿⡟⠳⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠌⡐⢫⢄⠫⡜⢠⢃⠌⡒⢌⠢⢑⠊⡄⠣⢌⠰⡐⡈⢆⠡⢂⠔⡂⠔⡈⢆⠡⢊⠰⡈⠒⢄⠣⡘⠠',
			" \ '⣿⣞⣷⣻⣞⡾⣝⡾⢯⣽⢺⡵⣏⡟⣶⡹⣞⡽⣚⡷⣹⢮⡻⣵⢫⡟⡽⣎⠷⣭⣛⢮⡳⣝⢮⡳⣝⡞⡶⣿⣿⣿⣿⡿⠈⢀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠬⣙⠆⢳⠘⠤⣉⠆⡱⢈⢆⠡⢊⠰⡁⢆⠡⢂⠱⣀⠣⠌⢒⡈⢆⠡⢂⠱⡈⠤⢡⠉⡂⢆⠡⡁',
			" \ '⣿⢾⣽⣳⢯⣟⡽⣞⡿⣜⣳⡽⣺⡝⣶⢫⢷⡹⣝⠾⣭⣳⢻⣜⡳⣽⢳⣭⣛⢶⣭⢳⡝⣮⢳⡝⣮⣝⡳⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⡈⠴⣈⢏⠰⣉⠒⡡⢊⠔⡡⢈⠆⡡⢒⠈⡔⡈⢆⠡⡐⢂⡑⠢⡐⢂⠅⡊⠔⡠⢃⠢⡑⠨⠄⡃⠔',
			" \ '⣿⣻⢾⣽⣳⢾⣹⣳⢽⡺⣵⢫⢷⡹⣞⡽⢮⣽⣚⢯⣳⢭⣳⢭⣳⢭⣳⢮⡝⡾⣜⢧⡻⣜⢧⡻⢶⣭⢳⢧⣿⣿⣿⣿⣿⣿⣛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⡐⢈⠲⢡⢎⡱⢄⡩⢐⠡⢊⠄⣃⠰⢁⠢⡑⠰⡈⢄⠃⡔⣁⠢⡑⢄⠃⡌⠰⣁⠒⡄⢃⠌⡑⢌⠰⢁',
			" \ '⣿⣽⣻⢾⡽⣞⣧⢟⣞⣳⡭⣟⢮⢷⡹⣞⣳⢮⡝⣾⣱⢻⡜⣧⣛⢮⡳⣏⢾⣱⢏⡾⣱⢏⡾⣹⢳⣎⡟⡾⣴⢛⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠭⡀⢡⠌⡡⢂⡅⢺⡔⡨⢔⡡⢊⡅⢒⠠⡑⣈⠒⡈⢅⠒⣈⠒⡐⢄⠒⡨⠐⡌⠰⣁⢂⠒⡈⢆⡘⠰⢈⠢⢁',
			" \ '⣿⢾⡽⣯⢷⣻⢮⣛⣮⢳⣝⣮⣛⢮⢷⡹⣎⢷⣹⠶⣭⣳⣛⠶⣭⡳⣝⡞⣧⣛⢮⣳⡝⣮⢳⣝⡳⢮⣝⡳⣯⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢻⡁⠞⡌⠐⡤⠂⠤⢡⠘⣐⠣⣏⡐⠆⡔⣡⠈⡆⡑⠰⣀⠃⡜⢠⢊⡐⢌⠰⣈⠂⡅⢃⠌⡡⢐⢂⠱⢈⠆⢌⠡⢊⠄⠡',
			" \ '⡿⣯⣟⡷⢯⢷⣫⠷⣭⢷⣚⢶⡹⢮⡳⣝⢮⣳⢭⣛⢶⣣⢏⡟⡶⣝⢮⣝⠶⣭⡳⢧⣻⣜⡳⢮⣝⡳⢮⣽⣟⣩⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣍⡳⢍⢦⣹⡰⢬⠑⡠⠨⠰⢀⣋⠄⠳⣼⡄⣙⠰⢠⡘⠤⣁⠣⡐⢌⡐⢢⠐⡰⢈⠢⠄⡃⠔⣈⠢⠑⡂⢌⠢⡁⢎⠠⠃⡄⢊⠐',
			" \ '⣿⢷⣯⣟⢯⢷⣫⣟⢮⣳⡝⣮⣛⢧⣛⢮⡳⣝⡮⣝⣮⢳⣏⣞⡳⣝⠾⣜⡻⢶⣹⢳⡳⢮⣝⡳⢮⣝⡳⣞⢿⣭⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣭⢻⣌⠳⣭⢖⣦⠳⣌⢌⠡⢁⠒⢡⠈⢎⠡⠜⣷⡈⠜⣠⠘⡰⢀⢣⠘⡄⠒⡄⢣⠐⡡⢂⠱⢈⠒⡠⢁⠣⢘⠠⢂⠅⢊⠐⠡⠐⠂⠌',
			" \ '⣿⣻⢶⢯⣛⡾⡵⣞⢯⢶⡹⣖⢯⡞⣭⣳⢻⣜⡳⣝⢮⡳⣞⡼⣳⢭⣛⣮⡝⣧⢏⡷⣹⢳⢮⣝⡳⣎⠷⣭⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢯⣽⣳⢮⡳⣎⡳⡼⡞⡴⢫⡜⠌⢦⠉⠈⠄⡐⠂⡜⢨⢽⣿⡔⢂⠱⣀⠃⢆⠱⣈⠱⡈⢆⠱⣀⠣⡘⢄⠣⡐⢡⠊⡄⠣⢌⠘⡀⢊⠡⠌⠡⢈',
			" \ '⣟⡷⢯⣟⡽⣺⣝⢾⡹⣎⢷⡹⢮⣝⠶⣭⡳⢮⣝⢮⡳⣝⢮⡳⣝⢮⣳⢮⣝⢮⡻⡼⣭⣛⠾⣜⡳⣭⣛⠶⣭⢿⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣏⣟⡳⢞⡥⢯⡽⣭⢳⢧⡹⢜⣣⡙⢾⡀⠎⠡⠀⢄⠡⡀⠣⢎⢿⣿⣧⣖⡠⢉⠆⡒⠤⡑⡈⢆⠱⣀⠣⡘⢄⠣⡘⢄⠣⡘⠰⡈⠆⡁⠢⠐⡈⢂⠁',
			" \ '⣯⣟⣟⣮⡽⣳⢞⣯⢳⡝⣮⢽⡳⣎⡟⡶⣝⢯⡞⣧⣛⢮⢷⡹⣞⢧⣛⠾⣜⢧⡻⣵⢣⣏⠿⣜⡳⢧⣏⠿⣜⡧⣏⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣟⢾⡸⣹⡍⣞⣱⠞⣥⢻⢦⡙⣦⠧⡙⢦⡑⢎⠡⡀⠆⠰⢀⢣⠘⡼⣷⣏⡿⣿⣶⣾⣤⣵⣠⡑⣈⠒⠤⢑⠰⡈⢆⠱⡈⢆⠡⢃⠜⡠⠑⣂⠑⡠⠁⠌',
			" \ '⣷⣻⡼⢶⣻⢵⣫⢞⣧⢻⡜⣧⢻⡼⣹⢳⡝⣮⡝⡶⣭⣛⢮⣳⡝⣮⣝⡻⣜⢧⡻⣜⡳⣞⡽⢮⣝⡳⣎⠿⣜⡳⣝⠾⣭⣛⠿⡿⢿⠿⣿⢿⣿⠋⠛⠛⠿⣿⣿⣿⣿⣿⣿⣿⣞⡧⢷⡩⡜⠶⣥⢯⡙⣧⣾⠵⣣⠝⣌⠣⡜⢢⠡⡁⠂⠅⣂⠢⠘⢤⢫⡝⣻⣷⣻⢞⣽⣻⣟⣿⡿⣿⣶⣮⣴⣡⣈⠆⡑⠌⢢⠁⢎⡐⠡⡀⠎⢠⢁⠂',
			" \ '⣷⣳⢻⣏⣞⢧⣛⡾⣜⢧⡻⣜⣧⢻⡵⣫⢾⡱⣏⢷⣣⢟⣮⢳⡝⡶⣭⢳⡝⣮⢳⣭⢳⡝⣞⡳⢮⡝⣾⡹⢧⡻⣜⡻⢶⡍⡷⣍⣛⠮⡵⢎⣽⠀⠀⠀⠀⢮⣿⣿⣿⣿⣿⣿⡿⡞⣥⢳⡉⢳⡜⣦⢿⡻⣌⠷⣢⠝⣠⠒⡌⢠⠃⡔⢁⠂⠴⢈⡑⢎⡳⢼⢯⡷⣯⣟⣮⢷⣻⣾⣟⡿⣽⣿⣻⣿⣿⣿⣷⣾⣤⣉⡤⠘⢠⠁⡌⠂⡄⢂',
			" \ '⡷⢯⣛⣞⢮⡻⣜⡳⣝⢮⢷⡹⣎⢷⡹⢧⣏⢷⡹⣎⢷⣫⢞⣧⢻⡵⣫⢷⡹⣎⢷⡺⣝⠾⣱⢏⡳⣝⢶⣹⢳⡝⣧⣛⢧⠞⡵⢎⢧⡛⣜⢣⢾⡃⠀⠀⠀⠠⣼⣿⣿⣿⣿⣟⣷⡻⣬⢓⣌⠶⣹⣯⣗⣳⣭⠳⡆⣍⠲⠠⠄⠃⡜⠐⡌⡀⢂⠬⠑⡎⡵⢋⡞⣹⢳⣻⣾⣿⢿⣟⣾⣟⣷⣿⣿⣽⣷⡿⣯⣿⣿⣿⣿⣿⣦⣴⣀⠡⠐⠂',
			" \ '⣟⢯⡽⣎⣯⢳⡭⣗⢯⡞⣧⢻⡜⣯⣝⡳⢮⣏⢷⡹⣎⢷⣫⢞⣧⢻⡵⣫⢷⡹⣎⠷⣭⢻⡥⣏⢷⡹⣎⢷⣫⢞⡵⣭⠺⡭⣝⢮⢣⡝⣬⠓⡾⡇⠀⠀⠀⠐⢼⣽⣿⣿⣿⣿⣷⣿⠶⣏⢬⣛⣷⣻⣞⡷⣊⠷⣉⠦⣁⠣⣘⠐⡈⠱⣀⠖⠡⠀⡝⡘⡔⠫⡔⢣⡞⣿⣿⣿⣿⣿⣿⣾⣿⣿⣾⣿⣾⢿⣟⣷⡿⣯⣿⣿⢿⣿⣿⣿⣾⣤',
			" \ '⣯⣛⢾⡱⣏⢷⡹⣎⢷⡹⣎⢷⣛⠶⣭⣛⠷⣎⢯⡳⡽⣎⢷⣫⢞⣧⢻⡵⣫⠷⣭⢻⡜⣧⢳⡝⣎⢷⡹⣎⢷⣋⠾⣜⢫⡵⣚⡬⢳⡜⢦⡛⡴⣧⠀⠀⠀⠀⠀⢙⣿⣿⣿⣿⣿⣯⡿⣜⡶⣹⣾⢯⣟⣳⡽⢎⡕⢢⠰⣁⠣⡜⢀⠡⡘⢠⠁⢆⠐⡤⢩⠓⣬⢓⡞⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣯⣿⣻⣿⣿',
			" \ '⡷⣭⡗⣯⠽⣎⢷⣫⢞⡵⣫⡞⣭⣛⠶⣭⢻⡼⣣⢟⡵⣫⢞⡵⣫⢞⣧⢻⡵⣻⡜⣧⢻⣜⡳⢞⡭⡞⣵⢫⡞⣭⢻⢬⡳⣜⡱⢺⡱⢎⢧⡙⡖⣿⠀⠐⠄⢀⠀⠀⠉⣿⣿⣿⣿⣿⣟⡷⣏⣷⣿⣿⢿⣻⡝⢮⡜⣡⠓⠬⣑⠜⣨⠂⡁⢃⡚⢤⡈⢠⢃⡝⢦⣛⡾⣽⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣿⣽⣿⣽⣿',
			" \ '⣟⡵⣻⣜⡻⣜⢧⣛⢮⡳⢧⡻⣵⢫⡟⡼⢧⡻⣵⢫⡞⣵⢫⡞⣵⢫⡞⣧⣛⢶⡹⣎⢷⣪⠽⣹⢼⣙⢮⣳⢹⡜⣣⢳⣙⠦⣝⢣⡝⢎⢶⣭⡿⠛⠀⠀⠀⢹⠆⣄⣀⠿⣿⣿⣿⣿⣯⣿⡽⣾⣿⣯⡿⣧⣛⢧⡚⡥⢊⠶⣩⢎⡡⢚⠄⢃⠜⡢⣄⠣⡘⣬⢣⠿⣽⣳⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
			" \ '⣯⢞⡵⣎⡷⣹⢎⣯⢳⡽⣳⡝⣮⢳⡽⣹⢧⡻⣜⢧⡻⣜⢧⣻⡜⣧⣛⢶⡹⣎⢷⡹⢶⣩⢏⠷⡮⣝⡞⣬⡓⣞⣱⢫⡜⣹⢬⣳⡾⠟⠋⠁⠀⢀⠀⠀⠀⢸⡅⣦⢉⡉⢿⣿⣿⣿⣿⣽⣿⣿⣿⣿⡿⣖⡻⢦⡛⣌⢏⡾⡵⢪⡕⢯⣌⢣⣌⡱⢎⡧⣙⣤⢏⡿⣵⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
			" \ '⢷⣫⢞⡵⣫⢗⡯⣞⢧⡻⣵⢻⡜⣧⢻⡵⣫⢷⡹⣎⢷⡹⣎⢷⡹⢶⡹⣎⢷⡹⢎⡗⣯⣜⢫⢷⡹⡖⣽⠲⣝⡼⢲⣍⣾⠟⠋⡁⢀⠀⠀⠀⢰⣿⠀⠀⠀⠈⡇⠸⣧⣌⣻⣟⣿⣿⣿⣿⣿⣿⣿⣿⡿⣥⣋⢷⡙⣞⣮⡽⣽⢳⣚⠷⣜⡲⣬⡳⢯⣶⢻⣼⣻⣞⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
			" \ '⣟⡼⣫⢞⡵⣫⢞⡽⣎⠷⣭⢳⡝⣮⢷⡹⢧⣏⢷⡹⣎⢷⡹⢮⡝⣧⢳⡝⡮⡝⣏⡞⢶⢎⡿⢬⡳⣝⠮⣝⣲⣽⠟⠋⠀⠠⠀⢀⡀⢀⡈⢷⣾⣿⠀⠀⢠⠀⢻⡄⢽⣷⣎⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢧⡍⣎⢿⣼⣳⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣾⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
			" \ '⡾⣱⣏⣞⡳⣝⢮⣳⢭⡟⣼⢫⡞⣵⢫⣝⡳⣎⢷⡹⣞⢧⣛⢧⢻⡜⣳⠞⡵⣋⢶⡹⣚⢮⡜⢧⣛⡼⣹⣶⠟⢡⣀⠈⢒⠠⣇⢢⣽⣦⣿⣿⣿⣿⠃⠀⠈⢣⠀⢳⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣟⡼⣣⢟⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⢿⣻⢯⣟⡳⡽⣎⢷⣛⣾⣳⣿⣿⣿⣿⣿⣿⣿',
			" \ '⣳⢯⡽⣹⢧⡻⣜⢯⡞⣵⢫⡞⣵⢫⡞⣽⢣⡟⡼⢧⡻⣜⡻⣜⢮⣓⢏⡖⢧⠻⣜⡣⢟⣬⢓⡮⢫⣵⡿⠋⠀⠈⢻⣤⣚⡤⢿⡞⣿⣻⣿⣿⣿⠏⠀⠀⠀⠈⡆⠸⡄⠘⣿⣿⣿⣿⣿⣿⣿⣿⡵⣿⣿⣿⣧⣻⣾⣿⣿⣿⣿⣿⣿⣿⢿⡿⣿⣿⡿⣟⣿⣯⣿⣟⡿⣿⣻⣿⣽⣟⣷⣿⢾⣟⡾⣽⣳⢧⣻⣼⣻⣽⣿⣿⣿⣿⣿⣿⣿⣿',
			" \ '⢯⡞⣵⢏⡾⣱⢯⡞⡽⣎⢷⡹⣎⢷⡹⣎⢷⡹⣝⢧⡟⣼⡱⢏⡶⢭⡺⣜⢫⣝⡲⢭⣓⢮⡹⣼⡟⠃⠀⠀⠀⣐⡠⠞⣿⡽⢎⡽⣶⢿⣾⢏⡆⠀⠀⠀⠀⠀⠑⠀⣧⠀⢺⣿⣿⣿⣿⣿⣿⡿⠀⣿⣿⣿⣿⣿⣿⣿⡿⣿⣻⣝⡮⣝⡾⣿⣳⣿⣟⣿⣿⣽⣷⣿⣿⣿⣿⣷⣿⣿⣿⣯⣿⣾⣟⣷⣿⣻⣷⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
			" \ '⣟⡼⣣⡟⣼⢣⡟⣼⢳⡝⣮⢳⡝⣮⢳⡝⣾⡱⣏⠾⣜⢧⡝⡞⣜⡣⢗⣎⠳⣎⣵⣫⣼⣶⠟⣉⣠⠀⠀⠀⢀⡿⣷⢍⣙⣧⣿⣾⣿⣫⣝⣾⣤⣄⣲⣤⣹⣦⠲⠤⣄⠀⠈⢿⣿⣿⣿⣿⣿⠃⢤⣿⣿⡿⢫⣙⢮⣳⣿⣿⣿⣿⣿⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣻⣷⣿⡿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⡷⢯',
			" \ '⣞⡳⣝⢾⡱⣏⣞⢧⡻⣜⢧⡻⣜⢧⡟⣼⢣⡝⣮⣛⡼⢎⣞⡹⡲⣍⣷⡾⠟⢋⢉⣥⣶⣾⣿⣿⣿⣿⠿⡩⢞⣷⠟⠉⡐⢎⠛⡍⢯⡽⣻⣿⡻⢿⣿⣿⣿⣿⣷⣦⣜⣦⡀⠹⣿⣿⣿⣿⠏⢀⣿⡿⠉⢁⠣⣞⣯⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⡿⣟⣿⣟⣿⡾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⠾⣝⢯',
			" \ '⣯⣝⢾⣣⢟⡼⣎⡷⣹⢎⣯⢳⡝⣮⡝⣮⢳⡝⢶⡹⣜⣫⣖⣽⠿⢋⡡⢴⠶⣞⡾⣞⣷⣿⣾⣿⣿⣟⡶⣡⣿⠋⠀⠀⢁⠢⠕⡚⢡⢎⡱⠭⣽⠿⣟⢿⡻⣝⣮⣿⣿⣿⣷⡧⣿⣿⣿⡋⢥⣿⡏⣠⣄⣠⣔⣫⢿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⢿⣿⣟⡿⣿⣾⣿⣿⡿⣟⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⢿⣻⣽⣯⢿⡽⣞',
			" \ '⡷⢮⣳⡝⣮⢳⡝⣾⡱⣏⡞⣧⣛⢶⣽⣮⡷⠿⢛⠛⡫⢍⠋⡅⣎⢱⡙⣎⠿⣜⣻⡽⣿⣾⣿⣿⣿⣿⣿⣿⠏⢀⢠⡐⣠⠉⠒⠬⡁⢎⡰⢿⣬⡻⣜⣯⢷⣻⣿⣿⣿⣿⣿⣷⣉⡟⢦⡑⣮⢯⣴⣭⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢷⣻⡾⣿⣟⣯⡿⣿⣿⣯⣟⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⡷⣯⡿⣽⢯',
			" \ '⣽⢳⢧⡻⣜⢧⡻⢶⣹⢮⣽⡶⠿⠛⠉⠀⠐⠤⠣⡘⠐⢊⠒⡌⢂⠧⣜⡎⣷⣹⡾⣽⣷⡿⣿⣿⣿⣿⠿⣡⠲⣌⢶⡹⢿⣆⣙⣲⠱⣮⢙⠶⣣⢿⣽⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡦⠥⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣻⢷⣯⣟⣷⣿⣳⣯⢿⡽⣷⣿⣾⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣳⣿⣿⡷⣟⣯⣿',
			" \ '⣳⢯⡞⣵⣫⢞⣽⣳⠟⠋⠁⠀⠀⠀⠀⠐⠠⠂⢀⠈⠄⢡⠘⡰⣍⡞⣴⢯⡷⣯⣟⣿⡾⣟⡿⡹⣍⢆⡳⢣⡽⣘⣮⡟⣽⣿⣿⢣⠷⣌⣯⣛⣷⣻⢾⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⣶⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣟⣯⢷⡿⣜⢯⢾⣭⢿⡿⣿⡿⣿⣾⢿⣿⡿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣾⣿⣻⣿⣾',
			" \ '⣟⢮⣽⢺⣵⡿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠤⣀⠢⡜⢢⡝⢲⣟⡾⣽⣯⣿⣿⣻⡽⣛⢥⢳⡱⢎⢎⣝⢣⡻⣵⣳⡿⣟⣿⣞⣯⢿⣝⡶⣛⡾⣽⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠉⢳⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢯⣟⡾⣞⡯⣝⢿⣫⡗⣾⣯⣿⡽⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣟⣿⣷⣿',
			" \ '⣻⢞⣼⡟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣂⠔⣠⠒⣭⠳⡜⣧⣿⣟⣷⣯⢷⣫⢇⡧⣙⢎⢣⠳⡞⡼⣌⢷⣻⢽⣯⢿⡽⣯⣟⡞⡿⣮⣽⢳⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠘⢦⡈⢿⣞⣿⣿⣿⣿⣷⡿⣿⣟⡾⣽⣟⡾⣽⢣⡟⣽⣺⢷⣻⢽⣳⣯⣿⢿⣻⣿⣻⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿',
			" \ '⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⢬⡸⣔⢫⢖⣻⣾⣿⠿⣝⡾⣡⠧⣍⠞⣰⠙⢎⡲⢥⣛⣼⣻⡼⢯⡟⣞⢯⣿⣱⢿⡜⣷⡝⣾⢻⣶⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⢳⣄⡆⣹⣜⣿⣿⣿⣿⣿⣿⣿⢿⣟⣿⣳⢏⡷⣭⢗⣯⣛⣷⢻⣾⢯⣿⣻⣽⣿⣿⣿⣿⣿⣿⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
			" \ '⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⢆⡞⠶⣱⣮⣾⣿⣿⢿⡽⣛⡮⢱⡡⣚⡜⡸⢣⢛⣤⡝⣫⣼⠶⡽⢾⡹⡞⡭⢞⠶⢭⢞⡹⣞⡽⣮⢿⣟⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡦⠀⣻⣽⢻⡼⣾⢿⣿⣿⢿⣻⣿⣿⣾⣳⢯⡻⣼⢛⡾⢧⣻⣼⣻⣾⢿⣽⣿⣻⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
			" \ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡒⡌⣞⣬⣿⣿⣿⣿⣿⣯⣿⡟⢧⠘⡅⣶⢩⠞⣱⢛⣼⢲⡝⣣⢟⡽⢞⡹⢻⡱⣛⢮⣙⣧⢫⡷⣭⢷⣯⣟⣾⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣰⣿⣿⣻⣿⣯⣿⣿⣿⣿⣿⣟⣮⢷⡏⣯⢳⣭⢻⡼⣟⣧⣿⣹⣽⣻⣯⣿⢿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
			" \ '⠀⠀⠀⠀⠀⠀⠄⠈⠀⠀⠀⡜⣰⣿⣿⣿⣻⣽⣯⢿⣿⣯⠳⡜⢠⢛⡘⢤⡃⣞⡥⢏⡞⡶⣙⢮⣟⡼⡳⣍⣳⣫⡝⣮⣝⣮⣻⡽⢯⣿⣾⣽⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⡷⢧⣿⣿⣿⣿⢯⣟⡾⣽⢻⡯⣟⣳⡛⢾⣳⣽⡽⣞⡿⣿⢾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
			" \ '⠀⠀⠀⠀⠀⠀⠀⠀⠠⡘⡼⣼⣿⣻⣷⢿⣽⣿⣽⣿⣿⣦⠃⡄⠙⠦⠸⠀⡗⡌⢲⡛⣜⠶⣙⡞⣼⣱⢯⣝⣣⢿⣝⣯⣟⣾⣳⣿⣿⢯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⡿⣼⣿⣋⢿⡟⣞⣻⣞⡷⣹⢏⡷⣫⢷⣹⣛⣷⣻⣽⣿⣽⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
			" \ '⠀⠀⠀⠀⠀⠀⢠⡉⣥⢻⣽⣷⢿⣷⣯⣿⣿⣿⣿⣿⣿⠂⠄⠡⠒⠐⠈⠳⢐⡚⡡⢜⡭⢻⡴⣛⢶⣭⡞⣧⣟⣯⢿⣭⣟⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⡛⢿⠙⣇⣿⢫⡝⣭⣓⣮⠷⣳⢾⣱⢟⣯⣟⣯⣷⣻⣾⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣻⣷⣟⡷⣯⣿⣿',
			" \ '⠀⠀⣀⣄⣠⠌⢦⡱⣯⣿⣻⣾⡿⣯⣿⣿⣿⣿⣿⣿⡏⠙⠀⠀⠀⡰⣃⡤⢋⣜⣍⣫⣜⣣⣷⣻⣟⣶⡿⣟⣾⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⡉⠁⡫⢜⠣⢯⣜⣦⠳⣬⠷⣽⣚⣷⣞⣳⣾⣷⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢯⣿⣹⣿⣽⣯⣿', ]
	" }}}
	" Vimsidian {{{
	" NOTE: Requires ripgrep
	let g:vimsidian_path = $HOME . '/_MEGA/0/! Obsidian'
	let g:vimsidian_complete_paths = [g:vimsidian_path]
	let $VIMSIDIAN_PATH_PATTERN = g:vimsidian_path . '/*.md'

	function! s:vimsidianNewNoteAtNotesDirectory()
		execute ':VimsidianNewNote ' . g:vimsidian_path
	endfunction

	augroup vimsidian_augroup
		au!
		au BufNewFile,BufReadPost $VIMSIDIAN_PATH_PATTERN nn <buffer> sl :VimsidianFdLinkedNotesByThisNote<CR>
		au BufNewFile,BufReadPost $VIMSIDIAN_PATH_PATTERN nn <buffer> sg :VimsidianRgNotesLinkingThisNote<CR>
		au BufNewFile,BufReadPost $VIMSIDIAN_PATH_PATTERN nn <buffer> sm :VimsidianRgNotesWithMatchesInteractive<CR>
		au BufNewFile,BufReadPost $VIMSIDIAN_PATH_PATTERN nn <buffer> si :VimsidianRgLinesWithMatchesInteractive<CR>
		au BufNewFile,BufReadPost $VIMSIDIAN_PATH_PATTERN nn <buffer> st :VimsidianRgTagMatches<CR>
		au BufNewFile,BufReadPost $VIMSIDIAN_PATH_PATTERN nn <buffer> <C-k> :VimsidianMoveToLink<CR>
		au BufNewFile,BufReadPost $VIMSIDIAN_PATH_PATTERN nn <buffer> <2-LeftMouse> :VimsidianMoveToLink<CR>
		au BufNewFile,BufReadPost $VIMSIDIAN_PATH_PATTERN nn <buffer> sk :VimsidianMoveToPreviousLink<CR>
		au BufNewFile,BufReadPost $VIMSIDIAN_PATH_PATTERN nn <buffer> sj :VimsidianMoveToNextLink<CR>
		au BufNewFile,BufReadPost $VIMSIDIAN_PATH_PATTERN nn <buffer> sN :call <SID>vimsidianNewNoteAtNotesDirectory()<CR>
		au BufNewFile,BufReadPost $VIMSIDIAN_PATH_PATTERN nn <buffer> sO :VimsidianNewNoteInteractive<CR>
		au BufNewFile,BufReadPost $VIMSIDIAN_PATH_PATTERN nn <buffer> sd :VimsidianDailyNote<CR>
		au BufNewFile,BufReadPost $VIMSIDIAN_PATH_PATTERN nn <buffer> sf :VimsidianFormatLink<CR>
		au WinEnter,BufEnter $VIMSIDIAN_PATH_PATTERN silent! call vimsidian#MatchBrokenLinks()
		au CursorMoved $VIMSIDIAN_PATH_PATTERN silent! call vimsidian#MatchCursorLink()
	augroup END
	" }}}
" NERDTree {{{
	nmap <Leader>t :NERDTreeToggle<CR>
" }}}
" QuickRun {{{
	nmap <Leader>r :QuickRun<CR>
" }}}
" Minimap {{{
	let g:minimap_width = 10
	let g:minimap_auto_start = 1
	let g:minimap_auto_start_win_enter = 1
" }}}
" Netrw {{{
	let g:netrw_banner=0
	let g:netrw_browse_split=4
	let g:netrw_liststyle=3
	let g:netrw_winsize=30

	nmap <Leader>e :Lexplore<CR>
" }}}
" Unite {{{
	let g:unite_source_history_yank_enable=1

	nmap <Leader>p :Unite -start-insert file_rec/neovim<CR>
	nmap <Leader>o :Unite -start-insert file<CR>
	nmap <Leader>i :Unite -start-insert buffer<CR>
	nmap <Leader>u :Unite -start-insert register<CR>

	autocmd FileType unite call s:unite_settings()
	function! s:unite_settings()
		imap <buffer> <C-j>   <Plug>(unite_select_next_line)
		imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
	endfunction
" }}}
" Goyo {{{
	nmap <Leader>g :Goyo<CR>

	function! s:goyo_enter()
		set scrolloff=999
	endfunction

	function! s:goyo_leave()
		set scrolloff=6
		execute 'colorscheme' g:colorname
	endfunction

	autocmd User GoyoEnter nested call <SID>goyo_enter()
	autocmd User GoyoLeave nested call <SID>goyo_leave()
" }}}
" Undo tree {{{
	 " if has("persistent_undo")
		" set undodir=$vimrc_path"/.undodir"
		" set undofile
	 " endif
" }}}
" Autosession {{{
	" let g:autosess_enabled = 1
	" let g:autosess_dir = $vimrc_path . '/session'
	" let g:autosess_autoload = 1
" }}}
" Airline {{{
let g:airline#extensions#unite#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#scrollbar#enabled = 1
let g:airline_symbols_ascii = 1
let g:airline_theme='minimalist'
" let g:airline_theme='minimalistred'
" let g:airline_powerline_fonts = 0
let g:airline_left_sep=''
let g:airline_left_alt_sep=''
let g:airline_right_sep=''
let g:airline_right_alt_sep=''
" let g:airline_symbols.readonly='RO'
" let g:airline_symbols.whitespace='!'
" let g:airline_symbols.linenr=' ln '
" let g:airline_symbols.maxlinenr=''
" let g:airline_symbols.branch=''
" let g:airline_symbols.notexists=''
" let g:airline_symbols.crypt='cr'
" let g:airline_left_sep='>'
" let g:airline_right_sep='<'
" }}}
" }}}
" FUNCTIONS {{{
	"	function! TermRun()
	"		:vsp term://env &filename %
	"	endfunction

	"	function! TermRun()
	"		:vsp term://env &filename %
	"	endfunction

	"	function Aesthetic()
	"		set laststatus=0
	"		set noruler
	"		set nonumber
	"		set norelativenumber
	"	endfunction


function! GenerateTermColors()
	let l:colors = []
	let l:term_colors = []

	" Get the current color scheme
	let l:current_scheme = g:colors_name

	" Loop through all the highlight groups
	for l:group in getcompletion('', 'highlight')
		" Get the highlight group's color definition
		let l:highlight_def = synIDattr(synIDtrans(hlID(l:group)), 'bg')

		" Skip if the group doesn't have a background color defined
		if empty(l:highlight_def)
			continue
		endif

		" Split the color definition into RGB values
		let l:rgb_values = split(l:highlight_def, ',')

		" Convert the RGB values to hex
		let l:hex_color = '#'
		for l:rgb_value in l:rgb_values
			let l:hex_color .= printf('%02x', l:rgb_value)
		endfor

		" Add the hex color to the list
		call add(l:colors, l:hex_color)
	endfor

	" Generate the termguicolors definitions
	let l:term_color_order = ['Black', 'DarkRed', 'DarkGreen', 'DarkYellow', 'DarkBlue', 'DarkMagenta', 'DarkCyan', 'LightGray', 'DarkGray', 'Red', 'Green', 'Yellow', 'Blue', 'Magenta', 'Cyan', 'White']
	for l:term_color in l:term_color_order
		let l:index = index(l:colors, l:term_color)
		if l:index >= 0
			call add(l:term_colors, l:colors[l:index])
		endif
	endfor

	" Print the termguicolors definitions
	echo 'Termguicolors:'
	for l:term_color in l:term_colors
		echo l:term_color
	endfor
endfunction
" }}}
" NVIM {{{
	if has("nvim")
		" terminal emulator escape
		tnoremap <Esc> <C-\><C-n>
		" shada
		" set directory=~/.config/nvim/swap//
		set viminfo='100,<50,s10,h,n$HOME/.config/nvim/nvim.shada
	endif
" }}}
" LANGUAGE SPECIFIC {{{
	" Python {{{
	filetype plugin indent on
	syntax on
	au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
	" }}}
" }}}
" MISC {{{
	" syntax off
" }}}
" vim: fdm=marker syntax=vim
