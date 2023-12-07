" request:
"   1. node
"   2. npm
"   3. python3 (pip3 install neovim)
nnoremap <space>rl :so ~/.config/nvim/init.vim<CR>
nnoremap <space>rc :e ~/.config/nvim/init.vim<CR>

set number
" set relativenumber
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set ignorecase
set smartcase
set notimeout
set mouse=a

" let mapleader = "\<SPACE>" " defualt ,
let mapleader = "-" " defualt ,

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  :exe '!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
              \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  au VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" =======================
call plug#begin('~/.config/nvim/plugged')
  
  " enhance editor
  Plug 'tomtom/tcomment_vim'
  
  " terminal
  Plug 'skywind3008/vim-terminal-help'
  
  " file explorer
  Plug 'preservim/nerdtree'

  " file finder
  Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
  Plug 'voldikss/LeaderF-floaterm'
  Plug 'voldikss/vim-floaterm'

  " highlight
  Plug 'cateduo/vsdark.nvim'
  Plug 'jackguo380/vim-lsp-cxx-highlight'

  
  " lsp
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  
  " debug
  Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-rust --enable-python'}
  
  " git blame
  Plug 'zivyangll/git-blame.vim'
  Plug 'f-person/git-blame.nvim'
  Plug 'APZelos/blamer.nvim'

  Plug 'akinsho/toggleterm.nvim'

  Plug 'kyazdani42/nvim-tree.lua'
  
  Plug 'goldfeld/ctrlr.vim'

  " Plug 'karb94/neoscroll.nvim'

  Plug 'vim-scripts/a.vim'

  " Plug 'gcmt/wildfire.vim'

  Plug 'airblade/vim-rooter'

  Plug 'morhetz/gruvbox'

  Plug 'voldikss/vim-translator'

  Plug 'justinmk/vim-sneak'

  Plug 'moll/vim-bbye'

  Plug 'vimwiki/vimwiki'


  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

  Plug 'godlygeek/tabular'
  " Plug 'preservim/vim-markdown'
  Plug 'elzr/vim-json'
  Plug 'plasticboy/vim-markdown'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

  Plug 'nvim-lua/plenary.nvim'
  Plug 'Shatur/neovim-session-manager'

  Plug 'Yggdroot/indentLine'

  Plug 'jszakmeister/vim-togglecursor'

  Plug 'aymericbeaumet/vim-symlink'

  Plug 'miyakogi/conoline.vim'

  Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

  Plug 'nyngwang/NeoZoom.lua'

  " colorscheme
  Plug 'rakr/vim-one'
  Plug 'Mofiqul/vscode.nvim'
  Plug 'projekt0n/github-nvim-theme'
  Plug 'sainnhe/everforest'
  Plug 'sainnhe/edge'
  Plug 'dracula/vim'
  Plug 'mhartington/oceanic-next'
  Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
  Plug 'aonemd/quietlight.vim'
  Plug 'rmehri01/onenord.nvim'
  Plug 'EdenEast/nightfox.nvim'

  " syntax
  Plug 'vim-python/python-syntax'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  Plug 'ahmedkhalf/project.nvim'

  " Plug 'folke/flash.nvim'

  " AI
  Plug 'git@code.byted.org:chenjiaqi.cposture/vim-ai.git'

  Plug 'nvim-lualine/lualine.nvim'

  Plug 'kassio/neoterm'

call plug#end()
" =======================
" ===   plugins  end  ===
" =======================


" =================================
" ===   plugins  configuration  ===
" =================================

" ==== tomtom/tcomment_vim ====

let g:tcomment_textobject_inlinecomment = ''
nmap <LEADER>cn g>c
vmap <LEADER>cn g>
nmap <LEADER>cu g<c
vmap <LEADER>cu g<


" ==== preservim/nerdtree ====

nnoremap <LEADER>e :NERDTreeToggle<CR>


" ==== Yggdroot/LeaderF ====
let g:Lf_WindowPosition='popup'
let g:Lf_PopupHeight = float2nr(&lines * 0.9)
" let g:Lf_PreviewInPopup=1
let g:Lf_CommandMap = {
\   '<C-p>': ['<C-k>'],
\   '<C-k>': ['<C-p>'],
\   '<C-j>': ['<C-n>'],
\}
nmap <leader>f :Leaderf file<CR>
nmap <leader>b :Leaderf! buffer<CR>
nmap <leader>F :Leaderf rg <CR>
let g:Lf_DevIconsFont = "DroidSansMono Nerd Font Mono"

" ==== cateduo/vsdark.nvim ====

set t_Co=256
set termguicolors
"let g:vsdark_style = "dark"
"colorscheme vsdark

"let g:vscode_italic_comment = 1
"colorscheme vscode

"colorscheme gruvbox

"set background=dark
"let g:everforest_background = 'hard'
"colorscheme everforest

"set background=light
"colorscheme catppuccin-latte

"set background=light
"colorscheme quietlight

colorscheme dracula

" ==== jackguo380/vim-lsp-cxx-highlight ====

hi default link LspCxxHlSymFunction cxxFunction
hi default link LspCxxHlSymFunctionParameter cxxParameter
hi default link LspCxxHlSymFileVariableStatic cxxFileVariableStatic
hi default link LspCxxHlSymStruct cxxStruct
hi default link LspCxxHlSymStructField cxxStructField
hi default link LspCxxHlSymFileTypeAlias cxxTypeAlias
hi default link LspCxxHlSymClassField cxxStructField
hi default link LspCxxHlSymEnum cxxEnum
hi default link LspCxxHlSymVariableExtern cxxFileVariableStatic
hi default link LspCxxHlSymVariable cxxVariable
hi default link LspCxxHlSymMacro cxxMacro
hi default link LspCxxHlSymEnumMember cxxEnumMember
hi default link LspCxxHlSymParameter cxxParameter
hi default link LspCxxHlSymClass cxxTypeAlias


" ==== neoclide/coc.nvim ====

let g:coc_default_semantic_highlight_groups = 1
" coc extensions
let g:coc_global_extensions = [
      \ 'coc-json',
      \ 'coc-tsserver',
      \ 'coc-css',
      \ 'coc-html',
      \ 'coc-vimlsp',
      \ 'coc-cmake',
      \ 'coc-highlight',
      \ 'coc-pyright'
      \ ]

set signcolumn=number

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if(index(['vim', 'help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" highlight link CocHighlightText Visual
autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <leader>rn <Plug>(coc-rename)
xmap <leader>f <Plug>(coc-format-selected)
command! -nargs=0 Format :call CocAction('format')

augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" diagnostic info
" Attempt to disable and hide Coc diagnostics
" autocmd call CocAction('diagnosticToggle')
autocmd User CocNvimInit call CocAction('diagnosticToggle')
nnoremap <silent><nowait> <LEADER>d :CocList diagnostics<CR>
nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>= <Plug>(coc-diagnostic-next)
nmap <LEADER>qf <Plug>(coc-fix-current)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(1)\<CR>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(0)\<CR>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" statusline support
" let g:coc_git_status=1
" let b:coc_git_status=1
let b:coc_git_blame=1
" " set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}  "TODO
" set statusline^=%{get(g:,'coc_git_status','')}%{get(b:,'coc_git_status','')}%{get(b:,'coc_git_blame','')}
"

lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'b:coc_git_blame', 'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
END

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD :tab sp<CR><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

function! s:generate_compile_commands()
  if empty(glob('CMakeLists.txt'))
    echo "Can't find CMakeLists.txt"
    return
  endif
  if empty(glob('.vscode'))
    execute 'silent !mkdir .vscode'
  endif
  execute '!cmake -DCMAKE_BUILD_TYPE=debug
      \ -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -S . -B .vscode'
endfunction
command! -nargs=0 Gcmake :call s:generate_compile_commands()

" ==== puremourning/vimspector ====
let g:vimspector_enable_mappings = 'HUMAN'

function! s:generate_vimspector_conf()
  if empty(glob( '.vimspector.json' ))
    if &filetype == 'c' || 'cpp' 
      !cp ~/.config/nvim/vimspector_conf/c.json ./.vimspector.json
    elseif &filetype == 'python'
      !cp ~/.config/nvim/vimspector_conf/python.json ./.vimspector.json
    endif
  endif
  e .vimspector.json
endfunction

command! -nargs=0 Gvimspector :call s:generate_vimspector_conf()

nmap <Leader>v <Plug>VimspectorBalloonEval
xmap <Leader>v <Plug>VimspectorBalloonEval

" git blame
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
" Set f-person/git-blame.nvim
let g:gitblame_enabled = 0
" Set APZelos/blamer.nvim
let g:blamer_enabled = 1
highlight Blamer guifg='#808080'

" Exit terminal by ESC
tnoremap <Esc> <C-\><C-n><CR>


" ToggleTerminal
" set
" let g:toggleterm_terminal_mapping = '<C-t>'

" set
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

lua << END
require("toggleterm").setup{
  open_mapping = [[<c-\>]],
  start_in_insert = false,
  direction = 'vertical',
  size = function(term)
    if term.direction == "horizontal" then
      return 25
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.5
    end
  end,
  shade_terminals = false,
  close_on_exit = true, -- close the terminal window when the process exits
  persist_mode = false,
}
END

lua << EOF
require'nvim-tree'.setup {
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
}
local Path = require('plenary.path')
require('session_manager').setup({
  sessions_dir = Path:new(vim.fn.stdpath('data'), 'sessions'), -- The directory where the session files will be saved.
  path_replacer = '__', -- The character to which the path separator will be replaced for session files.
  colon_replacer = '++', -- The character to which the colon symbol will be replaced for session files.
  autoload_mode = require('session_manager.config').AutoloadMode.CurrentDir, -- Define what to do when Neovim is started without arguments. Possible values: Disabled, CurrentDir, LastSession
  autosave_last_session = true, -- Automatically save last session on exit and on session switch.
  autosave_ignore_not_normal = true, -- Plugin will not save a session when no buffers are opened, or all of them aren't writable or listed.
  autosave_ignore_filetypes = { -- All buffers of these file types will be closed before the session is saved.
    'gitcommit',
  }, 
  autosave_only_in_session = false, -- Always autosaves session. If true, only autosaves after a session is active.
  max_path_length = 80,  -- Shorten the display path if length exceeds this threshold. Use 0 if don't want to shorten the path at all.
})
require('bufferline').setup {
  options = {
    mode = "buffers", -- set to "tabs" to only show tabpages instead
    numbers = "ordinal",
    close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
    right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
    left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
    middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
    -- NOTE: this plugin is designed with this icon in mind,
    -- and so changing this is NOT recommended, this is intended
    -- as an escape hatch for people who cannot bear it for whatever reason
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    --- name_formatter can be used to change the buffer's label in the bufferline.
    --- Please note some names can/will break the
    --- bufferline so use this at your discretion knowing that it has
    --- some limitations that will *NOT* be fixed.
    name_formatter = function(buf)  -- buf contains a "name", "path" and "bufnr"
      -- remove extension from markdown files for example
      if buf.name:match('%.md') then
        return vim.fn.fnamemodify(buf.name, ':t:r')
      end
    end,
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    tab_size = 18,
    diagnostics = "coc",
    diagnostics_update_in_insert = false,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return "("..count..")"
    end,
    -- NOTE: this will be called a lot so don't do any heavy processing here
    custom_filter = function(buf_number, buf_numbers)
      -- filter out filetypes you don't want to see
      if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
        return true
      end
      -- filter out by buffer name
      if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
        return true
      end
      -- filter out based on arbitrary rules
      -- e.g. filter out vim wiki buffer from tabline in your work repo
      if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
        return true
      end
      -- filter out by it's index number in list (don't show first buffer)
      if buf_numbers[1] ~= buf_number then
        return true
      end
    end,
    offsets = {{filetype = "NvimTree", text = "File Explorer"}},
    color_icons = true, -- whether or not to add the filetype icon highlights
    show_buffer_icons = true, -- disable filetype icons for buffers
    show_buffer_close_icons = true,
    show_buffer_default_icon = true, -- whether or not an unrecognised filetype should show a default icon
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    -- can also be a table containing 2 custom separators
    -- [focused and unfocused]. eg: { '|', '|' }
    separator_style = "slant",
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    sort_by = 'insert_after_current'
  }
}
require('neo-zoom').setup { -- use the defaults or UNCOMMENT and change any one to overwrite
      -- left_ratio = 0.2,
      -- top_ratio = 0.03,
      -- width_ratio = 0.67,
      -- height_ratio = 0.9
}
EOF

lua << EOF
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = false,

  -- List of parsers to ignore installing (or "all")
  ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,

    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>", -- set to `false` to disable one of the mappings
      node_incremental = "<CR>",
      scope_incremental = "<TAB>",
      node_decremental = "<BS>",
    },
  },
}
EOF

lua << EOF
  require("project_nvim").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    patterns = { ".git", "Makefile", "*.sln", "build/env.sh" },
  }
EOF

"lua << EOF
"    require('flash').setup{
"        search = {
"            mode = function(str)
"              return "\\<" .. str
"            end
"        },
"        jump = {
"            autojump = true,
"        },
"        label = {
"            rainbow = {
"              enabled = true,
"              shade = 9,
"            }
"        }
"    }
"
"    vim.keymap.set({"n","o","x"},"j", function() require("flash").jump() end, {desc="Flash"})
"    vim.keymap.set({"i"}, "<C-j>", function() require("flash").jump() end, {desc="Flash"})
"
"EOF

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set nofoldenable                     " Disable folding at startup.


" Leaderf Search the current word under cursor
nnoremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer --stayOpen -e %s ", expand("<cword>"))<CR><CR>
" Using jLeaderf! rg --stayOpen -e if keep the prompt window
nnoremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -g !*test* -e %s ", expand("<cword>"))<CR>

" Only highlight the cursor line in active buffer.
" au BufEnter * setlocal cursorline
" au BufLeave * setlocal nocursorline

" vim-rooter
let g:rooter_patterns = ['.git', 'Makefile', '*.sln', 'build/env.sh']
let g:rooter_change_directory_for_non_project_files = ''


" Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
" Type z/ to toggle highlighting on/off.
nnoremap z/ :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction

" vim-bbye
" Buffer delete vs wipeout
" Vim has two commands for closing a buffer: :bdelete and :bwipeout. The former removes the file from the buffer list, clears its options, variables and mappings. However, it remains in the jumplist, so Ctrl-o takes you back and reopens the file. If that's not what you want, use :bwipeout or Bbye's equivalent :Bwipeout where you would've used :bdelete.
nnoremap <Leader>q :Bwipeout<CR>

" vimwiki
set nocompatible 
filetype plugin on
syntax on
 let g:vimwiki_list = [{'path': '~/vimwiki/',
                       \ 'syntax': 'markdown', 'ext': '.md'}]

" vim-markdown
" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

" Fix cursor missing
let g:coc_disable_transparent_cursor = 1

" let g:conoline_use_colorscheme_default_normal=1
" let g:conoline_color_normal_dark = 'guibg=#5aa4ae'
" let g:conoline_color_normal_dark = 'guibg=#d4eceb'
" let g:conoline_color_normal_dark = 'guibg=#f8c6b5'


nnoremap <silent>]b :BufferLineCycleNext<CR>
nnoremap <silent>[b :BufferLineCyclePrev<CR>


" C-e to zoom in the current buffer
" C-x to zoom out the current buffer
nnoremap <C-e> <C-W>>5
nnoremap <C-x> <C-W><5

set winminwidth=20
" set winminheight=20

" floaterm
" nnoremap <C-t> :FloatermToggle<CR>
" nnoremap <C-n> :FloatermNext<CR>
" nnoremap <C-p> :FloatermPrev<CR>
" let g:floaterm_autoinsert=0
" let g:floaterm_height=0.9
" let g:floaterm_width=0.8

inoremap <C-f> <C-[><C-w><C-w><CR>

" recall last search window
nnoremap <Leader>l :Leaderf! --recall<CR>

" coc-git
" navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" navigate conflicts of current buffer
nmap [c <Plug>(coc-git-prevconflict)
nmap ]c <Plug>(coc-git-nextconflict)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap gc <Plug>(coc-git-commit)
" create text object for git chunks
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)

