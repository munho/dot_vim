" ---------------
" http://vim.wikia.com/wiki/Open_a_web-browser_with_the_URL_in_the_current_line
" ---------------
function! Browser ()
    let line = getline (".")
      let line = matchstr (line, "\%(http://\|www\.\)[^ ,;\t]*")
        exec "!netscape ".line
      endfunction
      map <Leader>w :call Browser ()<CR>

" https://github.com/majutsushi/tagbar/wiki
"let g:tagbar_type_javascript = {
"    \ 'ctagsbin' : '/usr/local/bin/jsctags'
"\ }

" ---------------
" https://github.com/bling/vim-airline
" ---------------
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" ---------------
" http://www.alexeyshmalko.com/2014/youcompleteme-ultimate-autocomplete-plugin-for-vim/
" ---------------	
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"