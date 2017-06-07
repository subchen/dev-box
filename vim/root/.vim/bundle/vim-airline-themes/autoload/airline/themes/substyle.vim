" vim-airline companion theme of substyle
" (https://github.com/w0ng/vim-substyle)

let g:airline#themes#substyle#palette = {}

function! airline#themes#substyle#refresh()
    let s:N1 = airline#themes#get_highlight('DiffAdd')
    let s:N2 = airline#themes#get_highlight('CursorLine')
    let s:N3 = airline#themes#get_highlight('PMenu')
    let g:airline#themes#substyle#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
    let g:airline#themes#substyle#palette.normal_modified = {}

    let warning_group = airline#themes#get_highlight('SpellRare')
    let g:airline#themes#substyle#palette.normal.airline_warning = warning_group
    let g:airline#themes#substyle#palette.normal_modified.airline_warning = warning_group

    let s:I1 = airline#themes#get_highlight2(['Text', 'fg'], ['DiffText', 'bg'], 'bold')
    let s:I2 = s:N2
    let s:I3 = s:N3
    let g:airline#themes#substyle#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
    let g:airline#themes#substyle#palette.insert_modified = g:airline#themes#substyle#palette.normal_modified
    let g:airline#themes#substyle#palette.insert.airline_warning = g:airline#themes#substyle#palette.normal.airline_warning
    let g:airline#themes#substyle#palette.insert_modified.airline_warning = g:airline#themes#substyle#palette.normal_modified.airline_warning

    let s:R1 = airline#themes#get_highlight('DiffChange')
    let s:R2 = s:N2
    let s:R3 = s:N3
    let g:airline#themes#substyle#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
    let replace_group = airline#themes#get_highlight('SpellRare')
    let g:airline#themes#substyle#palette.replace_modified = g:airline#themes#substyle#palette.normal_modified
    let g:airline#themes#substyle#palette.replace.airline_warning = g:airline#themes#substyle#palette.normal.airline_warning
    let g:airline#themes#substyle#palette.replace_modified.airline_warning = g:airline#themes#substyle#palette.replace_modified.airline_warning

    let s:V1 = airline#themes#get_highlight2(['Text', 'fg'], ['DiffDelete', 'bg'], 'bold')
    let s:V2 = s:N2
    let s:V3 = s:N3
    let g:airline#themes#substyle#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
    let g:airline#themes#substyle#palette.visual_modified = g:airline#themes#substyle#palette.normal_modified
    let g:airline#themes#substyle#palette.visual.airline_warning = g:airline#themes#substyle#palette.normal.airline_warning
    let g:airline#themes#substyle#palette.visual_modified.airline_warning = g:airline#themes#substyle#palette.normal_modified.airline_warning

    let s:IA = airline#themes#get_highlight('StatusLineNC')
    let g:airline#themes#substyle#palette.inactive = airline#themes#generate_color_map(s:V1, s:R1, s:V3)
    let g:airline#themes#substyle#palette.inactive_modified = g:airline#themes#substyle#palette.normal_modified

endfunction

call airline#themes#substyle#refresh()
