" http://vim.wikia.com/wiki/Open_a_web-browser_with_the_URL_in_the_current_line
function! Browser ()
    let line = getline (".")
      let line = matchstr (line, "\%(http://\|www\.\)[^ ,;\t]*")
        exec "!netscape ".line
      endfunction
      map <Leader>w :call Browser ()<CR>
