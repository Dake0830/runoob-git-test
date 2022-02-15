set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Vundlevim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on
set autoread
"代码补全"
let g:ycm_global_ycm_extra_conf='/usr/lib/ycmd/ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tag_files=1
let g:ycm_seed_identifiers_with_syntax=1
set completeopt=longest,menu
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_confirm_extra_conf=0
let g:ycm_cache_omnifunc=0
let g:ycm_complete_in_comments=1

"自动补全配置

set completeopt=longest,menu
autocmd InsertLeave * if pumvisible()==0|pclose|endif
inoremap<expr><CR>	pumvisible()?"\<C-y>":"\<CR>"
inoremap<expr><Down>	pumvisible()?"\<C-n>":"\<Down>"
inoremap<expr><Up>	pumvisible()?"\<C-p>":"\<Up>"
inoremap<expr><PageDown>	pumvisible()?"\<PageDown>\<C-p>\<C-n>":"\<PageDown>"
inoremap<expr><PageUp>	pumvisible()?"\<PageUp>\<C-p>\<C-n>":"\<PageUp>"
let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion=['<Down>']
let g:ycm_key_list_select_completion=['<c-p>']
let g:ycm_key_list_select_completion=['<Up>']
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_file=1
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1
nnoremap<F5>:YcmForceCompileAndDiagnostics<CR>
nnoremap<leader>lo :lopen<CR>
nnoremap<leader>lo :lclose<CR>
inoremap<leader><leader><C-x><C-o>
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_string=1
let g:ycm_collect_identifiers_from_comments_and_strings=0
nnoremap<leader>jd: YcmCompleter GoToDefinitionElseDeclaration<CR>

syntax on
winpos 5 5
set lines=40 columns=155
set nu
set go=
color asmanian2
"字体设置
set guifont=Courier_New:h10:cANSI 
"autocmd InsertLeave * se nocul
"autocmd InsertLeave * se cul
set ruler
set showcmd
set cmdheight=1
set novisualbell
set laststatus=1
set foldenable
set foldenable=manual
set background=dark
set nocompatible
if version >=603
	set helplang=cn
	set encoding=urf-8
endif
colorscheme murphy

if (has("gui_running"))
	set guifont=Bitstream\Vera\Sans\Mono\10
endif

nmap <leader>w :w!<cr>
nmap <leader>f :find<cr>
map<C-A>ggVGY
map<C-A><Esc>ggVGY
map<F12>gg=G
vmap<C-c>"+y
nnoremap<F2> :g/^\s*$/d<CR>
nnoremap<C-F2> :vert diffsplit
map<M-F2> :tabnew<CR>
map<F3>:tabnew.<CR>
map<C-F3>\be
map<F5>:call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype=='c'
		exec "!g++ % -o %<"
		exec "!./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "!./%<"
	elseif &filetype == 'sh'
		:!./%
	endif
endfunc

autocmd Filetype c,cpp map<buffer><leader><space>:w<cr>:make<cr>
set completeopt=preview,menu
filetype plugin on
set clipboard+=unnamed
set nobackup
set makeprg=g++\-Wall\\%
set autowrite
set cursorline
set magic
set guioptions-=m
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\%c.%l%L%)\
set foldcolumn=0
set foldmethod=indent
set foldlevel=3
set foldenable
set nocompatible
set syntax=on
set noeb
set confirm
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set smarttab
set number
set history=50
set nobackup
set noswapfile
set ignorecase
set hlsearch
set incsearch
set gdefault
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set langmenu=zh_CN.UTF-8
set helplang=cn
set cmdheight=2
filetype on
filetype plugin on
filetype indent on
set viminfo+=!
set iskeyword+=_,$,@,%,#,-
set linespace=0
set wildmenu
set backspace=2
set whichwrap+=<,>,h,l
set mouse=a
set selection=exclusive
set selection=mouse,key
set report=0
set fillchars=vert:\,stl:\,stlnc:\
set showmatch
set matchtime=1
set scrolloff=3
set smartindent
au BufRead,BufNewFile * setfiletype txt
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
	if getline('.')[col('.')-1]==a:char
		return "\<Right>"
	else
		return a:char
	endif
endfunction
filetype plugin indent on
set completeopt=longest,menu



