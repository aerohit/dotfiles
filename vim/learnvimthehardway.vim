" Notes from http://learnvimscriptthehardway.stevelosh.com/

""""" Chapter 1 - Echoing messages
" ---------------------------------

echo "An echo message"
echom "An echom message"
messages

""""" Chapter 2 - Setting Options
" --------------------------------

"" Syntax for boolean options

" :set <name>
" :set no<name>
set number
set nonumber

"" Toggle

" :set <name>!
set number!

"" Checking options

" :set <name>?
set number?

"" Options with values

" :set <name>=<value>
set numberwidth=4

"" Multiple options at once

set number numberwidth=4
set number? numberwidth?

""""" Chapter 3 - Basic mapping
" -----------------------------

map - dd

"" Special characters

" :map <keyname> <mapping>
" To visually select the current word
map <Space> viw	
" To get the notation for special characters, search help for: *key-notation* *key-codes* *keycodes*
map <C-d> dd

""""" Chapter 4 - Modal mapping
" ------------------------------

"" To specify mode based mapping, use: nmap, vmap, imap
"" To unmap, use: nunmap, nunvmap, nunimap

nmap \ dd
vmap \ U
imap <C-d> <esc>ddi

""""" Chapter 5 - Strict mapping
" -------------------------------

"" All the four mappings above (map, nmap, vmap, imap) are prone to recursion.
"" Each of them has a non-recursive variant i.e. *map -> *noremap
"" noremap, nnoremap, vnoremap, inoremap

""""" Chapter 6 - Leaders
" ------------------------

"" The default leader is '\'. To change it:
let mapleader = "-"
nnoremap <Leader>d dd

"" Use localleader for filetype based leaders
let maplocalleader = "\\"

""""" Chapter 7 - Editing vimrc
" ------------------------------

"" To open vimrc for editing
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
"" To source vimrc
nnoremap <Leader>sv :source $MYVIMRC<CR>

""""" Chapter 8 - Abbreviations
" ------------------------------

iabbrev tehn then
iabbrev @@    aerohit.saxena@gmail.com
iabbrev ccopy Copyright 2013 Rohit Saxena, all rights reserved.

""""" Chapter 9 - More mappings
" ------------------------------

"" The following mapping surrounds the current word with "
:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

""""" Chapter 10 - Training your fingers
" ---------------------------------------

"" To disable key mappings
inoremap <Esc> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
