" ~/.vimrc

" Install vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  echo "Don't forget to GoInstallBinaries if you're doing Go dev."
endif

" only load plugins if Plug detected
if filereadable(expand("~/.vim/autoload/plug.vim"))
  call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'kaicataldo/material.vim'
    Plug 'preservim/nerdtree'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'tacahiroy/ctrlp-funky'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'jiangmiao/auto-pairs'
    Plug 'scrooloose/nerdcommenter'
    " TODO Indent color
    Plug 'nathanaelkane/vim-indent-guides'

    " CSS3 Syntax
    Plug 'hail2u/vim-css3-syntax'
    " See CSS colours within Vim
    Plug 'ap/vim-css-color'
    
    " Needed solely to get textobj-function-syntax working
    Plug 'kana/vim-textobj-function'
    Plug 'haya14busa/vim-textobj-function-syntax'
    " Needed only for vim-textobj-rubyblock dependency
    Plug 'kana/vim-textobj-user'
    " Call external programs to format code
    Plug 'Chiel92/vim-autoformat'
    
    " LSP
    "
    
    " Lint / Check for syntax errors
    Plug 'dense-analysis/ale'
    
    " Async-vim is only here because it is required by vim-lsp
    Plug 'prabirshrestha/async.vim'
    
    " Languages server protocol connection
    Plug 'prabirshrestha/vim-lsp'
   
    Plug 'microsoft/python-language-server'

    " Language specific
    Plug 'pangloss/vim-javascript'
    
    " Provides JSX indentation
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'elzr/vim-json'
    Plug 'leafgarland/typescript-vim'
    Plug 'vim-ruby/vim-ruby'
    
    " Adds Ruby block objects
    Plug 'nelstrom/vim-textobj-rubyblock'
    Plug 'tpope/vim-rails'
    Plug 'tpope/vim-bundler'
    
    " Text objects for python
    Plug 'jeetsukumaran/vim-pythonsense'
    
    " Modern PHP syntax highlighting
    Plug 'StanAngeloff/php.vim'
    " Blade PHP templates
    Plug 'jwalton512/vim-blade'
    
    " Autocomplete functionality
    Plug 'prabirshrestha/asyncomplete.vim'
    " Autocomplete source - the buffer
    Plug 'prabirshrestha/asyncomplete-buffer.vim'
    " Autocomplete source - files
    Plug 'prabirshrestha/asyncomplete-file.vim'
    " Autocomplete source - language server protocol
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
    " Autocomplete source - Ultisnips
    Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
    " Autocomplete source - ctags
    Plug 'prabirshrestha/asyncomplete-tags.vim'
  call plug#end()
endif

" Functions
"
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?''.l:branchname.'':''
endfunction

autocmd BufEnter * call GitBranch()

" Settings ----------------------------------------------------------
"
colorscheme material 
let g:netrw_browsex_viewer= "xdg-open"
let mapleader = " "
set nocompatible
syntax on
filetype indent plugin on
set background=dark

set number
set signcolumn=yes
set relativenumber
set showmode          " show command and insert mode

" Formating
"
set autoindent
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab         " replace tabs with spaces automatically
set nofixendofline    " cking with files that it shouldn't 


set linebreak         " Don't break on word
set textwidth=72      " gutter + text to 80 standard
"set wrap             " Set by default
set formatoptions=cqt


" Files
"
set nobackup
set noswapfile
set nowritebackup
set autoread
set autowrite         " automatically write files when changing when multiple files open
set hidden            " stop complaints about switching buffer with changes


" Miscs
"
set icon
set hlsearch          " highlight search hits,  \+<cr> to clear 
set incsearch
"set nolist           " Show listchars 
set listchars=tab:→\ ,eol:↲,nbsp:␣,space:·,trail:·,extends:⟩,precedes:⟨
set history=100       " command history
set ttyfast           " faster scrolling

" Path
"
set path+=**          " Search recursively
set wildignore-=.*
set wildmenu
set wildchar=<Tab> wildmenu wildmode=full
set cot+=preview

" Dictionaries / Spelling
"
"set spell
"set dictionary?
set complete+=k
"set dictionary+=~/.local/share/dict/words_en
set splitbelow splitright

set cmdheight=1

" Status line
"
set ruler             " turn col and row position on in bottom right
set laststatus=2
set statusline=[%{StatuslineGit()}]
set statusline+=%*\ %<%.60F%*                      " path, trunc to 80 length
set statusline+=\ [%{strlen(&ft)?&ft:'none'}]     " filetype
set statusline+=%*\ %l:%c%*                        " current line and column
set statusline+=%*\ %p%%%*                         " percentage

" Hightlight ----------------------------------------------------------
"
hi NonText guifg=bg
hi Title ctermfg=LightBlue ctermbg=Magenta cterm=none
hi Normal term=none ctermbg=none " for transparent background
hi SpellBad ctermbg=red " for transparent background
hi SpellRare ctermbg=red
hi Special term=none cterm=none ctermfg=none ctermbg=none
hi StatusLine cterm=none ctermfg=blue ctermbg=none
hi StatusLineNC cterm=none ctermfg=blue ctermbg=none
hi StatusLineTerm cterm=none ctermfg=blue ctermbg=none
hi StatusLineTermNC cterm=none ctermfg=blue ctermbg=none
hi TabLineFill ctermfg=none ctermbg=none
hi TabLine ctermfg=none ctermbg=none cterm=none
hi TabLineSel ctermfg=blue ctermbg=none cterm=none

" Git Guter
highlight SignColumn      guifg=bg cterm=none ctermbg=none
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

"autocmd ColorScheme * highlight! link SignColumn LineNr

highlight ALEWarning ctermbg=none cterm=none
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0

" Mappings ------------------------------------------------------------
"

nmap gx :!open <c-r><c-a>

" Clear search highlight
map <silent> <leader><cr> :noh<cr>:redraw!<cr>

" Moving lines
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv


" NERDTree
" https://github.com/preservim/nerdtree

"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" FZF
let g:fzf_preview_window = ['right:50%', 'ctrl-/']
let g:fzf_layout = { 'down': '~40%' }


command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': []}), <bang>0)


" Commands -------------------------------------------------------------

" Automatically source vimrc on save.
autocmd! BufWritePost $MYVIMRC source $MYVIMRC | echom "Configuration reloaded..."

" If buffer modified, update any 'Last modified: ' in the first 20 lines.
" " 'Last modified: ' can have up to 10 characters before (they are retained).
" " Restores cursor and window position using save_cursor variable.
function! LastModified()
  if &modified
    let save_cursor = getpos(".")
    let n = min([20, line("$")])
    keepjumps exe '1,' . n . 's#^\(.\{,10}Last modified: \).*#\1' .
      \ strftime('%a %b %d, %Y  %I:%M%p') . '#e'
      call histdel('search', -1)
      call setpos('.', save_cursor)
  endif
endfun
autocmd BufWritePre * call LastModified()

" If buffer opened insert '# Day, Month, Year HH:MM:SS' at the top of the
" document
function! AddDate()
" added a keymap instead
endfun
autocmd BufRead ~/alexandrelamberty/todos/README.md call AddDate()

function! Generate()
  echom "Generate..."
  " Look for a generate script
  if !empty(glob("generate"))
     execute("!bash ./generate")
  endif
endfun
"autocmd BufWritePre * call Generate()


