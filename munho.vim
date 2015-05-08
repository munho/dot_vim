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

" ---------------
" https://github.com/kien/ctrlp.vim
" ---------------
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"  \ 'file': '\v\.(exe|so|dll)$',
"  \ 'link': 'some_bad_symbolic_links',
"  \ }

" ---------------
" http://majutsushi.github.com/tagbar/
" ---------------
Bundle 'Tagbar'
nmap <F8> :TagbarToggle<CR>
" YouCompleteMe
"Bundle 'Valloric/YouCompleteMe'
" vim-jsbeautify
" http://www.vim.org/scripts/script.php?script_id=4017
Bundle 'maksimr/vim-jsbeautify' 
Bundle 'einars/js-beautify' 
" set path to js-beautify file 
let g:jsbeautify_file = fnameescape(fnamemodify(expand("<sfile>"), ":h")."/bundle/js-beautify/beautify.js")
let g:jsbeautify_engine = "node"
map <c-f> :call JsBeautify()<cr>

" ---------------
" ---------------
