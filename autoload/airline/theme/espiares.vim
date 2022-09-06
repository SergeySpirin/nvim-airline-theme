scriptencoding utf-8

" For this, the espiares.vim, theme, this is defined as
let g:airline#themes#espiares#palette = {}

" The espiares.vim theme:
let s:airline_a_normal   = [ '#00005f' , '#dfff00' , 17  , 190 ]
let s:airline_b_normal   = [ '#ffffff' , '#444444' , 255 , 238 ]
let s:airline_c_normal   = [ '#9cffd3' , '#202020' , 85  , 234 ]
let g:airline#themes#espiares#palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)

" Here we define overrides for when the buffer is modified.  This will be
" applied after g:airline#themes#espiares#palette.normal, hence why only certain keys are
" declared.
let g:airline#themes#espiares#palette.normal_modified = {
      \ 'airline_c': [ '#ffffff' , '#202020' , 255     , 53      , ''     ] ,
      \ }


let s:airline_a_insert = [ '#00005f' , '#00dfff' , 17  , 45  ]
let s:airline_b_insert = [ '#ffffff' , '#005fff' , 255 , 27  ]
let s:airline_c_insert = [ '#ffffff' , '#202020' , 15  , 17  ]
let g:airline#themes#espiares#palette.insert = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)
let g:airline#themes#espiares#palette.insert_modified = {
      \ 'airline_c': [ '#ffffff' , '#202020' , 255     , 53      , ''     ] ,
      \ }
let g:airline#themes#espiares#palette.insert_paste = {
      \ 'airline_a': [ s:airline_a_insert[0]   , '#d78700' , s:airline_a_insert[2] , 172     , ''     ] ,
      \ }

let g:airline#themes#espiares#palette.terminal = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)

let g:airline#themes#espiares#palette.replace = copy(g:airline#themes#espiares#palette.insert)
let g:airline#themes#espiares#palette.replace.airline_a = [ s:airline_b_insert[0]   , '#af0000' , s:airline_b_insert[2] , 124     , ''     ]
let g:airline#themes#espiares#palette.replace_modified = g:airline#themes#espiares#palette.insert_modified


let s:airline_a_visual = [ '#000000' , '#ffaf00' , 232 , 214 ]
let s:airline_b_visual = [ '#000000' , '#ff5f00' , 232 , 202 ]
let s:airline_c_visual = [ '#ffffff' , '#202020' , 15  , 52  ]
let g:airline#themes#espiares#palette.visual = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b_visual, s:airline_c_visual)
let g:airline#themes#espiares#palette.visual_modified = {
      \ 'airline_c': [ '#ffffff' , '#202020' , 255     , 53      , ''     ] ,
      \ }


let s:airline_a_inactive = [ '#4e4e4e' , '#1c1c1c' , 239 , 234 , '' ]
let s:airline_b_inactive = [ '#4e4e4e' , '#262626' , 239 , 235 , '' ]
let s:airline_c_inactive = [ '#4e4e4e' , '#202020' , 239 , 236 , '' ]
let g:airline#themes#espiares#palette.inactive = airline#themes#generate_color_map(s:airline_a_inactive, s:airline_b_inactive, s:airline_c_inactive)
let g:airline#themes#espiares#palette.inactive_modified = {
      \ 'airline_c': [ '#202020' , '' , 97 , '' , '' ] ,
      \ }

" For commandline mode, we use the colors from normal mode, except the mode
" indicator should be colored differently, e.g. light green
let s:airline_a_commandline = [ '#00005f' , '#00d700' , 17  , 40 ]
let s:airline_b_commandline = [ '#ffffff' , '#444444' , 255 , 238 ]
let s:airline_c_commandline = [ '#9cffd3' , '#202020' , 85  , 234 ]
let g:airline#themes#espiares#palette.commandline = airline#themes#generate_color_map(s:airline_a_commandline, s:airline_b_commandline, s:airline_c_commandline)

" Accents are used to give parts within a section a slightly different look or
" color. Here we are defining a "red" accent, which is used by the 'readonly'
" part by default. Only the foreground colors are specified, so the background
" colors are automatically extracted from the underlying section colors. What
" this means is that regardless of which section the part is defined in, it
" will be red instead of the section's foreground color. You can also have
" multiple parts with accents within a section.
let g:airline#themes#espiares#palette.accents = {
      \ 'red': [ '#ff0000' , '' , 160 , ''  ]
      \ }


" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded if the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if get(g:, 'loaded_ctrlp', 0)
  let g:airline#themes#espiares#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \ [ '#d7d7ff' , '#909090' , 189 , 55  , ''     ],
        \ [ '#ffffff' , '#875fd7' , 231 , 98  , ''     ],
        \ [ '#909090' , '#ffffff' , 55  , 231 , 'bold' ])
endif
