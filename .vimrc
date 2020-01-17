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
Plug 'rhysd/vim-clang-format'

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

let g:clang_format#style_options = {
			 \	"BasedOnStyle": "Chromium",
			 \	"AccessModifierOffset": "-4",
			 \	"AlignAfterOpenBracket": "Align",
			 \	"AlignConsecutiveAssignments": "true",
			 \	"AlignConsecutiveDeclarations": "false",
			 \	"AlignEscapedNewlines": "Left",
			 \	"AlignOperands": "true",
			 \	"AlignTrailingComments": "false",
			 \	"AllowAllParametersOfDeclarationOnNextLine": "false",
			 \	"AllowShortBlocksOnASingleLine": "false",
			 \	"AllowShortCaseLabelsOnASingleLine": "false",
			 \	"AllowShortFunctionsOnASingleLine": "Inline",
			 \	"AllowShortIfStatementsOnASingleLine": "false",
			 \	"AllowShortLoopsOnASingleLine": "false",
			 \	"AlwaysBreakAfterReturnType": "None",
			 \	"AlwaysBreakBeforeMultilineStrings": "false",
			 \	"AlwaysBreakTemplateDeclarations": "Yes",
			 \	"BinPackArguments": "false",
			 \	"BinPackParameters": "false",
			 \	"BreakAfterJavaFieldAnnotations": "false",
			 \	"BreakBeforeBinaryOperators": "None",
			 \	"BreakBeforeBraces": "Custom",
			 \	"BreakBeforeTernaryOperators": "true",
			 \	"BreakConstructorInitializers": "BeforeColon",
			 \	"BreakInheritanceList": "BeforeColon",
			 \	"BreakStringLiterals": "true",
			 \	"ColumnLimit": "80",
			 \	"CompactNamespaces": "false",
			 \	"ConstructorInitializerAllOnOneLineOrOnePerLine": "true",
			 \	"AllowAllConstructorInitializersOnNextLine": "false",
			 \	"ConstructorInitializerIndentWidth": "4",
			 \	"ContinuationIndentWidth": "4",
			 \	"Cpp11BracedListStyle": "true",
			 \	"DerivePointerAlignment": "false",
			 \	"DisableFormat": "false",
			 \	"ExperimentalAutoDetectBinPacking": "false",
			 \	"FixNamespaceComments": "true",
			 \	"IncludeBlocks": "Preserve",
			 \	"IndentCaseLabels": "false",
			 \	"IndentPPDirectives": "None",
			 \	"IndentWidth": "4",
			 \	"IndentWrappedFunctionNames": "false",
			 \	"JavaScriptQuotes": "Double",
			 \	"JavaScriptWrapImports": "true",
			 \	"KeepEmptyLinesAtTheStartOfBlocks": "false",
			 \	"Language": "Cpp",
			 \	"MaxEmptyLinesToKeep": "3",
			 \	"NamespaceIndentation": "None",
			 \	"PenaltyBreakAssignment": "5",
			 \	"PenaltyBreakBeforeFirstCallParameter": "5",
			 \	"PenaltyBreakComment": "5",
			 \	"PenaltyBreakFirstLessLess": "5",
			 \	"PenaltyBreakString": "5",
			 \	"PenaltyBreakTemplateDeclaration": "0",
			 \	"PenaltyExcessCharacter": "5",
			 \	"PenaltyReturnTypeOnItsOwnLine": "10",
			 \	"PointerAlignment": "Left",
			 \	"ReflowComments": "false",
			 \	"SortIncludes": "false",
			 \	"SortUsingDeclarations": "false",
			 \	"SpaceAfterCStyleCast": "false",
			 \	"SpaceAfterTemplateKeyword": "false",
			 \	"SpaceBeforeAssignmentOperators": "true",
			 \	"SpaceBeforeCpp11BracedList": "false",
			 \	"SpaceBeforeCtorInitializerColon": "true",
			 \	"SpaceBeforeInheritanceColon": "true",
			 \	"SpaceBeforeParens": "ControlStatements",
			 \	"SpaceBeforeRangeBasedForLoopColon": "false",
			 \	"SpaceInEmptyParentheses": "false",
			 \	"SpacesBeforeTrailingComments": "1",
			 \	"SpacesInAngles": "false",
			 \	"SpacesInCStyleCastParentheses": "false",
			 \	"SpacesInContainerLiterals": "false",
			 \	"SpacesInParentheses": "false",
			 \	"SpacesInSquareBrackets": "false",
			 \	"Standard": "Cpp11",
			 \	"TabWidth": "4",
			 \	"UseTab": "ForIndentation"}

