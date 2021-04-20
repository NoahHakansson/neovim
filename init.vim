syntax on
filetype plugin indent on
set noswapfile
set ruler
set nowritebackup
set nu
set re=1
set ignorecase
set smartcase
set noshowmode
set titlestring=Neovim\ \-\ %t
set title
" Map the leader key to SPACE
let mapleader="\<SPACE>"
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <S-k> :call CocActionAsync('doHover')<CR>
" bind ESC to close poups and remove highlighting from search.
nmap <silent> <Esc> :call coc#float#close_all() <bar> :noh <CR>
" unbind arrow keys and backspace+enter
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
nmap <BS> <nop>
nmap <CR> <nop>
" TAB bidnings
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt
nnoremap <silent> <TAB> :tabn<CR>

" floaterm
nnoremap <silent> <S-t> :FloatermToggle<CR>
tnoremap <silent> <S-t> <C-\><C-n>:FloatermToggle<CR>
let g:floaterm_width=0.6
let g:floaterm_height=0.7
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1
" 24-bit color support
set termguicolors

set grepprg=rg\ --vimgrep

call plug#begin('~/.vim/plugged')
" Plugin options
Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-vinegar'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'jremmen/vim-ripgrep'
Plug 'unblevable/quick-scope'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'voldikss/vim-floaterm'
Plug 'preservim/nerdcommenter'
Plug 'LunarWatcher/auto-pairs', { 'tag': '*' }
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
Plug 'luochen1990/rainbow'
" Work habits
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-ragtag'
" Git-related plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tommcdo/vim-fugitive-blame-ext'
Plug 'rhysd/git-messenger.vim'
Plug 'mhinz/vim-signify'

Plug 'rizzatti/dash.vim'

Plug 'dense-analysis/ale'

Plug 'tpope/vim-projectionist'

Plug 'janko-m/vim-test'
Plug 'kevinsjoberg/vim-test-neovim-error-only'

Plug 'justinmk/vim-sneak'
" Directory Viewer for Vim
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Dark powered asynchronous completion framework for neovim
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'etordera/deoplete-rails'
" Plug 'fishbullet/deoplete-ruby'
"
" More Autocomplete
" Plug 'neovim/nvim-lsp' " nvim-lsp
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
" Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
Plug 'liuchengxu/vim-which-key'
" Show vertical lines
Plug 'Yggdroot/indentLine'
" Icons
Plug 'ryanoasis/vim-devicons'
" color theme
Plug 'sainnhe/gruvbox-material'
" c++ highlighting
Plug 'jackguo380/vim-lsp-cxx-highlight'
" c++ autoformat
Plug 'rhysd/vim-clang-format'
" Add plugins to &runtimepath
call plug#end()
" https://github.com/joshdick/onedark.vim#neovim
" let g:onedark_termcolors = 16
" set background=dark
" Floaterm
" Floaterm
let g:floaterm_width=0.6
let g:floaterm_height=0.7
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1
" COLORSCHEME ---------------------------------------------------
" let g:palenight_color_overrides = overrides#GetColors()
" c++ style auto format
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11",
            \ "BreakBeforeBraces" : "Stroustrup"}
" c++ syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
" theme settings
let g:gruvbox_material_palette = 'original'
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material
" Highlight no breaking space characters
" highlight NoBreakingSpace guibg=red ctermbg=red guifg=white ctermfg=white
" syntax match NoBreakingSpace /.* .*/

" rainbow parenthesis and operators
let g:rainbow_active = 1
let g:rainbow_conf = {
\           'guifgs': ['#8be9fd', '#50fa7b', '#ffff59', '#ff5555'],
\           'guis': [''],
\           'cterms': [''],
\           'operators': '_=\|+\|-\|*\|<\|>\|\/\|<=\|>=\|||\|&&\|==\|!=\|===\|!==_',
\}

" Lightline config
let g:lightline = {
      \ 'colorscheme': 'gruvbox_material',
      \ }
" Lightline config END

" nerdcommenter
let g:NERDCreateDefaultMappings = 0
nnoremap <silent> <leader>c :call NERDComment(1, 'toggle')<CR>
vnoremap <silent> <leader>c :call NERDComment(1, 'toggle')<CR>

" Ranger (rnvimr) config
" Make Ranger replace netrw and be the file explorer
let g:NERDTreeHijackNetrw = 0
let g:rnvimr_ex_enable = 1

nmap <silent> <space>r :RnvimrToggle<CR>
" Ranger (rnvimr) config END

" Coc config
" Bind tab and shift-tab to navigate autocomplete selection list.
inoremap <expr> <Tab> pumvisible() ? "\<Down>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<Up>" : "\<S-Tab>"
" Coc config END

" highlight NoBreakingSpace guibg=red guifg=white ctermbg=red ctermfg=white
" syntax match NoBreakingSpace / /

set listchars=nbsp:⏚
set list
syntax match NoBreakingSpace /.* .*/
highlight NoBreakingSpace guibg=red guifg=white ctermbg=red ctermfg=white
"
" IndentLine config
let g:indentLine_char = '│'
"
" Start autocomplete for deoplete.vim
" let g:deoplete#enable_at_startup = 1

" Fix slow ruby with polyglot
let g:ruby_path = system('echo $HOME/.rbenv/shims')
" Ale fix rubocop on save

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'ruby': ['rubocop'],
\   'markdown': ['mdl'],
\   'vue': ['prettier'],
\   'js': ['eslint', 'prettier']
\}
let g:ale_fix_on_save = 0
let g:ale_ruby_rubocop_executable = 'bundle'

" Git related stuff -------------------------------------
" Signify config
let g:signify_sign_change = '~'
" Dirvish sort folders first
let g:dirvish_mode = ':sort ,^\v(.*[\/])|\ze,'
" Statusline
set laststatus=2
"set statusline=%!CreateStatusline()

" Quickscope config
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#afff5f' gui=underline ctermfg=81 cterm=underline

let g:qs_max_chars=150
" Quickscope config END

" Colors for ALE in statusline
hi WarningColor guibg=#E5C07B guifg=#1E1E1E ctermbg=Yellow ctermfg=Black
hi ErrorColor guibg=#DF6A63 guifg=#1E1E1E ctermbg=Red ctermfg=Black

function! CreateStatusline()
  let statusline=''
  let statusline.='%#diffadd#'
  let statusline.=' %{FugitiveHead()} '
  let statusline.='%#CursorlineNr#'
  let statusline.=' %f'                  " Show filename
  let statusline.=' %m'                  " Show modified tag
  let statusline.='%='                   " Switch elements to the right
  if get(g:, 'streamline_enable_devicons', 1) && exists('*WebDevIconsGetFileTypeSymbol')
      let statusline.=' %{WebDevIconsGetFileTypeSymbol()}'
  else
      let statusline.=' %y'              " Show filetype
  endif
  let statusline.=' ☰ %l:%c'             " Show line number and column
  let statusline.=' %p%% '               " Show percentage
  let statusline.='▏'
  let statusline.='%#WarningColor#'
  let statusline.='%{GetAleStatus()[0]}'
  let statusline.='%#ErrorColor#'
  let statusline.='%{GetAleStatus()[1]}'

  return statusline
endfunction

" Lags, use this if change to faster terminal
"function! GitBranch()
"    let l:branch = system('cd '.expand('%:p:h').' && git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d "\n"')
"    return !strlen(l:branch) || !isdirectory(expand('%:p:h')) ? '' : '▏' . l:branch . ' '
"endfunction

function GetAleStatus()
    let l:counts = ale#statusline#Count(bufnr(''))
    let l:all_errors = l:counts.error + l:counts.style_error
    let l:formated_errors = l:all_errors == 0 ? '' : '▏✗ ' . l:all_errors . ' '
    let l:all_warnings = l:counts.total - l:all_errors
    let l:formated_warnings = l:all_warnings == 0 ? '' : '▏⊖ ' . l:all_warnings . ' '
    return [l:formated_warnings, l:formated_errors]
endfunction
"------------------------------------------------------------------------------

" colorscheme MaterialPalenightTheme
let g:neomake_jsx_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_exe = $PWD .'/node_modules/.bin/eslint'
let g:neomake_javascript_eslint_maker = {
\ 'args': ['--no-color', '--format', 'compact'],
\ 'errorformat': '%f: line %l\, col %c\, %m'
\ }
let g:neomake_javascript_eslint_maker = { 'args': ['--no-color', '--format', 'compact'], 'errorformat': '%f: line %l\, col %c\, %m' }
let g:neomake_verbose = 0
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_fmt_command = "goimports"
" autocmd! BufWritePost * Neomake
" autocmd! BufReadPost * Neomake
" FZF Config
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

map <leader>f :Files ~/<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>m :Marks<CR>

" sneak cofig
let g:sneak#label = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

" immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1

" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow

" Cool prompts
let g:sneak#prompt = '🥷> '
" sneak config END

let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"


" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)


" Get text in files with Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Git grep
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

" NerdTree
function ToggleNerdTreeFile()
  if &filetype == 'nerdtree'
    :NERDTreeToggle
  else
    :NERDTreeFind
  endif
endfunction

nmap - :Dirvish %<CR>
map <leader>n :call ToggleNerdTreeFile()<CR>
"" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" Switch between the last two files
nnoremap <leader><leader> <c-^>
" Search and Replace
"nmap <Leader>s :%s//g<Left><Left>
" Find all occurences
"nnoremap <leader>g :Rg<cr>
" Catch :W save typo and turn it into :w so the save works anyway
command! W  write
" Catch :Q quit typo and turn it into :q so the quit works anyway
command! Q  quit
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
autocmd FileType go,elm set list listchars=tab:\ \ ,trail:¬∑,nbsp:¬∑

" Run testsuite in nvim with nanobox and docker-compose
function! EnvironmentTransform(cmd) abort
  if filereadable("boxfile.yml")
    return a:cmd "'nanobox run '.a:cmd
  elseif filereadable("docker-compose.yml")
    if $DCSPEC
      return 'docker-compose run --rm web '.a:cmd
    else
      return a:cmd
    endif
    " return a:cmd "'nanobox run '.a:cmd
  else
    return a:cmd
  endif
endfunction
let g:test#custom_transformations = {'environment': function('EnvironmentTransform')}
let g:test#transformation = 'environment'
" A custom Neovim strategy for test.vim that reuses the terminal buffer for
" running tests and automatically close buffer on success.
" https://github.com/kevinsjoberg/vim-test-neovim-error-only
if has('nvim')
  let g:test#strategy = 'neovim_error_only'
endif

" Projectionist provides granular project configuration using 'projections'.
" A Vim wrapper for running tests on different granularities.
" https://github.com/janko-m/vim-test
" A custom Neovim strategy for test.vim that reuses the terminal buffer for
" running tests and automatically close buffer on success.
" https://github.com/kevinsjoberg/vim-test-neovim-error-only

" Projectionist setup
" ===================================================
autocmd User ProjectionistDetect
\ call projectionist#append(getcwd(),
\ {
\    'app/*.rb': {
\      'alternate': [
\        'spec/{}_spec.rb',
\        'test/{}_test.rb',
\      ],
\      'template': [
\        '# frozen_string_literal: true',
\        '',
\        'class {basename|capitalize|camelcase}',
\        'end'
\      ]
\    },
\    'lib/*.rb': {
\      'alternate': [
\        'spec/{}_spec.rb',
\        'test/{}_test.rb',
\      ],
\      'template': [
\        '# frozen_string_literal: true',
\        '',
\        'class {basename|capitalize|camelcase}',
\        'end'
\      ]
\    },
\    'spec/*_spec.rb': {
\      'alternate': [
\        'app/{}.rb',
\        'lib/{}.rb'
\      ],
\      'template': [
\        "# frozen_string_literal: true",
\        "",
\        "require 'rails_helper'",
\        "",
\        "RSpec.describe {basename|capitalize|camelcase} do",
\        "end"
\      ]
\    },
\    'test/*_test.rb': {
\      'alternate': 'app/{}.rb',
\      'template': [
\        "# frozen_string_literal: true",
\        "",
\        "require 'test_helper'",
\        "",
\        "describe {basename|capitalize|camelcase} do",
\        "end"
\      ]
\    },
\    'spec/factories/*.rb': {
\      'alternate': 'spec/{}_spec.rb',
\      'template': [
\        '# frozen_string_literal: true',
\        '',
\        'FactoryBot.define do',
\        '  factory :{basename|singular} do ',
\        '  end',
\        'end'
\      ]
\    },
\    'test/factories/*.rb': {
\      'alternate': 'test/{}_test.rb',
\      'template': [
\        '# frozen_string_literal: true',
\        '',
\        'FactoryBot.define do',
\        '  factory :{basename|singular} do ',
\        '  end',
\        'end'
\      ]
\    }
\ })

" Trailing whitespace
" ===================================================
" Hightlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red ctermfg=white guifg=white
match ExtraWhitespace /\s\+$/
" Removes trailing spaces
function! TrimWhiteSpace()
  mark `
  %s/\s\+$//e
  normal ``
endfunction
autocmd BufWritePre * call TrimWhiteSpace()

" Identify the syntax highlighting group used at the cursor
map <leader>h :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

