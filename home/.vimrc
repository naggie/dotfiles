" pathogen as a bundle
runtime bundle/pathogen/autoload/pathogen.vim

set nocompatible
call pathogen#infect()

set rtp+=~/.fzf

syntax on
filetype plugin indent on

set backspace=indent,eol,start
" make arrow keys wrap lines and whitespace properly
set whichwrap=b,s,<,>,[,]
set number
set ic
set smartcase
set autoindent
set incsearch

" no wrapping by default. Use `:set wrap` to re-enable
set nowrap

set hlsearch
" Clear search highlight by hitting enter
nnoremap <silent> <CR> :noh<CR>

" Spell checking. Does not offer suggestions, which makes you learn.
set spell

set cursorline
set cursorcolumn
" Stop the pause that you no longer notice exiting insert mode
set ttimeoutlen=50

" Filetype mappings
au BufNewFile,BufRead *.conf.j2            set filetype=dosini
au BufNewFile,BufRead *.conf               set filetype=dosini
au BufNewFile,BufRead *.cls                set filetype=tex
au BufNewFile,BufRead *.ino                set filetype=c
au BufNewFile,BufRead *.pde                set filetype=c
au BufNewFile,BufRead *.md                 set filetype=markdown
au BufNewFile,BufRead *.fdc                set filetype=sdc
au BufNewFile,BufRead *.spec               set filetype=python
au BufNewFile,BufRead .aliases             set filetype=sh
au BufNewFile,BufRead .bcrc                set filetype=bc
au BufNewFile,BufRead Jenkinsfile          set filetype=groovy
au BufNewFile,BufRead /etc/nginx/sites-*/* set filetype=nginx
au BufNewFile,BufRead /etc/nginx/conf.d/*  set filetype=nginx
au BufNewFile,BufRead *nginx*.conf         set filetype=nginx
au BufNewFile,BufRead .envrc               set filetype=bash
" Arduino
au BufNewFile,BufRead platform{,.local}.txt    set filetype=dosini
au BufNewFile,BufRead boards{,.local}.txt      set filetype=dosini
au BufNewFile,BufRead programmers{,.local}.txt set filetype=dosini

" It's not the 70's anymore. Use git or something.
set noswapfile
set nobackup

" get rid of the engulfing behavior of highlighting matching brackets
" when inside parenthesis. It makes the cursor hard to distinguish.
set noshowmatch

" NoMatchParen " this works as a command but not a setting
" this does work, fooling the matching system into
let loaded_matchparen = 1

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" no point in pressing/releasing the shift key -- slightly faster
nnoremap ; :

" Stops regression to arrow keys, encourages learning of advanced motion keys
nnoremap <Left> :echo "Use [h] for left"<CR>
nnoremap <Right> :echo "Use [l] for right"<CR>
nnoremap <Up> :echo "Use [k] for up"<CR>
nnoremap <Down> :echo "Use [j] for down"<CR>

inoremap <Left> <C-o>:echo "Use [h] for left in NORMAL mode"<CR>
inoremap <Right> <C-o>:echo "Use [l] for right in NORMAL mode"<CR>
inoremap <Up> <C-o>:echo "Use [k] for up in NORMAL mode"<CR>
inoremap <Down> <C-o>:echo "Use [j] for down in NORMAL mode"<CR>

vnoremap <Left> <Esc>:echo "Use [h] for left"<CR>
vnoremap <Right> <Esc>:echo "Use [l] for right"<CR>
vnoremap <Up> <Esc>:echo "Use [k] for up"<CR>
vnoremap <Down> <Esc>:echo "Use [j] for down"<CR>

let g:SuperTabNoCompleteAfter = ['^', '\s', '//', '#']

set background=dark
let g:gruvbox_invert_tabline = 1
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
" TODO fix this with terminfo databases
" let g:gruvbox_italic = 1

" TODO add test for truecolour capability
if (has("termguicolors"))
    " TODO set conditionally when Tc support is done
    "set termguicolors
endif

colorscheme gruvbox

" remove grey background colour (better contrast) (black or NONE)
"highlight Normal ctermbg=black guibg=black
"highlight NonText ctermbg=black guibg=black

" make line number distinct from text
highlight LineNr ctermbg=235 guibg=#262626

" anti typo (command aliases)
" source: .viminfo
ca WQ wq
ca Wq wq
ca wQ wq
ca qw wq
ca q1 q!
ca 'q q
ca q; q
ca qq q
ca W  w
ca Q  q
ca Wqaz wqa
ca Wqqa wqa
ca Wqa  wqa
ca WQa  wqa
ca WQA  wqa

" gf opens the file under cursor, which is great for navigating a hierarchy of files.
" Change gF to open file under cursor in new tab, not new pane, like CTRL+W gF
nnoremap gF <C-w>gf

" Ex mode? WTF VIM?
map Q <Nop>

" re-flow entire paragraph
nmap Q gqap

" Enable mouse mode. Use xterm >= 277 for mouse mode for large terms.
set mouse=a

" legacy vim-only stuff
if !has('nvim')
    set ttymouse=xterm2
    " disable connecting to X11 for the sake of clipboard support
    " https://stackoverflow.com/questions/10718573/vim-x-flag-as-vimrc-entry
    " allternative to -X (which is a pain with aliases/git)
    set clipboard=exclude:.*
endif

" abbreviations
ab teh the
ab THe The
ab eb be

" max. number of tabs open at once. I use a large term.
set tabpagemax=50

" open help in new tab
cabbrev help tab help

" 'message for reading a file overwrites any previous message'
set shortmess=O

" keep window split size equal on resize
" http://stackoverflow.com/questions/14649698/how-to-resize-split-windows-in-vim-proportionally
autocmd VimResized * :wincmd =

" Enable extended regular expressions by default on search. Also makes it
" consistent with :%s//g commands.
" This stops having to escape all regex metachars
set magic
" This is too annoying, as it's triggered wherever you have /. Remember to do \v manually instead.
" No better solution online atm.
"nnoremap / /\v
"cnoremap s/ s/\v

" some plugins/commands/aliases assume bash and break when using fish.
set shell=bash

" some emacs/readline style normal mode nav that is hardcoded to my brain
map <C-a> <Home>
map <C-e> <End>
noremap! <C-a> <Home>
noremap! <C-e> <End>

" http://usevim.com/2012/08/03/vim101-indentation/
" 4 spaces for tabs, inserted automatically.
" Tabs work fine in an ideal world. Sadly, spaces are always more consistent.
" To refactor code: find ./ -type f -exec sed -i 's/\t/    /g' {} \;
" Tip: use = in visual-line mode to re-indent

" Pressing tab means spaces instead
set expandtab

" how many spaces when expanding a tab
set softtabstop=4

" autoindent/shift >> << width
set shiftwidth=4

" Tabs (actual tabs) to be 4-wide. Sorry, Linus.
set tabstop=4

" YAML should have a 2-space indent, as dictionary fields have to line up
" after a list delimitation.
autocmd FileType yaml setlocal softtabstop=2 shiftwidth=2 tabstop=2

" go fmt uses tabs
autocmd FileType go setlocal noexpandtab

command Retab normal! gg=G

" magically fold everything
map <F2> :set foldmethod=indent<CR><CR>

" airline is lighter than powerline. Lightline is lighter than airline (100ms
" from 200ms measured with (n)vim --startuptime)
" IMO powerline colours go well with any other colorscheme
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'component_function': {
      \   'filename': 'GetFilepath'
      \ }
  \ }

function! GetFilepath()
    return substitute(expand('%:p'), '^'.expand('~'), '~', '')
endfunction

" ... but not binary files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.bin,*.png,*.jpg

" to bottom if log
au BufNewFile,BufRead *.log normal G

" abort a merge commit
ca fail cq

" stop accidentally saving ';' or ':' files due to typo
" http://stackoverflow.com/questions/6210946/prevent-saving-files-with-certain-names-in-vim
autocmd BufWritePre [:;]* throw 'Forbidden file name: ' . expand('<afile>')

" http://blog.sanctum.geek.nz/vim-annoyances/
" v-block mode: allow capturing blank space
set virtualedit=block

" vsplit/split: swap order so the text does not move
set splitbelow
set splitright

" give the terminal many characters-per-second it it can cope
set ttyfast
" only draw on user input
set lazyredraw

" http://stackoverflow.com/questions/164847/what-is-in-your-vimrc
" keep at least 5 lines above/below
set scrolloff=5
" keep at least 5 lines left/right
set sidescrolloff=5

" line marker
set colorcolumn=141

highlight ColorColumn ctermbg=black guibg=black

" stop asterisk-initiated search from annoyingly jumping to next match -- this
" is useful in combination with hlsearch
nnoremap * *``

" I always missed the warnings and ended up editing files for which I had no
" write permission, resulting in much frustration. A better solution is to
" disallow editing to force me to exit early without modifying and the use
" sudo without forgetting...
autocmd BufRead * let &l:modifiable = !&readonly

" swap ctrl+t and return, a better default IMO. Also map similar to CtrlP
let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit',
      \ 'ctrl-t': 'edit',
      \ 'enter': 'tabedit',
      \ }

nnoremap <c-p> :FZF<cr>

" disable background color erase (problem with kitty + vim)
" In theory this is fixed with the correct terminfo files but in practice it
" keeps causing lots of missing background color
set t_ut=

" disable annoying markdown list behaviour
let g:vim_markdown_new_list_item_indent = 0

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" workaround for neovim <Paste> bug
" https://github.com/neovim/neovim/issues/7994#issuecomment-388296360
au InsertLeave * set nopaste
