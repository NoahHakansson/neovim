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
set splitbelow
set splitright
set scrolloff=15
set mouse=a
"
" automatic hybrid line numbers
:set number

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END
"
"
" Quality of life rebinds
nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Remaps for swedish keyboard layout.
noremap § $
"

" Map the leader key to SPACE
let mapleader="\<SPACE>"

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <S-k> :call CocActionAsync('doHover')<CR>
nmap <leader>t :TagbarOpenAutoClose<CR>
" remove all trailing whitespaces
:nnoremap <silent> <leader>wd :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" bind to reload nvim config (this file)
nnoremap <leader>sc :source $MYVIMRC<CR>

" bind ESC to close poups and remove highlighting from search.
nmap <silent> <Esc> :call coc#float#close_all() <bar> :noh <CR>

" bind to copy to clipboard
vnoremap <leader>y "+y

" bind to ctrl+n to <C-\><C-n> to enter normal mode in terminal
tnoremap <C-n> <C-\><C-n>

" handle *.ejs files as html and javascript
au BufNewFile,BufRead *.ejs set filetype=html.js
" handle flex as lex files
au BufReadPost *.flex set syntax=lex

" unbind arrow keys and backspace+enter
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
nmap <BS> <Nop>
nmap <CR> <Nop>

" bind hjkl movment in insert mode to ctrl-hjkl
inoremap <c-k> <up>
inoremap <c-j> <down>
inoremap <c-h> <left>
inoremap <c-l> <right>

" split resize bindings
" nnoremap <silent> <A-l> :vertical resize +5<CR>
" nnoremap <silent> <A-h> :vertical resize -5<CR>
" nnoremap <silent> <A-j> :res +5<CR>
" nnoremap <silent> <A-k> :res -5<CR>

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
nnoremap <silent> <leader><TAB> :tabn<CR>

" floaterm
" floaterm for compiling
nnoremap <silent> <A-c> :FloatermToggle --name=compile1<CR>
tnoremap <silent> <A-c> <C-\><C-n>:FloatermToggle --name=compile1<CR>
" floaterm for general use
nnoremap <silent> <A-t> :FloatermToggle --name=terminal1<CR>
tnoremap <silent> <A-t> <C-\><C-n>:FloatermToggle --name=terminal1<CR>
let g:floaterm_width=0.9
let g:floaterm_height=0.9
let g:floaterm_autoclose=1
" 24-bit color support
set termguicolors

set grepprg=rg\ --vimgrep

call plug#begin('~/.vim/plugged')
" Neovim Lua plugins
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Vim Plugins
Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-vinegar'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'jremmen/vim-ripgrep'
Plug 'unblevable/quick-scope'
Plug 'ptzz/lf.vim'
Plug 'voldikss/vim-floaterm'
Plug 'preservim/nerdcommenter'
Plug 'LunarWatcher/auto-pairs', { 'tag': '*' }
Plug 'gcmt/wildfire.vim'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
Plug 'luochen1990/rainbow'
Plug 'RRethy/vim-illuminate'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'tpope/vim-repeat'
Plug 'puremourning/vimspector'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'mklabs/vim-nodemate'
" Ctags
Plug 'preservim/tagbar'
Plug 'universal-ctags/ctags'
" taglist
Plug 'yegappan/taglist'
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

" assembly
autocmd BufEnter *.asm setfiletype nasm
autocmd BufEnter *.s setfiletype nasm

" c++ style auto format
" clang-format
nmap <leader>cf :ClangFormat<CR>
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "AllowShortFunctionsOnASingleLine" : "false",
            \ "AllowShortLoopsOnASingleLine" : "false",
            \ "AllowShortBlocksOnASingleLine" : "false",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11",
            \ "DerivePointerAlignment" : "false",
            \ "PointerAlignment" : "Left",
            \ "AlignTrailingComments" : "true",
            \ "BreakBeforeBraces" : "Attach",
            \}

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

" lunarwatcher / auto pairs
let g:AutoPairsMultilineBackspace = 1
let g:AutoPairsMapBS = 1

" vim Iluminate
" Time in milliseconds (default 0)
let g:Illuminate_delay = 700
" Don't highlight word under cursor (default: 1)
let g:Illuminate_highlightUnderCursor = 0

" Vimspector settings
let g:vimspector_enable_mappings = 'HUMAN'
nmap <leader>dr :VimspectorReset<CR>
"nmap <leader>de :VimspectorEval
nmap <leader>de <Plug>VimspectorBalloonEval
nmap <leader>dw :VimspectorWatch
nmap <leader>do :VimspectorShowOutput
" Vimspector settings (END)

" Vim-Fugitive
nnoremap <leader>gs :G<CR>

" coc-highlight
autocmd CursorHold * silent call CocActionAsync('highlight')

" COC
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" coc-clangd
nnoremap <silent> <leader>ss :CocCommand clangd.switchSourceHeader<CR>

" coc explorer
let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }

nmap <space>e :CocCommand explorer<CR>
nmap <space>fe :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" rainbow parentheses and operators
" // lala
" //lala
" 4 / 2 / 6/6
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['#8be9fd', '#a29fff', '#ffff6d'],
\   'guis': [''],
\   'cterms': [''],
\   'operators': '_=\|+\|\*[^/]\|-\||\|&\|;\|!\|?\|<\|>\|%\|/[^/*]_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': 0,
\       'js': "default",
\       'css': 0,
\   }
\}

let g:lightline = {
      \ 'colorscheme': 'gruvbox_material',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" nerdcommenter
let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1
nnoremap <silent> <leader>cc :call nerdcommenter#Comment(1, 'toggle')<CR>
vnoremap <silent> <leader>cc :call nerdcommenter#Comment(1, 'toggle')<CR>
nnoremap <silent> <leader>cs :call nerdcommenter#Comment(1, 'sexy')<CR>
vnoremap <silent> <leader>cs :call nerdcommenter#Comment(1, 'sexy')<CR>

" Lf (lf.vim) config
let g:lf_map_keys = 0
let g:lf_command_override = 'lf -command "set hidden"' " Always show hidden files
let g:NERDTreeHijackNetrw = 0 " Add this line if you use NERDTree
let g:lf_replace_netrw = 1 " Open lf when vim opens a directory

nmap <silent> <leader>lf :Lf<CR>
" Lf (lf.vim) config END

" Telescope bindings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Coc config
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Bind tab and shift-tab to navigate autocomplete selection list.
inoremap <expr> <Tab> pumvisible() ? "\<Down>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<Up>" : "\<S-Tab>"

" Coc config END

" pandoc config
let g:pandoc#modules#disabled = ["folding"]
let g:pandoc#syntax#conceal#use = 0

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
" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

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

" sneak cofig
let g:sneak#label = 1
" case insensitive sneak
let g:sneak#use_ic_scs = 1
" immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1
" Cool prompts
let g:sneak#prompt = 'Sneak: '
" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow
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
"map <leader>n :call ToggleNerdTreeFile()<CR>
" Quicker window movement
nnoremap <leader>wr <C-w>r
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Search and Replace
nmap <Leader>sr :%s/S\C/R/gc<left><Left><Left><Left><Left><left><left>

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
map <leader>hh :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

