" Startup {{{

filetype indent plugin on

" vim 文件折叠方式为 marker
" 设置 vim 相关文件打开后默认折叠方式为 marker，约定俗成的用三个花括号注释包裹起来
augroup ft_vim
    au!
    au FileType vim setlocal foldmethod=marker
augroup END

" }}}

" General {{{
set nocompatible
set nobackup
set noswapfile
set history=1024
" Automatically change the editing file's directory
"set autochdir (this seems not valid in linux)
" 默认情况下，在 VIM 中当光标移到一行最左边的时候，我们继续按左键，光标不能回到上一行的最右边。同样地，光标到了一行最右边的时候，我们不能通过继续按右跳到下一行的最左边。但是，通过设置 whichwrap 我们可以对一部分按键开启这项功能
set whichwrap=b,s,<,>,[,]
set nobomb
""set backspace=indent,eol,start whichwrap+=<,>,[,]
" Vim 的默认寄存器和系统剪贴板共享
set clipboard+=unnamed
" 设置 alt 键不映射到菜单栏
set winaltkeys=no
" }}}


" Lang & Encoding {{{
"set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set fileencodings=utf-8
set encoding=utf-8
"set langmenu=zh_CN
let $LANG = 'en_US.UTF-8'
"language messages zh_CN.UTF-8
" }}}


" GUI {{{
colorscheme Tomorrow-Night
syntax on
highlight LineNr ctermfg=DarkGrey
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
set cursorline
set hlsearch
set number
" 窗口大小
"set lines=35 columns=140
" 分割出来的窗口位于当前窗口下边/右边
set splitbelow
set splitright
"不显示工具/菜单栏
"set guioptions-=T
"set guioptions-=m
"set guioptions-=L
"set guioptions-=r
"set guioptions-=b
" 使用内置 tab 样式而不是 gui
"set guioptions-=e
" dont show special char
set nolist
" set listchars=tab:▶\ ,eol:¬,trail:·,extends:>,precedes:<
"set guifont=Inconsolata:h12:cANSI
"a }}}


" Format {{{
set autoindent
set smartindent
"set tabstop=4
set expandtab
"set softtabstop=4
"set foldmethod=indent (this seems not valid in linux)
" }}}
