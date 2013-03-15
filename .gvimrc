if has('gui_macvim')
    set columns=184     " 横幅
    set lines=86        " 行数
    set guioptions-=T   " ツールバー非表示
    
    set showtabline=2       " タブを常に表示
    set imdisable           " IMを無効化
    set transparency=4      " 透明度を指定
    set antialias
    set tabstop=4           " タブサイズ
    set number              " 行番号表示
    set visualbell t_vb=    " ビープ音なし
    set smartindent
    set shiftwidth=4
    set expandtab ts=4 sw=4 ai

    " colorscheme jellybeans
    colorscheme desert
    set nowrapscan          " 検索をファイルの先頭へループしない

    " font
    set guifont=Ricty:h14

    " vim-powerline
    " let g:Powerline_symbols = 'fancy'

endif
"if has('gui_running')
"   set fuoptions=maxvert,maxhorz
"   au GUIEnter * set fullscreen
"endif

