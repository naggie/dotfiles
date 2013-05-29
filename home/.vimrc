" vim 7.3+
set nocompatible
call pathogen#infect()
set laststatus=2

"let g:Powerline_symbols = 'fancy'

set backspace=indent,eol,start
" make arrow keys wrap lines and whitespace properly
set whichwrap=b,s,<,>,[,]
syntax on
set number
set ic
set smartcase
set autoindent
set incsearch

" match by highlight as well (still need to press return to search, however)
set hlsearch
" Clear search highlight by hitting enter
nnoremap <silent> <CR> :noh<CR>

" Spell checking. Does not offer suggestions :-)
set spell

set cursorline " Highlight current line
set autoread " Reload files that have changed

filetype on
au BufNewFile,BufRead *.json set filetype=javascript
au BufNewFile,BufRead *.less set filetype=css
au BufNewFile,BufRead *.ino  set filetype=c
au BufNewFile,BufRead *.pde  set filetype=c
au BufNewFile,BufRead *.md   set filetype=markdown
au BufNewFile,BufRead *.fish set filetype=sh

set noswapfile

" get rid of the engulfing behavior of highlighting matching brackets
" when inside parenthesis. It makes the cursor hard to distinguish.
set noshowmatch


" NoMatchParen " this works as a command but not a setting
" this does work, fooling the matching system into
let loaded_matchparen = 1


" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv


" Nice command. Probably better as a keybinding
" :autocmd BufWritePost * !forever restartall
" map <silent> <f5> :!forever restartall <cr>
" map <f5> :autocmd BufWritePost * !forever restartall

let g:SuperTabNoCompleteAfter = ['^', '\s', '//', '#']


" 16-color terminal with solarised theme is preferable.
" failing this, the following option can be set to use a degraded 256 color pallette
let g:solarized_termcolors=256

" good on crap laptop monitors
let g:solarized_contrast="high"


" Configure solarised per machine.
set background=dark
colorscheme solarized

" anti typo
ca WQ wq
ca Wq wq
ca wQ wq
ca W w
ca Q q

" Ex mode? WTF VIM?
map Q <Nop>

set mouse=a

" abbreviations
ab teh the
ab THe The
ab eb be

" Hide toolbar by default
if has("gui_running")
	set guioptions=egmrt
endif

set tabpagemax=20
