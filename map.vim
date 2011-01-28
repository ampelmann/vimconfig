let g:mapleader = ","
let mapleader=','

" Open a file with the current directory of the current file which is editing {{{
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>
" }}}

" Remove support for regular arrow key {{{
nnoremap <Up> <Esc>
vnoremap <Up> <NOP>
inoremap <Up> <NOP>
nnoremap <Down> <Esc>
vnoremap <Down> <NOP>
inoremap <Down> <NOP>
nnoremap <Left> <Esc>
vnoremap <Left> <NOP>
inoremap <Left> <NOP>
nnoremap <Right> <Esc>
vnoremap <Right> <NOP>
inoremap <Right> <NOP>
" }}}

inoremap kj <Esc>

" Stop the highlighting for the 'hlsearch' option {{{
nnoremap <silent> <C-N> :noh<CR>
" }}}

inoremap <Nul> <C-x><C-o>

" In normal mode, basic save {{{
nmap <c-s> :w<CR>
" }}}

" In interactive mode, basic save and retrieve cursor position {{{
imap <c-s> <Esc>:w<CR>a
" }}}

" Easy navigation, PAGE-DOWN and PAGE-UP {{{
map <A-DOWN> gj
map <A-j> gj
map <A-UP> gk
map <A-k> gk
imap <A-UP> <ESC>gki
imap <A-DOWN> <ESC>gkj
" }}}

" PAGE-DOWN with space key {{{
nmap <Space> <PageDown>
" }}}

nnoremap <silent> <C-Q> :quit<CR>

" Insert current date {{{
imap \date  <C-R>=strftime("%d/%m/%Y")<CR>
"}}}

" TextMate's key mapping {{{
nmap <D-[> <<
nmap <M-D-5> <<
nmap <D-]> >>
nmap <M-D-°> >>
vmap <D-[> <gv
nmap <M-D-5> >gv
vmap <D-]> >gv
nmap <M-D-°> >gv
nmap <C-S-D> :dd<CR>
" }}}

" Indentation as Eclipse does {{{
vnoremap <S-Tab> <gv
nnoremap <S-Tab> mzV<`zh
" }}}

" Shortcut to rapidly toggle `set list` {{{
nmap <leader>l :set list!<CR>
" }}}

" Sign define mark text=!> texthl=Mark {{{
map <F7> :exe 'sign place 001 name=mark line='.line(".").' buffer='.winbufnr(0)<CR>
" }}}

map <C-F7> :sign unplace<CR>

" Duplicate the line {{{
noremap <C-S-d> m'yyP`'k
vnoremap <C-S-d> m'y'>p`'
" }}}

" C-TAB and C-SHIFT-TAB cycle tabs forward and backward
nmap <c-tab> :tabnext<cr>
imap <c-tab> <c-o>:tabnext<cr>
vmap <c-tab> <c-o>:tabnext<cr>
nmap <c-s-tab> :tabprevious<cr>
imap <c-s-tab> <c-o>:tabprevious<cr>
vmap <c-s-tab> <c-o>:tabprevious<cr>

" Easy lines navigation when wrapped {{{
noremap <silent> <D-j> gj
noremap <silent> <D-k> gk
" }}}

" Reload the current file {{{
noremap <D-r> :e<CR>
" }}}

" Navigate into tabs with  {{{
map <D-A-Left> gT
map <D-A-Right> gt
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>
" }}}

" Easy navigation with  when a line is wrapped {{{
vmap <D-j> gj
vmap <D-k> gk
vmap <D-4> g$
vmap <D-6> g^
vmap <D-0> g^
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g^
" }}}

" Save changes {{{
map <leader>s :w<CR>
" }}}

" Exit vim without saving any changes {{{
map <leader>q :q!<CR>
" }}}

" Reload the current file {{{
noremap <D-r> :e<CR>
" }}}

" Exit vim saving changes {{{
map <leader>w :x<CR>
" }}}

map <C-S-k> :dd<CR>

" Delete the current buffer with  + T {{{
noremap <D-w> :bdelete<CR>
" }}}

" Navigate into buffers with CTRL-LEFT and CTRL-RIGHT {{{
noremap <C-left> :bprev<CR>
noremap <C-right> :bnext<CR>
" }}}

" Strip HTML tags in selected line {{{
vnoremap <Leader>h :s/<\/*\([a-z][a-z0-9]*\)[^>]*>//g<CR><Esc>:silent noh<Bar>echo<CR>
" }}}

" Django utilities {{{
nnoremap <Leader>x :%s/{{\([A-Za-z0-9\.\|]*\)}}/{{ \1 }}/g<CR>" Replace {{var}} with {{ var }}
" }}}

" source $MYVIMRC reloads the saved $MYVIMRC
nmap <Leader>s :source $MYVIMRC
nmap <Leader>g :source $MYGVIMRC

" opens $MYVIMRC for editing, or use :tabedit $MYVIMRC
nmap <Leader>v :e $MYVIMRC

" Remove trailing whitespaces
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

" Simple indentation {{{
vnoremap < <gv
vnoremap > >gv|
vnoremap <Tab> >gv|
vnoremap <S-Tab> <gv
nnoremap <Tab> mzV>`zl
nnoremap <S-Tab> mzV<`zh
" }}}
