set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" python
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'

" syntaxt checker
"TODO: congfigure for latex
"Plugin 'vim-syntastic/syntastic'

" Utility
Plugin 'scrooloose/nerdtree'

" Plugin 'git@github.com:kien/ctrlp.vim.git'          "file search"
Plugin 'ycm-core/YouCompleteMe.git'
" Plugin 'mileszs/ack.vim'

" Debugger
Plugin 'puremourning/vimspector'
Plugin 'szw/vim-maximizer'
" Power line
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Some color schemes
" Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

"Latex plug in
Plugin 'lervag/vimtex'

"Make
"Plugin 'neomake/neomake'

" Snippets TODO: Put back in!
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"Plugin 'svermeulen/vim-easyclip'

Plugin 'D0n9X1n/markdown-preview.vim'
" Snippets

" Writing
Plugin 'reedes/vim-pencil'
" All of your Plugins must be added before the following line
Plugin 'mhinz/vim-startify'

" Easy motion
Plugin 'easymotion/vim-easymotion'

" fzf
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'


call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set relativenumber
set noswapfile


let &t_TI = ""
let &t_TE = ""

" python
set encoding=utf-8

"""""" basic colemake mapping
"Navigation
noremap n h
noremap N H
noremap gn gT

noremap e j
noremap i k
noremap o l
noremap go gt
"nnoremap O L
nnoremap j J
nnoremap J gJ 
noremap ` y

noremap m n
noremap M N


"Marks
noremap ¢ m
noremap k `
noremap kk ``
noremap K [`
noremap € ]`
" Hellow




noremap l u
noremap L U
noremap u i
noremap U I

" Open new line above or bellow


" Instert
noremap u i
noremap U I
noremap ` o
noremap – O
noremap ; A

" Switching s and c

noremap s c
noremap S C

noremap c s
noremap C S


" Splise this line and the new line  


"nnoremap c y
"nnoremap C Y

"xnoremap y
"xnoremap J Y

" Visual remappings 

vnoremap n h
vnoremap e j
vnoremap i k
vnoremap o l

xnoremap n h
xnoremap e j
xnoremap i k
xnoremap o l

xnoremap u I

" Do not change clipboard when pasting over marked text
xnoremap <expr> p 'pgv"'.v:register.'y`>'
xnoremap <expr> P 'Pgv"'.v:register.'y`>'


" this only makes sense for kinesis 

nnoremap <SPACE> <Nop>
let mapleader = " "
let maplocalleader='\' 
" Use the elflord color scheme.
colors elflord

" Enable syntax highlighting.
syntax on

noremap <leader>vim :vsplit $MYVIMRC<CR>
noremap <leader>vin :vsplit ~/.config/i3/config<CR>
noremap <leader>sv :source $MYVIMRC<CR>
nnoremap # :w!<CR>
nnoremap @ :q<CR>

nnoremap <leader>n :wincmd h<CR>
nnoremap <leader>e :wincmd j<CR>
nnoremap <leader>i :wincmd k<CR>
nnoremap <leader>o :wincmd l<CR>
nnoremap <leader><leader> <c-w><c-w>


nnoremap <leader>l :UndotreeShow<CR>

" clipping TODO: w " is a nasty mapping
noremap yf :%y+<CR> 
set mouse=a
set clipboard=unnamedplus

"noremap ` y
"noremap `` yy
"vnoremap y l

"""" Enter visual
"noremap E ^vj 
"noremap I $vk 
" Enter line visual mode
noremap _ <C-v>
nnoremap V V





"set relativenumber
set number
" set virtualedit=onemore
set autochdir


"""""""
" superior navigation

""" Easy motion

map <return> <Plug>(easymotion-prefix)
nmap E <Plug>(easymotion-j)
nmap I <Plug>(easymotion-k)
nmap O <Plug>(easymotion-w)
nmap N <Plug>(easymotion-b)

nmap ? <Plug>(easymotion-overwin-w)


"nnoremap n<return> B
"vnoremap n<return> B
" end of word containg special symbols

" forward to begining of word with symbols 


" back to end of words without symbols 
noremap " ge

" forward to end of word with symbols 
noremap ' e



vnoremap ; i

" cursor movements
nnoremap <C-e> <C-d>zz
nnoremap <C-i> <C-u>zz

" Jump to middle of screen
nnoremap G Gzz

nnoremap <leader>h M
" to capital


" Senter on screen  
nnoremap h zz

nnoremap , {
nnoremap . }
vnoremap , {
vnoremap . }

noremap <return>n ^
noremap <return>o $


" Repeat previous
noremap $ ;


" marking blocks
"vnoremap ( ab
"vnoremap ) ib
"vnoremap [ a[
"vnoremap ] i]
"
"vnoremap { aB
"vnoremap } iB
"vnoremap < a<
"vnoremap > i<
" backspace
nnoremap <BS> "_X
nnoremap <Del> "_x 
fixdel




nnoremap <silent> <Right> :exe "vertical resize +5 "<CR>
nnoremap <silent> <Left> :exe "vertical resize -5 "<CR>


nnoremap <silent> <Up> :exe "resize +5 "<CR>
nnoremap <silent> <Down> :exe "resize -5 "<CR>


" Session settings
nnoremap <leader>se :mksession ~/.vim/session/

" Writing configurations

set nocompatible
filetype plugin on       " may already be in your .vimrc
let g:pencil#wrapModeDefault = 'soft'
augroup pencil
autocmd!
autocmd FileType markdown,mkd call pencil#init()
autocmd FileType text      call pencil#init()
augroup END



"""" Fixing deletion and cutting

" Make d map to the black hole
noremap d "_d
noremap dd "_dd
noremap D "_D
noremap x d
noremap X D








" Indention
filetype plugin indent on

"augroup text_c
"  autocmd!
"  :autocmd text c set nonumber
"augroup end



""" FZF




"nnoremap <leader> :NERDTreeToggle<Enter>
nnoremap <silent>  <leader>t :NERDTreeFocus<Enter>
let NERDTreeMapUp= "i"
let NERDTreeMenuUp= "i"
let NERDTreeMapDown= "e"
let NERDTreeMenuDown= "e"

" let NERDTreeMapUpdir= "i"
" let NERDTreeMapDowndir= "e"
let NERDTreeMapJumpFirstChild= "I"
let NERDTreeMapJumpLastChild= "E" 
"let NERDTreeMapJumpNextSibling=<C-e>

let NERDTreeMapOpenExpl= "å"
let NERDTreeMapOpenSplit= "ø"
let NERDTreeMapHidden= "æ"
let NERDTreeToggleHidden= "A"
let NERDTreeMapOpenInTab= "åo"





"fzf
noremap <leader>. :Files ./<CR>
noremap <leader>~ :Files ~/<CR>










" python idention

autocmd FileType python map <buffer> <F3> :call flake8#Flake8()<CR>

" au BufNewFile,BufRead *.py
"     \ set tabstop=4
"     \ set softtabstop=4
"     \ set shiftwidth=4
"     \ set textwidth=79
"     \ set expandtab
"     \ set autoindent
"     \ set fileformat=unix

" python syntaxt
let python_highlight_all=1


" color scheme
if has('gui_running')
  set background=dark
  colorscheme solarized
endif


" You complete me
let g:ycm_autoclose_preview_window_after_insertion = 1


" debugging
let g:vimspector_install_gadgets = [ 'debugpy']

nmap <localleader>r :call vimspector#Launch()<CR> 
nmap <localleader>t :call vimspector#Continue()<CR> 

" These should probably be changed at some point
nmap <localleader>p  <Plug>VimspectorStepInto
nmap <localleader>f <Plug>VimspectorStepOver
nmap <localleader>w <Plug>VimspectorStepOut


nmap <localleader>a <Plug>VimspectorRestart
nmap <localleader>u <Plug>VimspectorToggleBreakpoint
nmap <localleader>uc <Plug>VimspectorToggleConditionalBreakpoint

nmap <localleader>q <Plug>VimspectorClearLineBreakpoint

" packadd termdebug
" let g:termdebug_wide=1


" maximizer mappings
" nnoremap <leader>m :MaximizerToggle<CR>
" vnoremap <leader>m :MaximizerToggle<CR>gv
" inoremap <leader>m <C-o>:MaximizerToggle<CR>


" Syntastic

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
" Syntastic
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


" cpp
""		filetype plugin on
"let g:syntastic_cpp_checkers = ['Cppcheck']
""		" Enable highlighting of C++11 attributes
""		let g:cpp_attributes_highlight = 1
""		
""		" Highlight struct/class member variables (affects both C and C++ files)
""		let g:cpp_member_highlight = 1
""		
""		" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
""		" (affects both C and C++ files)
""		let g:cpp_simple_highlight = 1

"
"TODO
"" Ultisnips
"let g:UltiSnipsExpandTrigger="<c-u>"
"let g:UltiSnipsJumpForwardTrigger="<c-o>"
"let g:UltiSnipsJumpBackwardTrigger="<c-n>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Startify

let g:startify_bookmarks = [ '.vim/vimrc', '.config/i3/config', '~/.bashrc', '~/.config/zsh/px4.sh']
let g:startify_session_dir = '~/.vim/session/'
let g:startify_custom_header = []

" vimtex

let g:tex_flavor='latex'
let g:vimtex_view_method='mupdf'
"nmap <localleader>c  <Plug>vimtex-compiler
"let g:vimtex_enabled=1
"g:vimtex_view_general_options_latexmk
"let g:vimtex_compiler_latexmk='1'

if !exists('g:ycm_semantic_triggers')
let g:ycm_semantic_triggers = {}
endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme



" let g:vimtex_grammar_vlty = {'lt_directory' :'/home/ole/LT', 'show_suggestions' : 1}
map <leader>c :w <bar> compiler vlty <bar> make <bar> :cw <cr><esc>

set spelllang=en_gb


let g:vimtex_grammar_vlty = {
\ 'lt_directory': '~/lib/LanguageTool',
\ 'lt_command': '',
\ 'lt_disable': 'WHITESPACE_RULE',
\ 'lt_enable': '',
\ 'lt_disablecategories': '',
\ 'lt_enablecategories': '',
\ 'server': 'no',
\ 'shell_options': '',
\ 'show_suggestions': 1,
\ 'encoding': 'auto',
\}

let g:vimtex_quickfix_ignore_filters = [
\ 'Marginpar on page',
\ 'Reference',
\ 'Overfull',
\ 'Reference',
\ 'Citation',
\ 'Underfull',
\]

" syntastic

let g:syntastic_tex_checkers = ["lacheck"]







" Markdown 
map <leader>mg :MarkdownPreview GitHub<CR>


" Vim custom functions

""""""
" Cpp custom function
" Add highlighting for function definition in C++
function! EnhanceCppSyntax()
endfunction


" insert mode

if has("autocmd")
au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
au InsertEnter,InsertChange *
\ if v:insertmode == 'i' | 
\   silent execute '!echo -ne "\e[6 q"' | redraw! |
\ elseif v:insertmode == 'r' |
\   silent execute '!echo -ne "\e[4 q"' | redraw! |
\ endif
au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif
"TODO ADD in _ for normal r

" Modified version of Damian Conway's Die Blinkënmatchen: highlight matches
"
" This is how long you want the blinking to last in milliseconds. If you're
" using an earlier Vim without the `+timers` feature, you need a much shorter
" blink time because Vim blocks while it waits for the blink to complete.
let s:blink_length = has("timers") ? 500 : 100

if has("timers")
" This is the length of each blink in milliseconds. If you just want an
" interruptible non-blinking highlight, set this to match s:blink_length
" by uncommenting the line below
let s:blink_freq = 50
"let s:blink_freq = s:blink_length
let s:blink_match_id = 0
let s:blink_timer_id = 0
let s:blink_stop_id = 0

" Toggle the blink highlight. This is called many times repeatedly in order
" to create the blinking effect.
function! BlinkToggle(timer_id)
if s:blink_match_id > 0
" Clear highlight
call BlinkClear()
else
" Set highlight
let s:blink_match_id = matchadd('ErrorMsg', s:target_pat, 101)
redraw
endif
endfunction

" Remove the blink highlight
function! BlinkClear()
call matchdelete(s:blink_match_id)
let s:blink_match_id = 0
redraw
endfunction

" Stop blinking
"
" Cancels all the timers and removes the highlight if necessary.
function! BlinkStop(timer_id)
" Cancel timers
if s:blink_timer_id > 0
call timer_stop(s:blink_timer_id)
let s:blink_timer_id = 0
endif
if s:blink_stop_id > 0
call timer_stop(s:blink_stop_id)
let s:blink_stop_id = 0
endif
" And clear blink highlight
if s:blink_match_id > 0
call BlinkClear()
endif
endfunction

augroup die_blinkmatchen
autocmd!
autocmd CursorMoved * call BlinkStop(0)
autocmd InsertEnter * call BlinkStop(0)
augroup END
endif

function! HLNext(blink_length, blink_freq)
let s:target_pat = '\c\%#'.@/
if has("timers")
" Reset any existing blinks
call BlinkStop(0)
" Start blinking. It is necessary to call this now so that the match is
" highlighted initially (in case of large values of a:blink_freq)
call BlinkToggle(0)
" Set up blink timers.
let s:blink_timer_id = timer_start(a:blink_freq, 'BlinkToggle', {'repeat': -1})
let s:blink_stop_id = timer_start(a:blink_length, 'BlinkStop')
else
" Vim doesn't have the +timers feature. Just use Conway's original
" code.
    " Highlight the match
    let ring = matchadd('ErrorMsg', s:target_pat, 101)
    redraw
    " Wait
    exec 'sleep ' . a:blink_length . 'm'
    " Remove the highlight
    call matchdelete(ring)
    redraw
  endif
endfunction

" Set up maps for n and N that blink the match
execute printf("nnoremap <silent> m n:call HLNext(%d, %d)<cr>", s:blink_length, has("timers") ? s:blink_freq : s:blink_length)
execute printf("nnoremap <silent> M N:call HLNext(%d, %d)<cr>", s:blink_length, has("timers") ? s:blink_freq : s:blink_length)
