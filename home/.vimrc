" pathogen as a bundle
runtime bundle/pathogen/autoload/pathogen.vim

set nocompatible
call pathogen#infect()
set laststatus=2

" http://tooky.co.uk/2010/04/08/there-was-a-problem-with-the-editor-vi-git-on-mac-os-x.html
" If this causes vim to exit with non-zero and breaks git on OS X, investigate.
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

" match by highlight as well (still need to press return to search, however)
set hlsearch
" Clear search highlight by hitting enter
nnoremap <silent> <CR> :noh<CR>

" Spell checking. Does not offer suggestions :-)
set spell

" Highlight current line
set cursorline
" ...and column. Good for lining up and feeling like a pro hacker.
set cursorcolumn

" Stop the pause that you no longer notice exiting insert mode
set ttimeoutlen=50

" Filetype mappings
au BufNewFile,BufRead *.conf.j2   set filetype=dosini
au BufNewFile,BufRead *.conf      set filetype=dosini
au BufNewFile,BufRead *.json      set filetype=javascript
au BufNewFile,BufRead *.less      set filetype=css
au BufNewFile,BufRead *.cls       set filetype=tex
au BufNewFile,BufRead *.ino       set filetype=c
au BufNewFile,BufRead *.pde       set filetype=c
au BufNewFile,BufRead *.md        set filetype=markdown
au BufNewFile,BufRead *.fish      set filetype=sh
au BufNewFile,BufRead *.fdc       set filetype=sdc
au BufNewFile,BufRead *.spec      set filetype=python
au BufNewFile,BufRead .aliases    set filetype=sh
au BufNewFile,BufRead .bcrc       set filetype=bc
au BufNewFile,BufRead Jenkinsfile set filetype=groovy

au BufNewFile,BufRead /etc/nginx/sites-*/* set filetype=nginx
au BufNewFile,BufRead *nginx.conf set filetype=nginx

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

" no point in pressing/releasing the shift key!
nnoremap ; :

" if you want to force yourself to use hjkl, uncomment this:
" Get off my lawn
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

" 16-color terminal with solarised theme is most accurate
" failing this, the following option can be set to use a degraded 256 color palette
let g:solarized_termcolors=256

" I like the degraded color scheme, even on gvim
let g:solarized_degrade=1

" good on crap laptop monitors (yes, not recommended by Mr. Schoonover)
let g:solarized_contrast="high"

set background=dark

if (&t_Co == 256)
	colorscheme solarized
endif

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

" if I want to quit all, I'm sure about it
ca qa qa!

" <tab> to toggle nerdtree, persistent across all tabs with vim-nerdtree-tabs!
" or, choose standard NERDtree
nnoremap <tab> :NERDTreeTabsToggle<CR>
"nnoremap <tab> :NERDTreeToggle<CR>
let NERDTreeMapQuit='\t'
" when changing to a tab, file should be focused
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeWinSize = 40

" gf opens the file under cursor, which is great for navigating a hierarchy of files.
" Change gF to open file under cursor in new tab, not new pane, like CTRL+W gF
nnoremap gF <C-w>gf

" Ex mode? WTF VIM?
map Q <Nop>

" macros are extremely useful in rare cases, best not to disable
"map q <Nop>

" re-flow entire paragraph
nmap Q gqap

" http://nvie.com/posts/how-i-boosted-my-vim/
" Finally, a trick by Steve Losh "for when you forgot to sudo before editing a
" file that requires root privileges (typically /etc/hosts). This lets you use
" w!! to do that after you opened the "file already:
cmap w!! w !sudo tee % >/dev/null

" Enable mouse mode. Use xterm >= 277 for mouse mode for large terms.
set mouse=a

" real time mouse stuff!
if !has('nvim')
    set ttymouse=xterm2
endif

" abbreviations
ab teh the
ab THe The
ab eb be

" max. number of tabs open at once. I use a large term.
set tabpagemax=50

" open help in new tab
cabbrev help tab help

" abbreviate messages in every way to avoid hit-enter prompt
set shortmess=a

" keep window split size emal on resize AWESOME
" http://stackoverflow.com/questions/14649698/how-to-resize-split-windows-in-vim-proportionally
autocmd VimResized * :wincmd =

" Enable extended regular expressions by default on search. Also makes it
" consistent with :%s//g commands.
" This stops having to escape all regex metachars
set magic
" This is too annoying, as it's triggered wherever you have /. Do \v manually.
" No better solution online atm.
"nnoremap / /\v
"cnoremap s/ s/\v

" some plugins/commands/aliases assume bash
set shell=bash

" Normal-mode backspace to toggle (exuberant) ctags tagbar (this is nice,
" similar to how tab does NERDtree
" DISABLED, not useful enough at the moment
"nnoremap <BS> :TagbarToggle<CR>

" some emacs/readline style normal mode nav that is hardcoded to my brain
map <C-a> <Home>
map <C-e> <End>
noremap! <C-a> <Home>
noremap! <C-e> <End>

" http://usevim.com/2012/08/03/vim101-indentation/
" 4 spaces for tabs, inserted automatically.
" Tabs work fine in an ideal world. Sadly, spaces are always more consistent.
" To refactor code: find ./ -type f -exec sed -i 's/\t/    /g' {} \;

" Pressing tab means spaces instead
set expandtab

" how many spaces when expanding a tab
set softtabstop=4

" autoindent/shift >> << width
set shiftwidth=4

" Tabs (actual tabs) to be 4-wide. Sorry, Linus.
set tabstop=4

" Tip: use = in visual-line mode to re-indent


" YAML should have a 2-space indent, as dictionary fields have to line up
" after a list delimitation.
autocmd FileType yaml setlocal softtabstop=2 shiftwidth=2 tabstop=2
" ...yet, still, auto-indent does not work. The YAML superset used by ansible
" has a vim plugin, which fixes things for all YAML files
autocmd FileType yaml set filetype=ansible

" go fmt uses tabs
autocmd FileType go set noexpandtab

command Retab normal! gg=G

" magically fold everything
map <F2> :set foldmethod=indent<CR><CR>

" airline is lighter than powerline.
" Old powerline colours are nice.
let g:airline_theme='powerlineish'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_c='%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'

" Unsurprisingly, I want to edit dotfiles and simlinks!
let g:ctrlp_show_hidden = 1
let g:ctrlp_follow_symlinks = 1

" ... but not binary files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.bin,*.png,*.jpg

" to bottom if log
au BufNewFile,BufRead *.log normal G

" abort a merge commit
ca fail cq

" stop accidentally saving ';' or ':' files due to typo
" http://stackoverflow.com/questions/6210946/prevent-saving-files-with-certain-names-in-vim
autocmd BufWritePre [:;]* throw 'Forbidden file name: ' . expand('<afile>')

" CtrlP open in new tab by default
" https://github.com/kien/ctrlp.vim/issues/160
" but only apply when a file is read. This means empty vim won't leave an
" empty buffer when a file is opened in a new tab
au BufRead * let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("h")': ['<c-s>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" ignore all files that git does! https://github.com/kien/ctrlp.vim/issues/174
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

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
