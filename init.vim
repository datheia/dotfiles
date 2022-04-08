set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=a                 " middle-click paste with 
set hlsearch                " highight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
"set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
"set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set termguicolors
set showcmd                 " show command in status line. ABSOLUTE LIFE SAVER
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.


" CTRL+SHIFT+ARROW combinations.
nnoremap <C-Left> b
vnoremap <C-S-Left> b
nnoremap <C-S-Left> gh<C-O>b
inoremap <C-S-Left> <C-\><C-O>gh<C-O>b

nnoremap <C-Right> w
vnoremap <C-S-Right> w
nnoremap <C-S-Right> gh<C-O>w
inoremap <C-S-Right> <C-\><C-O>gh<C-O>w
" Auto pairs
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
""Split pane (Horizontal bind to CTRL+W S to CTRL+W H)
nnoremap <C-w>h :split<CR><Left>

call plug#begin()
 Plug 'dracula/vim'
 Plug 'vim-airline/vim-airline'
 Plug 'morhetz/gruvbox'
 Plug 'kyazdani42/nvim-web-devicons'
 Plug 'romgrk/barbar.nvim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'github/copilot.vim'
 Plug 'tiagovla/tokyodark.nvim'
" Plug 'windwp/nvim-autopairs'
" Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'preservim/nerdtree'
 Plug 'mhinz/vim-startify'
 Plug 'AlessandroYorba/Alduin'
 Plug 'turbio/bracey.vim'
 Plug 'tell-k/vim-autopep8'
 Plug 'folke/which-key.nvim'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'jacoborus/tender.vim'
 "" here comes the THEMES
 Plug 'ajmwagar/vim-deus'
 Plug 'AlessandroYorba/Sierra'
 Plug 'chriskempson/base16-vim'
 Plug 'kadekillary/skull-vim'

"" Plug 'CRAG666/code_runner.nvim'
"" Plug 'michaelb/sniprun', {'do': 'bash install.sh'}
call plug#end()

let g:airline_left_sep=''
let g:airline_section_x=''
let g:airline_section_z=''
let g:airline_section_y=''
let g:airline_skip_empty_sections = 1





lua << EOF
  require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }

EOF


"":"lua require'sniprun'.run()

:syntax enable
colorscheme skull 


" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
