" extend inner change text motions (*nixcasts)
let items = [ "<bar>", "\\", "/", ":", ".", "*", "_" ] 
for item in items
   exe "nnoremap yi".item." T".item."yt".item
   exe "nnoremap ya".item." F".item."yf".item
   exe "nnoremap ci".item." T".item."ct".item
   exe "nnoremap ca".item." F".item."cf".item
   exe "nnoremap di".item." T".item."dt".item
   exe "nnoremap da".item." F".item."df".item
   exe "nnoremap vi".item." T".item."vt".item
   exe "nnoremap va".item." F".item."vf".item
endfor

