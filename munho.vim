" Powerline Font
" https://gist.github.com/wmernagh/4750511
" https://github.com/Lokaltog/powerline-fonts/tree/master/Meslo
if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=Meslo\ LG\ S\ for\ Powerline
   endif
endif

" ---------------
" airline
" ---------------
" Integrating with powerline fonts
let g:airline_powerline_fonts = 1
" Smarter tab line
let g:airline#extensions#tabline#enabled = 1
