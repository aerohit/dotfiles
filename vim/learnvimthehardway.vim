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

""""" Chapter 11 - Buffer-Local Options and Mappings
" ---------------------------------------------------

"" Mappings
nnoremap <buffer> <localleader>x dd

"" Settings - a lot of the options/settings could be done on a per buffer basis.
setlocal wrap

""""" Chapter 12 - Autocommands
" ------------------------------

"" The following command creates a file ending with .txt when opened for editing.
autocmd BufNewFile *.txt :write

"" Formats html files before saving
autocmd BufWritePre *.html :normal gg=G
autocmd BufWritePre,BufRead *.html :normal gg=G
autocmd BufNewFile,BufRead *.html setlocal nowrap

"" FileType events
autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>

"" do :help autocmd-events to see a list of all the events.

""""" Chapter 13 - Buffer Local Abbreviations
" --------------------------------------------

iabbrev <buffer> --- &mdash;

autocmd FileType python     :iabbrev <buffer> iff if:<left>
autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
iabbrev <buffer> return NOPENOPENOPE

""""" Chapter 14 - Autocommand Groups
" ------------------------------------

" autocmds don't clear, for example, following would sleep for 600ms after
" each write:
:autocmd BufWrite * :sleep 200m
:autocmd BufWrite * :sleep 200m
:autocmd BufWrite * :sleep 200m
" so the strategy is to group them and clear them like so:
:augroup testgroup
:    autocmd BufWrite * :echom "Foo"
:    autocmd BufWrite * :echom "Bar"
:augroup END
:augroup testgroup
:    autocmd!
:    autocmd BufWrite * :echom "Baz"
:augroup END

" another example
augroup filetype_html
    autocmd!
    autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END
