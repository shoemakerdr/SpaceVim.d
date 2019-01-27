
func! myconfig#before() abort
    let g:mapleader = ','
    nnoremap <leader>w :w<cr>
endf

func! myconfig#after() abort
    let g:spacevim_realtime_leader_guide = 1
    call SpaceVim#layers#load('incsearch')
    call SpaceVim#layers#load('lang#c')
    call SpaceVim#layers#load('lang#elixir')
    call SpaceVim#layers#load('lang#go')
    call SpaceVim#layers#load('lang#haskell')
    call SpaceVim#layers#load('lang#java')
    call SpaceVim#layers#load('lang#javascript')
    call SpaceVim#layers#load('lang#lua')
    call SpaceVim#layers#load('lang#perl')
    call SpaceVim#layers#load('lang#php')
    call SpaceVim#layers#load('lang#python')
    call SpaceVim#layers#load('lang#rust')
    call SpaceVim#layers#load('lang#swig')
    call SpaceVim#layers#load('lang#tmux')
    call SpaceVim#layers#load('lang#vim')
    call SpaceVim#layers#load('lang#xml')
    call SpaceVim#layers#load('shell',
            \ {
            \ 'default_position' : 'bottom',
            \ 'default_height' : 30,
            \ }
            \ )
    call SpaceVim#layers#load('tools#screensaver')
    let g:vimfiler_ignore_pattern = '^\%(\.git\|\.DS_Store\)$'
    let g:spacevim_enable_vimfiler_welcome = 1
    let g:neomake_cpp_enabled_makers=[]
    let g:neomake_python_enabled_makers=[]
    let g:spacevim_enable_debug = 1
    let g:deoplete#auto_complete_delay = 150
    let g:spacevim_enable_tabline_filetype_icon = 0
    let g:spacevim_enable_os_fileformat_icon = 1
    let g:spacevim_buffer_index_type = 1
    let g:neomake_vim_enabled_makers = []
    if executable('vimlint')
        call add(g:neomake_vim_enabled_makers, 'vimlint')
    endif
    if executable('vint')
        call add(g:neomake_vim_enabled_makers, 'vint')
    endif
    if has('python3')
        let g:ctrlp_map = ''
        nnoremap <silent> <C-p> :Denite file_rec<CR>
    endif
    let g:clang2_placeholder_next = ''
    let g:clang2_placeholder_prev = ''
    call SpaceVim#layers#load('lang#typescript')

    " My settings
    " let g:spacevim_enable_language_specific_leader = 0
    let g:indentLine_color_gui = '#334b5b'
    let g:indentLine_char = '│'

    let g:spacevim_colorscheme = 'OceanicNext'

    let g:spacevim_unite_leader = '!'
    let g:spacevim_denite_leader = '%'
    let g:spacevim_enable_statusline_display_mode = 1

    let g:spacevim_statusline_separator = 'arrow'

    "plugin manager
    " let g:spacevim_plugin_manager = 'vim-plug'

    " If there is a particular plugin you don't like, you can define this
    " variable to disable them entirely:
    let g:spacevim_disabled_plugins=[
    \ ['neovimhaskell/haskell-vim'],
    \ ]

    " If you want to add some custom plugins, use these options:
    let g:spacevim_custom_plugins = [
    \ ['elmcast/elm-vim'],
    \ ['thiagoalessio/rainbow_levels.vim'],
    \ ['wavded/vim-stylus'],
    \ ]

    let g:syntastic_disabled_filetypes=['html']
    let g:neomake_html_enabled_makers = []
    let g:neomake_haskell_enabled_makers = ['hlint']
    let g:neomake_typescript_enabled_makers = ['tsc', 'tslint']

    " Disable neomake
    " let g:spacevim_enable_neomake = 0

    " Syntastic set up for elm-vim
    " let g:syntastic_always_populate_loc_list = 1
    " let g:syntastic_auto_loc_list = 1

    " let g:elm_syntastic_show_warnings = 1
    let g:polyglot_disabled = ['elm']

    autocmd Filetype javascript setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
    autocmd Filetype elm setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
    autocmd Filetype haskell setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
    autocmd Filetype cmake setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
    " set filetypes as typescript.jsx
    autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript
    autocmd BufNewFile,BufRead *.ts set filetype=typescript

    " autocmd BufWritePre * silent! cd %:p:h

    " rainbow_levels plugin
        " red=['#ec5f67', '203']
        " orange=['#f99157', '209']
        " yellow=['#fac863', '221']
        " green=['#99c794', '114']
        " aquamarine=['#62b3b2', '73']
        " blue=['#6699cc', '68']
        " purple=['#c594c5', '176']
        " brown=['#ab7967', '137']

    let g:derek_rainbow_levels = [
        \{'ctermfg': 68, 'guifg': '#6699cc'},
        \{'ctermfg': 203, 'guifg': '#ec5f67'},
        \{'ctermfg': 221,  'guifg': '#fac863'},
        \{'ctermfg': 114,  'guifg': '#99c794'},
        \{'ctermfg': 176,   'guifg': '#c594c5'},
        \{'ctermfg': 209,  'guifg': '#f99157'},
        \{'ctermfg': 73,  'guifg': '#62b3b2'},
        \{'ctermfg': 137,  'guifg': '#ab7967'}]

    autocmd VimEnter * let g:rainbow_levels = g:derek_rainbow_levels

    " elm-format
    let g:elm_format_autosave = 1

    " disable annoying haskell-vim indention rules
    let g:haskell_indent_if = 4
    let g:haskell_indent_case = 4
    let g:haskell_indent_let = 4
    let g:haskell_indent_where = 4
    let g:haskell_indent_before_where = 4
    let g:haskell_indent_after_bare_where = 4
    let g:haskell_indent_do = 3
    let g:haskell_indent_in = 0
    let g:haskell_indent_guard = 4


    " NERDcomment use -- for commenting haskell
    let g:NERDAltDelims_haskell = 1
endf

