let g:nvim_data_root = ('data')
let g:nvim_config_root = ('~/.vim')
let g:config_file_list = ['/plugged/plugins.vim',
    \ '/general/settings.vim',
    \ '/keymapping/keys.vim',
    \ '/plug-config/airline.vim',
    \ '/plug-config/coc.vim',
    \ '/plug-config/nerdcommenter.vim',
    \ ]

for f in g:config_file_list
    execute 'source ' . g:nvim_config_root . f
endfor


