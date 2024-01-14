" Indent
filetype plugin indent on " Indent to the same level when press enter
set tabstop=4 " The width of a TAB is set to 4 spaces

" Theme
syntax on " Turn colours on
color elflord

" Cursorline
set cursorline " Highlight the line where the cursor is on
set background=dark " Highlight the current line number
" Hide underlining
hi CursorLine cterm=none

" Case
set ignorecase " Do case insensitive matching
set smartcase " Do case sensitive matching when a pattern contains an uppercase letter

" Search
set incsearch " Incremental search
set hlsearch " Highlight all found items
" Change the search highlight colour to white on dark grey
hi Search ctermfg=white ctermbg=DarkGrey

" Spell
"set spell
set encoding=utf-8 " Set the encoding to UTF-8
set spelllang=en_au " Set default spelling to Australian English
set spellfile=~/.vim/spell/en.utf-8.add " Set up a dictionary to add good words

" Metrics
set number " Turn line numbers on
set ruler " Display column and line numbers in statusline

" Others
set mouse=a " Enable mouse usage (all modes)
set autowrite " Automatically save before commands like :next and :make
set nowrap

" Tabs
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
