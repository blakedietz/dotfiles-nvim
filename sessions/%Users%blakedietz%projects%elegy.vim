let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/elegy/portal
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +45 lib/portal_web/router.ex
badd +1 fugitive:///Users/blakedietz/projects/elegy/portal/.git//
badd +5 lib/portal_web/live/case_live/financials/financials.ex
badd +5 lib/portal/invoicing/submission_lifecycle.ex
badd +14 ~/projects/elegy/portal-worktree/portal.worktrees/match-idaho-edrs-dc/lib/portal/documents/mappings/belltower/invoice_agreement.ex
badd +35 ~/projects/elegy/portal-worktree/portal.worktrees/match-idaho-edrs-dc/lib/portal/documents/doc_spring_client/templates/belltower/invoice.ex
badd +1 lib/portal/documents/doc_spring_client/templates/invoice.ex
badd +4 lib/portal/documents/mappings/belltower/invoice_agreement.ex
badd +4 lib/portal/documents/document_value_mapper.ex
badd +2 lib/portal/documents/doc_spring_client/templates/belltower/invoice_agreement.ex
argglobal
%argdel
$argadd .
edit fugitive:///Users/blakedietz/projects/elegy/portal/.git//
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
wincmd =
argglobal
balt ~/projects/elegy/portal-worktree/portal.worktrees/match-idaho-edrs-dc/lib/portal/documents/mappings/belltower/invoice_agreement.ex
let s:l = 2 - ((1 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
lcd ~/projects/elegy
wincmd w
argglobal
if bufexists(fnamemodify("~/projects/elegy/portal/lib/portal/documents/document_value_mapper.ex", ":p")) | buffer ~/projects/elegy/portal/lib/portal/documents/document_value_mapper.ex | else | edit ~/projects/elegy/portal/lib/portal/documents/document_value_mapper.ex | endif
if &buftype ==# 'terminal'
  silent file ~/projects/elegy/portal/lib/portal/documents/document_value_mapper.ex
endif
balt ~/projects/elegy/portal-worktree/portal.worktrees/match-idaho-edrs-dc/lib/portal/documents/mappings/belltower/invoice_agreement.ex
let s:l = 10 - ((4 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 030|
lcd ~/projects/elegy
wincmd w
wincmd =
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
