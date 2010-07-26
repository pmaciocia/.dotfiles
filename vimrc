syntax enable
set autoindent
set hidden
filetype on
filetype plugin indent on

runtime macros/matchit.vim

autocmd FileType python setlocal expandtab
autocmd FileType java,c setlocal cindent
autocmd FileType text setlocal tw=70
autocmd FileType lisp DoSurrAll

set sw=4
set ts=4
set incsearch
set scrolloff=3

set ignorecase
set smartcase
set wildignore=*.o,*.obj,*.bak,*.exe,*.class

set wildmenu
set wildmode=list:longest
set showcmd

map <F2> w
map <silent> <F3> :bn<CR>
map <silent> <F4> :tabn<CR>
map <silent> <F5> :TlistToggle<CR>
map <silent> <F6> :cn<CR>
map <silent> <F7> :cp<CR>

map  "+gP
cmap w!! w !sudo tee % >/dev/null<CR>:e!<CR><CR>

set mps+=':'
set mps+=<:>

nnoremap Q gqap
vnoremap Q gq
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

ab Macioica Maciocia
ab macioica maciocia
ab main# public static void main(String args[])
ab pr# System.out.println(
ab me# // Peter Maciocia - peter.maciocia@gmail.com	 
ab for# for( int x=0; x< ; x++ )
ab try# try {} catch(Exception e ) {  System.out.println( e );  }
