" >>设置vim一些实用的辅助信息

" 自适应不同语言的只能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让vim 把连续数量的空格视为一个制表符
set softtabstop=4
set autoindent
" >>

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
" set cursorline
" set cursorcolumn
" 高亮显示搜索结果
set hlsearch


" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式，尽量放在其他设置的前面
set nocompatible
" vim自身命令行模式智能补全
set wildmenu


" >>代码折叠
" 操作：za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠。
" 基于缩进或语法进行代码折叠
" set foldmethod=indent
set foldmethod=syntax
" 启动vim时关闭折叠代码
set nofoldenable


" ===========插件配置区===========

" >>pathogen
execute pathogen#infect()
" 允许用指定语法高亮配色方案替换默认方案
syntax on
filetype plugin indent on


" >>界面美化
" 开启语法高亮
syntax enable
set background=dark
"colorscheme solarized
colorscheme default
" 禁止折行
set nowrap


" >>vim-indent-guides (使用可视化的方式将相同缩进的代码关联起来)
" 随vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0  "设为0的时候，下面6行才起作用。
"""""""""""""""""""""""""""""""""""""""""""
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd  guibg=red   ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
"""""""""""""""""""""""""""""""""""""""""""


" >>NERDTree config
"在vim启动时默认开启NERDTree(autocmd可以缩写为au)
"autocmd VimEnter * NERDTree 
let NERDTreeShowBookmark=1  "当打开NERDTree窗口时，自动显示Bookmarks
"set mouse=a  "打开鼠标模式
let NERDTreeMinimalUI=1  "不显示帮助面板
let NERDTreeWinSize=25
"按下F2调出/隐藏NERDTree
nnoremap <F2> :exe 'NERDTreeToggle'<CR>


" >>Tagbar config
nnoremap <F3> :exe 'TagbarToggle'<CR>
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=25
" 设置打开c/c++文件时自动开启tabbar
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.java call tagbar#autoopen()


" >>syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" >>supertab config
" 默认无需增加新的配置，把supertab文件夹放入~/.vim/bundle/即可。

" >>auto-pairs config
" 不需要增加配置，只要把auto-pairs文件夹放入~/.vim/bundle/即可。

