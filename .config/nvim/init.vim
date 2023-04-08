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
	
	" 80 Line indicator by removing syntax highlighting
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
	colorscheme usmyck
	
	" Formatting
	" Highlight text past 80 characters
	" call matchadd('ColorColumn', '\%81v', 100)
	
	"  Terminal
	
	" force 256 colors
	" set t_Co=256
	" set colorscheme to tweaked smyck
	" MOVED TO MISC TO OVERWRITE WEIRDNESS WITH VIM-PLUG
	
	"  Gui
	
	" Neovide options
	if exists("g:neovide")
	    " Put anything you want to happen only in Neovide here
		let g:neovide_cursor_animation_length=0.05
		" let g:neovide_cursor_vfx_mode = "sonicboom"
		let g:neovide_scale_factor = 0.75
	endif
	
	" Gui options
	if has("gui_running")
		set guifont=Terminus\ 8
		set guioptions-=m  "remove menu bar
		set guioptions-=T  "remove toolbar
		set guioptions-=r  "remove right-hand scroll bar
		set guioptions-=L  "remove left-hand scroll bar
		set guiheadroom=0
		colorscheme usmyck
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
		
		" move between splits
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
		
		" G+# to go to tab #
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
		"
		
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
	" let g:python3_host_prog = '/usr/bin/python3'
	
	" Resolve vimrc path from $MYVIMRC variable
	let vimrc_path = substitute($MYVIMRC, '\v(.*)/[^/]+$', '\1', '')
" }}}
" AUTO COMMANDS {{{
	augroup vertical_help
	autocmd!
	autocmd FileType help wincmd L
	augroup END
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
		" Plug ''
		call plug#end()
	" }}}
	" Vimsidian {{{
	let g:vimsidian_path = $HOME . '/Documents/MEGA/0/! Obsidian'
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
		colorscheme usmyck
	endfunction

	autocmd User GoyoEnter nested call <SID>goyo_enter()
	autocmd User GoyoLeave nested call <SID>goyo_leave()
" }}}
" Undo tree {{{
	if has("persistent_undo")
		set undodir=$vimrc_path"/.undodir"
		set undofile
	endif
" }}}
" Autosession {{{
	let g:autosess_enabled = 1
	let g:autosess_dir = $vimrc_path . '/session'
	let g:autosess_autoload = 1
" }}}
" Airline {{{
let g:airline#extensions#unite#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#scrollbar#enabled = 1
" let g:airline_left_sep='>'
" let g:airline_right_sep='<'
" }}}
" }}}
" FUNCTIONS {{{
	" function! TermRun()
	" 	:vsp term://env &filename %
	" endfunction

	" function Aesthetic()
	" 	set laststatus=0
	" 	set noruler
	" 	set nonumber
	" 	set norelativenumber
	" endfunction
" }}}
" NVIM {{{
	if has("nvim")
		" terminal emulator escape
		tnoremap <Esc> <C-\><C-n>
		" shada
		set directory=~/.config/nvim/swap//
		set viminfo='100,<50,s10,h,n$HOME/.config/nvim/nvim.shada
	endif
" }}}
" MISC {{{
	" syntax off
" }}}
" vim: fdm=marker syntax=vim
