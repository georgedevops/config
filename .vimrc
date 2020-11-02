set noshowmode
set laststatus=2
set background=dark
set number relativenumber

if !has('gui_running')
  set t_Co=256
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'miyakogi/conoline.vim'
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tc50cal/vim-terminal'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='<c-t>'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1

nnoremap <C-l> gt
nnoremap <C-h> gT

set wildignore+=*/vendor/*,*/storage/*,*/.git/

filetype plugin on
set omnifunc=syntaxcomplete#Complete
