call plug#begin('~/.config/nvim/bundle')
  Plug 'trevordmiller/nova-vim'
  Plug 'scrooloose/nerdtree'
	Plug 'scrooloose/nerdcommenter'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Yggdroot/indentLine'
  "Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
  Plug 'w0rp/ale' "ALE (Asynchronous Lint Engine)
  Plug 'vim-airline/vim-airline'
  Plug 'alvan/vim-closetag'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'SirVer/ultisnips'
  Plug 'vim-scripts/matchit.zip'
  Plug 'Raimondi/delimitMate'
  Plug 'rhysd/vim-crystal'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'altercation/vim-colors-solarized'
  Plug 'Glench/Vim-Jinja2-Syntax'
  " Plug 'fatih/vim-go'       
  " :PlugInstall
call plug#end()

set number 	" Line number
set title	" Doc name

" Indentation with two spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab

" Theme (Nova)
syntax on
syntax enable
set background=dark
colorscheme nova
let g:airline_theme='nova'

" NERDTree (Toggle)
map <C-n> :NERDTreeToggle<CR>
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Arrows for the tree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeChDirMode=0
let g:NERDTreeIgnore=[]
let g:NERDTreeShowBookmarks=1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

" deoplete
let g:deoplete#enable_at_startup = 1
" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" use tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" Close the documentation window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

map <C-a> <Nop>

" ALE configuration
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1

" IndentLine
let g:indentLine_setColors = 0
let g:indentLine_char = '┊'
