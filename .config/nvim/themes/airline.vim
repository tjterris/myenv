" enable tabline
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#left_sep = ''
 let g:airline#extensions#tabline#left_alt_sep = ''
 let g:airline#extensions#tabline#right_sep = ''
 let g:airline#extensions#tabline#right_alt_sep = ''
 let airline#extensions#tabline#show_splits = 1
 let airline#extensions#tabline#tabs_label = ''

" Disable tabline close button

let g:airline#extensions#tabline#show_close_button = 1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#fnamecollapse = 1

"let g:airline_extensions = ['branch', 'coc']

let g:airline#extensions#tabline#buffers_label = ''
let g:airline#extensions#tabline#tabs_label = ''
let g:airline#extensions#coc#enabled = 1

" Just show the file name
" let g:airline#extensions#tabline#fnamemod = ':t'

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'z', 'warning', 'error']]

" statusline on top

let g:airline_statusline_ontop=0

let g:airline_skip_empty_sections = 1

let g:airline_highlighting_cache = 1

" let g:airline_section_c = airline#section#create([''])
let g:airline_section_z = airline#section#create(['linenr', ':%c'])
" Always show tabs
set showtabline=2

