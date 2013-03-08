" ----------------------------------------
" Vundle
" ----------------------------------------

set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" ---------------
" Plugin Bundles
" ---------------

" Navigation
"Bundle 'ZoomWin'
" This fork is required due to remapping ; to :
Bundle 'christoomey/vim-space'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kien/ctrlp.vim'
" UI Additions
Bundle 'mutewinter/vim-indent-guides'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'Rykka/colorv.vim'
Bundle 'nanotech/jellybeans.vim'
Bundle 'tomtom/quickfixsigns_vim'
" Commands
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'godlygeek/tabular'
Bundle 'mileszs/ack.vim'
Bundle 'milkypostman/vim-togglelist'
Bundle 'AndrewRadev/sideways.vim'
"Bundle 'keepcase.vim'
"Bundle 'scratch.vim'
Bundle 'mattn/zencoding-vim'
"Bundle 'mutewinter/GIFL'
"Bundle 'swaroopch/vim-markdown-preview'
Bundle 'AndrewRadev/switch.vim'
Bundle 'tpope/vim-eunuch'
Bundle 'itspriddle/vim-marked'
Bundle 'mutewinter/UnconditionalPaste'
"Bundle 'skalnik/vim-vroom'
Bundle 'HelpClose'
" Automatic Helpers
Bundle 'IndexedSearch'
Bundle 'xolox/vim-session'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'gregsexton/MatchTag'
Bundle 'Shougo/neocomplcache'
" Language Additions
"   Ruby
"Bundle 'vim-ruby/vim-ruby'
"Bundle 'tpope/vim-haml'
"Bundle 'tpope/vim-rails'
"Bundle 'tpope/vim-rake'
"   JavaScript
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leshill/vim-json'
"   HTML
Bundle 'nono/vim-handlebars'
Bundle 'othree/html5.vim'
Bundle 'indenthtml.vim'
"   TomDoc
"Bundle 'mutewinter/tomdoc.vim'
"Bundle 'jc00ke/vim-tomdoc'
"   Other Languages
"Bundle 'msanders/cocoa.vim'
"Bundle 'mutewinter/taskpaper.vim'
"Bundle 'mutewinter/nginx.vim'
"Bundle 'timcharper/textile.vim'
Bundle 'mutewinter/vim-css3-syntax'
"Bundle 'acustodioo/vim-tmux'
"Bundle 'mutewinter/vim-markdown'
Bundle 'groenewege/vim-less'
Bundle 'wavded/vim-stylus'
"Bundle 'tpope/vim-cucumber'
" MatchIt
Bundle 'matchit.zip'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
" Libraries
Bundle 'L9'
Bundle 'tpope/vim-repeat'
"
" ------------------------------------------------------Munho.begin
" http://majutsushi.github.com/tagbar/
Bundle 'Tagbar'
nmap <F8> :TagbarToggle<CR>
" YouCompleteMe
Bundle 'Valloric/YouCompleteMe'
" vim-jsbeautify
" http://www.vim.org/scripts/script.php?script_id=4017
Bundle 'maksimr/vim-jsbeautify' 
Bundle 'einars/js-beautify' 
" set path to js-beautify file 
let g:jsbeautify_file = fnameescape(fnamemodify(expand("<sfile>"), ":h")."/bundle/js-beautify/beautify.js")
let g:jsbeautify_engine = "node"
map <c-f> :call JsBeautify()<cr>
"
" ------------------------------------------------------Munho.end

