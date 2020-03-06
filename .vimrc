" Indent
filetype plugin indent on " Indent to the same level when press enter
set expandtab " Expand TABs to spaces
set tabstop=4 " The width of a TAB is set to 4
set shiftwidth=4 " Indents will have a width of 4

" Theme
syntax on " Turn colours on
color delek " Change colorscheme

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
set encoding=utf-8 " Set the encoding to UTF-8
set spell " Check spelling
set spelllang=en_au " Set default spelling to Australian English
set spellfile=.vim/spell/en.utf-8.add " Set up a dictionary to add good words

" Metrics
set number " Turn line numbers on
set ruler " Display column and line numbers in statusline

" Others
set mouse=a " Enable mouse usage (all modes)
set autowrite " Automatically save before commands like :next and :make

" Tabs
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>


" Indent Python in the Google way.

setlocal indentexpr=GetGooglePythonIndent(v:lnum)

let s:maxoff = 50 " maximum number of lines to look backwards.

function GetGooglePythonIndent(lnum)

  " Indent inside parens.
  " Align with the open paren unless it is at the end of the line.
  " E.g.
  "   open_paren_not_at_EOL(100,
  "                         (200,
  "                          300),
  "                         400)
  "   open_paren_at_EOL(
  "       100, 200, 300, 400)
  call cursor(a:lnum, 1)
  let [par_line, par_col] = searchpairpos('(\|{\|\[', '', ')\|}\|\]', 'bW',
        \ "line('.') < " . (a:lnum - s:maxoff) . " ? dummy :"
        \ . " synIDattr(synID(line('.'), col('.'), 1), 'name')"
        \ . " =~ '\\(Comment\\|String\\)$'")
  if par_line > 0
    call cursor(par_line, 1)
    if par_col != col("$") - 1
      return par_col
    endif
  endif

  " Delegate the rest to the original function.
  return GetPythonIndent(a:lnum)

endfunction

let pyindent_nested_paren="&sw*2"
let pyindent_open_paren="&sw*2"
