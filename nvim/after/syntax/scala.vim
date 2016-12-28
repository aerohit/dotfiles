syntax match scalaMarkdownH1 "#.*" contained
highlight scalaMarkdownH1 ctermfg=DarkGreen guifg=DarkGreen
highlight scalaMarkdownH1 term=bold,underline cterm=bold,underline gui=bold,underline

syntax match scalaMarkdownH2 "##.*" contained
highlight scalaMarkdownH2 ctermfg=LightGreen guifg=LightGreen

syntax match scalaMarkdownListItem "\*.*" contained
highlight scalaMarkdownListItem ctermfg=Yellow guifg=Yellow

syntax match scalaMarkdownParagraph "\w.*" contained
highlight scalaMarkdownParagraph ctermfg=Cyan guifg=Cyan

syn match scalaMarkdown "///\s.*" contains=scalaMarkdownH1,scalaMarkdownH2,scalaMarkdownListItem,scalaMarkdownParagraph
highlight link scalaMarkdown Comment
