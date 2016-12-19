call denite#custom#var('file_rec', 'command',
      \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
call denite#custom#source(
      \ 'file_mru', 'matchers', ['matcher_fuzzy', 'matcher_project_files'])
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#var('grep', 'separator', [])
call denite#custom#var('grep', 'default_opts',
      \ ['--nocolor', '--nogroup'])

call denite#custom#source('file_rec', 'matchers', ['matcher_cpsm'])
call denite#custom#source('file_mru', 'converters', ['converter_relative_word'])

call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_prev_line>', 'noremap')
call denite#custom#map('insert', '<C-p>', '<denite:move_to_prev_line>', 'noremap')
"call denite#custom#map('insert', ';', '<denite:enter_mode:normal>', 'noremap')

call denite#custom#var('file_rec/git', 'command', ['git', 'ls-files', '-co', '--exclude-standard'])
"call denite#custom#alias('source', 'file_rec/git', 'file_rec')
"call denite#custom#option('default', 'prompt', '>')
