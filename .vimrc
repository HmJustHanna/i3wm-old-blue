


" BASIC



syntax enable
set background=dark

""colorscheme habamax 
""colorscheme retrobox
""colorscheme gruvbox8_hard
colorscheme darkblue 

set termguicolors
set relativenumber
set number
set mouse=
set cursorline
set completeopt=menu

set expandtab
set tabstop=4
set shiftwidth=4

set showcmd
set autoindent
set smartindent
set wrap
set linebreak

set hlsearch
set incsearch
set nowrapscan

set noswapfile
set nobackup
set fileencodings=utf-8,cp1251,koi8-r,cp86
set visualbell
let c_syntax_for_h=""



" KEYBINDINGS

" Automatically closing braces

inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap {_ {}<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap {+ {<CR>}<Esc>ko

" for more comfortable delete

map <F2> :retab <CR> :w <CR>
imap <C-h> <C-O>x

",s - переключение на исходный код
",S - тоже самое, только открыть в новом окне
",h - переключение на заголовочный файл
",H - тоже самое, только открыть в новом окне

nmap ,h :call MySwitchToHeader()<CR>
nmap ,H :call MySwitchToHeaderInNewWindow()<CR>
nmap ,s :call MySwitchToSource()<CR>
nmap ,S :call MySwitchToSourceInNewWindow()<CR>

  function! MySwitchToHeader()
      if &filetype == "c"
          find %:t:r.h
          return
      end

      if &filetype == "cpp"
          find %:t:r.hpp
          return
      end
  endfunction

  function! MySwitchToHeaderInNewWindow()
      if &filetype == "c"
          sf %:t:r.h
          return
      end

      if &filetype == "cpp"
          sf %:t:r.hpp
          return
      end
  endfunction

  function! MySwitchToSource()
      if &filetype == "c"
          find %:t:r.c
          return
      end

      if &filetype == "cpp"
          find %:t:r.cpp
          return
      end
  endfunction

  function! MySwitchToSourceInNewWindow()
     if &filetype == "c"
          sf %:t:r.c<CR>
          return
      end

      if &filetype == "cpp"
          sf %:t:r.cpp<CR>
          return
      end
  endfunction
" <--



" PLUGINS
  
" C / C++

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()            " required
filetype plugin indent on    " required
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal



"  STATUSLINE

set laststatus=2

set statusline=
set statusline+=%F
set statusline+=\ %*%y
set statusline+=\ %*(%l,%c/%L)
set statusline+=\ %*[%S]
"set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P
" set statusline +=%2*0x%04B\ %*          "character under cursor


