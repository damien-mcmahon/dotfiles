" ========== VUNDLE SET UP ========== {{{
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" }}}
"
" =========== VUNDLE PLUGINS ========== {{{
Plugin 'Valloric/YouCompleteMe.git'
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'sjl/gundo.vim'
Plugin 'othree/html5.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'othree/jsdoc-syntax.vim'
Plugin 'XadillaX/json-formatter.vim'
Plugin 'othree/jspc.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'vim-syntastic/syntastic'
Plugin 'ternjs/tern_for_vim'
Plugin 'vim-airline/vim-airline'
Plugin 'burnettk/vim-angular'
Plugin 'skammer/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'tpope/vim-dispatch'
Plugin 'easymotion/vim-easymotion'
Plugin 'isRuslan/vim-es6'
Plugin 'ruanyl/vim-fixmyjs'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'elzr/vim-json'
Plugin 'tpope/vim-surround'

" }}}

call vundle#end()
filteype plugin indent on
" }}}

" ========= GENERAL SETTINGS ========== {{{
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set ignorecase
set foldmethod=syntax
set noswapfile
set modelines=1
set laststatus=2
" }}}

"  ========== Code Completion ========= {{{
filetype plugin on
set omnifunc=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
"  }}}
"  ========== Folding ========== {{{
set foldenable
set foldlevelstart=2
set foldnestmax=10
set foldmethod=indent
" }}}

" ========== Colours ========== {{{
set background=dark
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
colorscheme hybrid
" }}}

" ========== Javascript ========== {{{
let g:javascript_plugin_jsdoc = 1
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1
" }}}

" ========== KEY REBINDS ========= {{{
    let mapleader=","
    " ========== INSERT MODE ========= {{{
    inoremap <C-e> <Esc>A
    inoremap <C-A> <Esc>I
    "Quick escape
    inoremap jj <esc>
    " }}}
    " ========== NORMAL MODE ========== {{{
    "Remaps move begin/end
    nnoremap B ^
    nnoremap E $

    " $/^ doesn't do anything
    nnoremap $ <nop>
    nnoremap ^ <nop>
    nnoremap <leader>a :Ack!
    nnoremap <leader>g :Gstatus<CR>
    " Fold toggle
    nnoremap <space> za
    " Stop highlighting search
    nnoremap <leader><space> :nohlsearch<CR>
    " Toggle relative line numbers
    nnoremap <C-l> :call NumberToggle()<cr>
    " Easy Write
    nnoremap <leader>w :w<CR>
    " }}}
    " =========== VIMRC/ZSHRC shortcuts ========== {{{
    nnoremap <leader>ev :vsp $MYVIMRC<CR>
    nnoremap <leader>ez :vsp ~/.zshrc<CR>
    nnoremap <leader>sv :source $MYVIMRC<CR>
    " }}}
" }}}

" ========== FONTS ========== {{{
"Use Powerline fonts
let g:airline_powerline_fonts = 1
" }}}

" ========== STATUS LINE ========== {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" }}}

" =========== NERDTree =========== {{{
map <C-n> :NERDTreeToggle<CR>
map ,n :NERDTreeFind<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'.  a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', '#FF8C00', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('es6', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('js', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
" }}}

" =========== Syntastic =========== {{{
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 1
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_sass_checkers=["sass_lint"]
"let g:syntastic_scss_checkers=["sass_lint"]

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
" }}}

" =========== CtrlP settings ============== {{{
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
set wildignore+=*/tmp/*,*/node_modules/*,*/app/generated/*,*.so,*.swp,*.zip
" }}}

" ========== Angular Vim ========== {{{
let g:angular_source_directory = 'app/scripts'
let g:angular_test_directory = 'test/spec/'
" }}}

" =========== Functions =========== {{{
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
" }}}

" ========== Vim-Test ========== {{{
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>A :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>G :TestVisit<CR>

let test#strategy = "dispatch"
let g:test#preserve_screen = 1
" }}}

" =========== ACK! ========= {{{
let g:ack_use_dispatch = 1
" }}}

" =========== JS Libs ========== {{{
let g:used_javascript_libs = 'angularjs, angularui, angularuirouter, jasmine, react'
"  }}}

" ========== YCM ========== {{{
let g:ycm_autoclose_preview_window_after_completion = 1
" }}}

" vim:foldmethod=marker:foldlevel=0