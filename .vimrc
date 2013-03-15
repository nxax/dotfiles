" Last Change: 2013/03/15 19:04:01.
set nocompatible                " be iMproed
filetype off                    " required!
filetype plugin indent off      " required!

" settings to load proper ruby version. See https://rvm.io//integration/vim/
set shell=bash


" Mapleader<Leader> to colon
let mapleader = ","


" -----------------------------------------------
" NeoBundle
" -----------------------------------------------
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle itself

" original repos on github
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
NeoBundle 'tpope/vim-rails.git'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'mattn/zencoding-vim.git'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'kien/ctrlp.vim'
" NeoBundle 'masanders/snipmate.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tpope/vim-rvm'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'scrooloose/vim-statline'
" NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/vimfiler'
" 'Matchit' for Ruby.
NeoBundle 'vim-scripts/ruby-matchit'
" Haml syntax highlight.
NeoBundle 'tpope/vim-haml'
" minibufexpl.vim. Elegant buffer explorer - takes very little screen space
NeoBundle 'fholgado/minibufexpl.vim'
" autodate.vim: A customizable plugin to update time stamps automatically.
NeoBundle 'autodate.vim'
" mru.vim: Plugin to manage Most Recently Used (MRU) files
NeoBundle 'mru.vim'
" LESS syntax highlight
NeoBundle 'groenewege/vim-less'
" MatchParen for HTML tags
NeoBundle 'gregsexton/MatchTag'
" Colour Sampler Pack
NeoBundle 'vim-scripts/Colour-Sampler-Pack'
" 
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'ujihisa/unite-font'
NeoBundle 'miripiruni/CSScomb-for-Vim'

" NeoBundle 'juvvenn/mustache.vim'

" Documentations {{{
NeoBundle 'lucapette/vim-ruby-doc'
NeoBundle 'lucapette/vim-jquery-doc'
" http://blog.blueblack.net/item_133
" }}}

" " vim-scripts repos
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
" NeoBundle 'qbuf'
" NeoBundle 'AutoComplPop'
" NeoBundle 'matchit'
" 
" " non github repos
" NeoBundle 'git://git.wincent.com/command-t.git' " need to execute 'ruby extconf.rb, make 
"
" ---------------------------------------------


" Tabs
nnoremap <Space>t t "
nnoremap <Space>T T " 
nnoremap t <Nop>
nnoremap <silent> tc :<C-u>tabnew<CR>:tabmove<CR>   " create    tab
nnoremap <silent> tk :<C-u>tabclose<CR>             " kill      tab
nnoremap <silent> tn :<C-u>tabnext<CR>              " next      tab
nnoremap <silent> tp :<C-u>tabprevious<CR>          " previous  tab

" FuzzyFinder.vim
map <leader>f :FufFileWithCurrentBufferDir **/<C-M>
map <leader>b :FufBuffer<C-M>
" nnoremap <Space>f f
" nnoremap <Space>F F
" nnoremap f <Nop>
" nnoremap <silent> fb :<C-u>FufBuffer!<CR>     " 現在のタブでバッファを切替える
" nnoremap <silent> ff :<C-u>FufFile! <C-r>=expand('%:~:.')[:-1-len(expand('%:~:.:t'))]<CR><CR>　" 現在のタブでファイルを開く
" nnoremap <silent> fm :<C-u>FufMruFile!<CR> " 現在のタブで最近使ったファイルを開く
" nnoremap <silent> tb :<C-u>tabnew<CR>:tabmove<CR>:FufBuffer!<CR>　" 現在のタブでバッファを切替える
" nnoremap <silent> tf :<C-u>tabnew<CR>:tabmove<CR>:FufFile! <C-r>=expand('#:~:.')[:-1-len(expand('#:~:.:t'))]<CR><CR>
" nnoremap <silent> tm :<C-u>tabnew<CR>:tabmove<CR>:FufMruFile!<CR>

" NERDCommenter
let NERDSpaceDelims = 1 " add space /* */
let NERDShutUp = 1      " 未対応のファイルがあった場合の警告を消す

"explorer mappings
" nnoremap <f1> :BufExplorer<cr>

nnoremap <f2> :NERDTreeToggle<cr>
nnoremap <f3> :TagbarToggle<cr>

" Tagbar config
let g:tagbar_ctags_bin='/usr/local/Cellar/ctags/5.8/bin/ctags'      " Proper Ctags locations
let g:tagbar_width=30                                               " Default is 40, seems too wide
" noremap <silent> <Leader>y :TagbarToggle  " Display panel with y (or ,y)

" <C-Space>でomni補完  http://blog.blueblack.net/item_133 
imap <C-Space> <C-x><C-o>

" Rubyのオムニ補完を設定(ft-ruby-omni) http://blog.blueblack.net/item_133
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

let g:autodate_format="%Y/%m/%d %H:%M:%S"
let g:autodate_keyword_pre="Last Change: "
let g:autodate_keyword_post="."


" -------------------------------------
" PLUGIN SETTINGS
" -------------------------------------
source ~/.vimrc.plugins.NeoComplCache
source ~/.vimrc.plugins.neosnippet
source ~/.vimrc.plugins.vim-statline

" TODO move to ~/.vimrc.plugins.ctrlp
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
" ---------------------------------------------------

" ヘルプファイルから 'q' をタイプするだけで出る設定
autocmd FileType help nnoremap <buffer> q <C-w>c

" Load NERDTree when launch macvim
if has('gui_running')
   autocmd VimEnter * NERDTree
endif
" This move the cursor into the main window
autocmd VimEnter * wincmd p

"=========================================================================
" XML file lint formatting
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"
"F9でXML整形
map <F9> <ESC>:exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"<CR> 


" Middle mouse pasting is definitely not for magic mouse
nnoremap <MiddleMouse> <Nop>
nnoremap <2-MiddleMouse> <Nop>
nnoremap <3-MiddleMouse> <Nop>
nnoremap <4-MiddleMouse> <Nop>

inoremap <MiddleMouse> <Nop>
inoremap <2-MiddleMouse> <Nop>
inoremap <3-MiddleMouse> <Nop>
inoremap <4-MiddleMouse> <Nop>
"--------------------------------
" Show tagbar on Load
"autocmd VimEnter * TagbarOpen

" vim-powerline
let g:Powerline_symbols = 'fancy'
" set encoding=utf-8

" Folding settings
set foldmethod=indent 
set foldnestmax=10
set nofoldenable
set foldlevel=0

" hide search highlight when press <ESC><ESC>
nmap <ESC><ESC> :nohlsearch<CR><ESC>

" Read color settings
source ~/.vimrc.colors

" --------------------------------
" tab, whitespace, returnを可視化
" http://blog.remora.cx/2011/04/show-invisible-spaces-in-vim.html
"
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
" 全角スペース・行末のスペース・タブの可視化
if has("syntax")
    syntax on
 
    " PODバグ対策
    syn sync fromstart
 
    function! ActivateInvisibleIndicator()
        syntax match InvisibleJISX0208Space "　" display containedin=ALL
        highlight InvisibleJISX0208Space term=underline ctermbg=Blue guibg=darkgray gui=underline
        "syntax match InvisibleTrailedSpace "[ \t]\+$" display containedin=ALL
        "highlight InvisibleTrailedSpace term=underline ctermbg=Red guibg=NONE gui=undercurl guisp=darkorange
        "syntax match InvisibleTab "\t" display containedin=ALL
        "highlight InvisibleTab term=underline ctermbg=white gui=undercurl guisp=darkslategray
    endf
    augroup invisible
        autocmd! invisible
        autocmd BufNew,BufRead * call ActivateInvisibleIndicator()
    augroup END
endif

filetype plugin indent on     " required!
