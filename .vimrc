call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  } "Tree
Plug 'Valloric/YouCompleteMe' "AutoComplete
Plug 'jiangmiao/auto-pairs' "Auto{}
Plug 'kien/ctrlp.vim' "Search
Plug 'easymotion/vim-easymotion' "Motion
Plug 'octol/vim-cpp-enhanced-highlight' "C++ syntax
Plug 'honza/vim-snippets' "Sniplets
Plug 'sirver/ultisnips' "Sniplets
Plug 'ervandew/supertab' "TAB key
Plug 'scrooloose/syntastic'

"colorschemes
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
let g:molokai_original = 1

Plug 'sickill/vim-monokai'
Plug 'chriskempson/base16-vim'
let base16colorspace=256  " Access colors present in 256 colorspace

call plug#end()

syntax enable
set background=dark
colorscheme molokai
set noexpandtab "замена таба пробелом
set tabstop=4 "Установка размера таба
set softtabstop=4
set shiftwidth=4
set number "Номера строк
set hlsearch "Подсветка поиска
set incsearch "Подсветка первого вхождения поиск

"mappings
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

"nnoremap <F3> :CtrlPSmartTabs<CR>
"nnoremap <F4> :CtrlP<CR>

map <C-t> :tabnew<CR>
map <C-x> :tabNext<CR>
nnoremap <C-\> :!g++ % -o %.o -std=c++11 && ./%.o<CR> 

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
 
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<C-Right>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
"let g:UltiSnipsJumpBackwardTrigger="<C-k>"'

"Sytastic
let g:ycm_show_diagnostics_ui = 0
let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_cpp_compiler = 'gcc'
let g:syntastic_cpp_compiler_options = '-std=c++11'
"let g:syntastic_cpp_check_header = 1
"let g:syntastic_debug=1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
