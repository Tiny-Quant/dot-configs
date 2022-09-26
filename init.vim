" General nvim settings (no packages required)
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

" Plug-Ins 
call plug#begin()

"General form: Plug 'github link'
"Sometimes you will need to sudo install <dependencies>
"After all dependencies are install run <PlugInstall>
"Run <PlugClean> to uninstall a plug-in

"Cool bottom status bar
Plug 'https://github.com/vim-airline/vim-airline'

"Nerd Tree (file explorer)
Plug 'preservim/nerdtree'

"Vim Surround 
Plug 'https://tpope.io/vim/surround.git'

"Vim commentary 
Plug 'https://github.com/tpope/vim-commentary'

"Color schemes 
Plug 'https://github.com/rafi/awesome-vim-colorschemes'

"File type icons 
Plug 'http://github.com/ryanoasis/vim-devicons'

"Variable Side Bar
Plug 'https://github.com/preservim/tagbar'

"Git commands in Vim command bar
" Note: Git must be capital
Plug 'https://github.com/tpope/vim-fugitive'

"Track line change from last commit
Plug 'https://github.com/airblade/vim-gitgutter' 

" Send to terminal 
Plug 'karoliskoncevicius/vim-sendtowindow'

" Easy Motion 
Plug 'easymotion/vim-easymotion'

" R nice to haves 
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}

" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"Vim keybindings for working with nerd tree
":nnoremap <leader>n :NERDTreeFocus<CR>
":nnoremap <C-n> :NERDTree<CR>
:noremap <C-t> :NERDTreeToggle<CR>
":nnoremap <C-f> :NERDTreeFind<CR>

"Vim keybindings for working with surround
" Turn off default keybindings
let g:surround_no_mappings = 1

"indiviual words
nmap P <Plug>Ysurroundiw
" special cases to avoid spacing issue
nmap P( <Plug>Ysurroundiw)
nmap P" <Plug>Ysurroundiw"
nmap P' <Plug>Ysurroundiw'
nmap Pl <Plug>Yssurround
" delete surround
nmap ds <Plug>Dsurround
" change surround
nmap cs <Plug>Csurround

"visual block
vmap P <Plug>VSurround
" special cases to avoid spacing issue
vmap P( <Plug>VSurround)
vmap P" <Plug>VSurround"

" Vim Commentary Keybindings
nmap gg gcc
vmap gg gc

"Toggle tagbar
nmap tb :TagbarToggle<CR>

" Set color scheme
:colorscheme wombat256mod

" Set git gutter delay
:set updatetime=1000

" Send to terminal keybinds
let g:sendtowindow_use_defaults=0

nmap <space>s <Plug>SendDown
xmap <space>s <Plug>SendDownV
nmap <space>f <Plug>SendRight
xmap <space>f <Plug>SendRightV

" Easy Motion 
:map <Leader><Leader> <Plug>(easymotion-prefix)

" ncm general keybinds
" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
:inoremap <c-c> <ESC>

" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu and also start a new
" line.
:inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

" Use <TAB> to select the popup menu:
:inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
:inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" nvim-R Settings
"let R_assign_map = <C-=>
let R_app = 'radian'
let R_cmd = 'R'
let R_hl_term = 0

"nvim movement settings and command settings

"insert mode
:inoremap jk <Esc>

"Visual Mode
:vnoremap jk <Esc>

:vnoremap c y

:vnoremap q d

:vnoremap f <Right>

:vnoremap d <Right>

:vnoremap s <Down>

:vnoremap a <Left>

:vnoremap w <Up>

:vnoremap W gg

:vnoremap S G

:vnoremap j <Nop>

"normal mode
:nnoremap q dd

:nnoremap c y

:nnoremap k I

:nnoremap i a

:nnoremap I A

:nnoremap f <Right>

:nnoremap d <Right>

:nnoremap s <Down>

:nnoremap a <Left>

:nnoremap w <Up>

:nnoremap W gg

:nnoremap S G

:nnoremap A B

:nnoremap F $
 
:nnoremap A ^

:nnoremap j <Nop>

:nnoremap L <Nop>

:nnoremap <C-z> U

:nnoremap <C-Z> u

"Window splits and nav
:nnoremap <Leader>f <C-w>v
:nnoremap <Leader>s <C-w>s
:nnoremap <tab> <C-w>w

"Terminal Stuff
:tnoremap jk <C-\><C-N>


