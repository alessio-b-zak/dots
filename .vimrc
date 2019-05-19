execute pathogen#infect()
filetype plugin indent on
filetype plugin on



colorscheme seoul256
let g:jellybeans_use_term_italics = 1
let g:diffopt='vertical'
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd w

let g:tex_conceal = ""

autocmd StdinReadPre * let s:std_in=1

let g:tex_flavor='latex'
set diffopt+=vertical

autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

autocmd StdinReadPre * let s:std_in=1

au BufRead,BufEnter,BufNewFile * IndentLinesReset


autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


autocmd bufenter * if(winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:haskell_classic_highlighting=1
set background=dark

set grepprg=grep\ -nH\ $*

if !exists("g:syntax_on")
    syntax enable
endif

set tabstop=4

set shiftwidth=4
set softtabstop=4
set expandtab

" " On pressing tab, insert 4 spaces
set expandtab

set conceallevel=1
let g:indentLine_conceallevel=1

set ttymouse=xterm2
set mouse=a

set showcmd

set number
set wildmenu
set incsearch
set hlsearch

au BufRead,BufNewFile *.md setlocal textwidth=80
au BufRead,BufNewFile *.tex setlocal textwidth=80

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where=2
let g:haskell_indent_where=6
let g:haskell_indent_guard=4
let g:haskell_indent_if=4
let g:haskell_indent_disable = 1

let g:NERDTreeWinSize=20
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
set laststatus=2

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


let g:indentLine_char = '|'


"autocmd InsertLeave *.tex silent write
let g:SuperTabDefaultCompletionType = "<c-n>"


let g:Tex_Env_comd = "\\begin{tikzcd}\<CR><++>\<CR>\\end{tikzcd}<++>"
let g:Tex_Env_gen = "\\begin{<++>}\<CR><++>\<CR>\\end{<++>}<++>"
let g:Tex_Env_agmc = "\\begin{AgdaMultiCode}\<CR><++>\<CR>\\end{AgdaMultiCode}<++>"
let g:Tex_Env_alignst = "\\begin{align*}\<CR><++>\<CR>\\end{align*}<++>"
let g:Tex_Env_cfb = "\\ExecuteMetaData[../agda/latex/<++>]{<++>}<++>"
let g:Tex_SmartKeyQuote=0

autocmd BufNewFile,BufRead *.tex call IMAP('ETZ', g:Tex_Env_comd, 'tex')

autocmd BufNewFile,BufRead *.tex call IMAP('ATZ', g:Tex_Env_alignst, 'tex')

autocmd BufNewFile,BufRead *.tex call IMAP('ATC', g:Tex_Env_cfb, 'tex')

autocmd BufNewFile,BufRead *.tex call IMAP('AMC', g:Tex_Env_agmc, 'tex')

autocmd BufNewFile,BufRead *.tex call IMAP('ATT', g:Tex_Env_gen, 'tex')

set noshowmode
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
"
"k
