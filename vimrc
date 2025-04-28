" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.

set nocompatible                  " Must come first because it changes other options.

" Work-around incomplete terminfo databases                                     
" Particulalry useful when under `screen`, which may or may not be attached
" to physical terminal capable of 256color mode.                                 
if match($TERMCAP, 'Co#256:') == 0 || match($TERMCAP, ':Co#256:') > 0           
	set t_Co=256                                                                
endif 

syntax enable                     " Turn on syntax highlighting.
filetype plugin on
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set viminfo+=n~/.vim/viminfo      " Keep .viminfo in a directory available to both root and regular principals
"set backupcopy=yes
"set nowritebackup                " And again.

set directory=$HOME/.vim/tmp/     " Keep swap files in one location

set tabstop=4                     " Global tab width.
set softtabstop=4
set shiftwidth=4                  " And again, related.
set noexpandtab                   " Do not use spaces instead of tabs

set modeline                      " Enable modlines
set modelines=5                   " Number of possible modlines

set scrolloff=8
set sidescrolloff=15
set sidescroll=1
set nofoldenable                  " Do not automatically fold

set laststatus=2                  " Show the status line all the time

set diffopt+=vertical             " Open diffs in vertical splits

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

if $TERM == "xterm-color"
	color default
else
	color lucius
	LuciusDark
endif

" * LuciusDark (dark default)
" * LuciusDarkHighContrast
" * LuciusDarkLowContrast
" * LuciusBlack
" * LuciusBlackHighContrast
" * LuciusBlackLowContrast
"
" * LuciusLight (light default)
" * LuciusLightLowContrast
" * LuciusWhite
" * LuciusWhiteLowContrast

" Folding
nnoremap <Space> za
vnoremap <Space> za

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit<cr>
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tv :tabmove<cr>

" nmap <silent> OA :wincmd k<CR>
" nmap <silent> OB :wincmd j<CR>
nmap <silent> b :wincmd h<CR>
nmap <silent> f :wincmd l<CR>

map <leader>pv :!puppet parser validate %<cr>

:nnoremap <leader>dt "=strftime("%c")<CR>P
:inoremap <leader>dt <C-R>=strftime("%c")<CR>

" Controversial...swap colon and semicolon for easier commands
"nnoremap ; :
"nnoremap : ;

"vnoremap ; :
"vnoremap : ;

map <leader>gt :GundoToggle<cr>

" automatically reload vimrc after saving it
if has("autocmd")
     autocmd bufwritepost .vimrc source $MYVIMRC
endif

if argc() > 1 
	silent vertical all
endif

:au FocusGained * :redraw!

" set custom tab settings for puppet files
"autocmd FileType puppet setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
"autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
"autocmd BufRead,BufNewFile *.md setlocal textwidth=80

if &term =~ '256color'
	  " Disable Background Color Erase (BCE) so that color schemes
	  " work properly when Vim is used inside tmux and GNU screen.
	  " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
	 set t_ut=
endif


