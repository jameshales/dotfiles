" Enable Pathogen {{{1
let mapleader=","                  " Set <Leader> (mostly for NERD_commenter)
execute pathogen#infect()

" Get out of Vi compatible mode {{{1
set nocompatible

" Miscellaneous options {{{1
syntax on                       " Syntax highlighting
set backspace=indent,eol,start  " Fix backspace behaviour
set directory=~/.tmp            " Create swap files in ~/.tmp
set display=lastline            " Show half-visible paragraphs
set foldmethod=marker           " Use textual markers for folds
set history=1000                " Lines of command history
set hlsearch                    " Highlight search matches
set ignorecase                  " Searches are case insensitive
set incsearch                   " Highlight matches as the pattern is typed
set laststatus=2                " Always show the status line
set lazyredraw                  " Do not redraw screen when running macros
set linebreak                   " Dynamic word-wrap
set mouse=a                     " Use mouse everywhere
set nobackup                    " Do not keep tilde backup files
set nomodeline                  " Do not accept mode lines
set number                      " Line numbers
set ruler                       " Show cursor position in status bar
set scrolloff=2                 " Always show two lines above and below the cursor
set showcmd                     " Show partially completed normal mode command
                                " in status line
set showmatch                   " Show matching parentheses under cursor
" Change the contents of the status line
set statusline=%<%f\ %y%h%m%r%=%-14.(%l,%c%V%)\ %P
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,
            \.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.class,.ctxt
set textwidth=0                 " Do not hard-wrap by default
set timeoutlen=1000
set ttimeoutlen=0               " No delay after pressing escape
set visualbell t_vb=            " Turn off bell
set whichwrap=b,s,~,[,],<,>     " Arrow keys wrap around newlines
set wildmenu                    " Enhanced auto-completion for Ex mode commands

" New line mappings {{{1
map <S-Enter> O<Esc>
map <CR> o<Esc>

" Up/down key behaviour {{{1
" -- Changes up/down arrow keys to behave screen-wise, rather than file-wise.
"    Behaviour is unchanged in operator-pending mode.
"    Behaviour is unchanged for the j and k bindings.
if version >= 700
    " Stop remapping from interfering with Omni-complete popup
    inoremap <silent><expr><Up> pumvisible() ? "<Up>" : "<C-O>gk"
    inoremap <silent><expr><Down> pumvisible() ? "<Down>" : "<C-O>gj"
else
    inoremap <silent><Up> <C-O>gk
    inoremap <silent><Down> <C-O>gj
endif

nnoremap <silent><Up> gk
nnoremap <silent><Down> gj
vnoremap <silent><Up> gk
vnoremap <silent><Down> gj

noremap <silent><C-Up> <C-Y>
inoremap <silent><C-Up> <C-O><C-Y>
noremap <silent><C-Down> <C-E>
inoremap <silent><C-Down> <C-O><C-E>

" Home and End key behaviour {{{1
" -- Home jumps first to the first character on the current *screen* line,
"    then to the first non-whitespace character on the virtual line, then
"    to the first character on the virtual line
" -- End jumps first to the last character on the current *screen* line,
"    then to the last character on the virtual line
"    Does not effect operator-pending mode (i.e. when used as a motion for
"    a d,y,c, etc. command) -- otherwise it is annoying
"    Use Shift-Home and Shift-End for normal behaviour
function! s:SmartHome()
    if col('.') == match(getline('.'), '\S')+1
        normal 0
    else
        let oldcol = wincol()
        normal g0
        if wincol() == oldcol || col('.') < match(getline('.'), '\S')+1
            normal ^
        endif
    endif
endfunction

function! s:SmartEnd()
    let oldcol = wincol()
    normal g$
    if wincol() == oldcol
        normal $
    endif
    if virtcol(".") == virtcol("$") - 1
        normal $l
    endif
endfunction

if version >= 700
    " Stop remapping from interfering with Omni-complete popup
    inoremap <silent><expr><home> pumvisible() ? "<Home>" : "<C-O>:call <SID>SmartHome()<CR>"
    inoremap <silent><expr><end> pumvisible() ? "<End>" : "<C-O>:call <SID>SmartEnd()<CR>"
else
    inoremap <silent><home> <C-O>:call <SID>SmartHome()<CR>
    inoremap <silent><end> <C-O>:call <SID>SmartEnd()<CR>
endif

nnoremap <silent><home> :call <SID>SmartHome()<CR>
vnoremap <silent><home> <Esc>:call <SID>SmartHome()<CR>:normal m[gv`[<CR>
nnoremap <silent><end> :call <SID>SmartEnd()<CR>
vnoremap <silent><end> <Esc>:call <SID>SmartEnd()<CR>:normal m[gv`[<CR>

" Autocommands {{{1
if has("autocmd")
    " Filetype influenced flags
    filetype plugin on
    filetype indent on

    " Keeps the cursor in the previous position when switching buffers
    augroup vimrcEx
        au!
        autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal g`\"" |
            \ endif
    augroup END
else
    " Set basic auto-indent if autocmd doesn't work
    set ai
endif

" Tabs {{{1
if version >= 700
    map gn :tabnew<CR>
    map gc :tabclose<CR>
    map gN :browse tabnew<CR>
    map gC :confirm tabclose<CR>
    set tabpagemax=30
endif

" Windows {{{1

map <c-w><c-n> :browse split<CR>
map <c-w><c-v> :browse vsplit<CR>
map <c-w><c-c> :confirm close<CR>

" Searches {{{1
map g/ :noh<CR>
noh                             " Do not highlight last search when Vim starts test

" Colour scheme {{{1
colorscheme monokai

" HTML exporting {{{1
let g:html_use_css = 1
let g:html_use_encoding = "utf8"
let g:use_xhtml = 1
let g:html_number_lines = 0
let g:html_ignore_folding = 1


" Indenting rules {{{1
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab

" Long line highlighting {{{1
nnoremap <silent>gl
      \ :if exists('w:long_line_match') <Bar>
      \   call matchdelete(w:long_line_match) <Bar>
      \   unlet w:long_line_match <Bar>
      \ elseif &textwidth > 0 <Bar>
      \   let w:long_line_match = matchadd('LongLine','\%'.&tw+1.'v.*',-1) <Bar>
      \ else <Bar>
      \   let w:long_line_match = matchadd('LongLine','\%81v.*',-1) <Bar>
      \ endif<CR>

" File type recognition {{{1
autocmd BufNewFile *.c set ft=c
autocmd BufNewFile *.h set ft=c
autocmd BufNewFile *.py set ft=python
autocmd BufNewFile *.rb set ft=ruby
autocmd BufNewFile *.html set ft=html
autocmd BufNewFile *.htm set ft=html
autocmd BufNewFile *.xhtml set ft=xhtml
autocmd BufNewFile *.xml set ft=xml
autocmd BufNewFile *.java set ft=java
autocmd BufNewFile *.sh set ft=sh
autocmd BufNewFile *.m set ft=matlab
autocmd BufNewFile *.tex set ft=tex
autocmd BufNewFile *.latex set ft=tex
au! BufRead,BufNewFile *.sass         setfiletype sass 
au! BufRead,BufNewFile *.haml         setfiletype sass 
au! Syntax ats source ~/.vim/syntax/ats.vim
au! BufRead,BufNewFile *.dats set filetype=ats
au! BufRead,BufNewFile *.sats set filetype=ats

" EasyAlign {{{1
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Ctrl-P {{{1

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_clear_cache_on_exit = 0

" NERDTree {{{1
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Vim Airline {{{1
let g:airline_theme='tomorrow'
