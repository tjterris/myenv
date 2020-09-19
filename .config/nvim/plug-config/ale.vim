let g:ale_disable_lsp = 1
"let g:ale_python_black_executable = 'poetry'
"let g:ale_python_black_options = 'run black'
let g:ale_linters = {
      \   'python': ['flake8'],
      \   'ruby': ['rubocop'],
      \   'javascript': ['eslint'],
      \}
let g:ale_fixers = {
      \    'python': ['black'],
      \}

"nmap <F10> :ALEFix<CR>
let g:ale_fix_on_save = 0

function! LinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  return l:counts.total == 0 ? '✨ all good ✨' : printf(
        \   ' %dW %dE',
        \   all_non_errors,
        \   all_errors
        \)
endfunction

set statusline=
set statusline+=%m
set statusline+=\ %f
set statusline+=%=
set statusline+=\ %{LinterStatus()}

"let g:ale_javascript_eslint_executable = 'eslint'
"let g:ale_javascript_eslint_options = ''
"let g:ale_javascript_eslint_suppress_eslintignore = 0
"let g:ale_javascript_eslint_suppress_missing_config = 0
"let g:ale_javascript_eslint_use_global = 0
"let g:ale_cache_executable_check_failures = v:null
"let g:ale_change_sign_column_color = 0
"let g:ale_command_wrapper = ''
"let g:ale_completion_delay = v:null
"let g:ale_completion_enabled = 0
"let g:ale_completion_max_suggestions = v:null
"let g:ale_echo_cursor = 1
"let g:ale_echo_msg_error_str = 'Error'
"let g:ale_echo_msg_format = '%code: %%s'
"let g:ale_echo_msg_info_str = 'Info'
"let g:ale_echo_msg_warning_str = 'Warning'
"let g:ale_enabled = 1
"let g:ale_fix_on_save = 1
"let g:ale_fixers = {'javascript': ['prettier']}
"let g:ale_history_enabled = 1
"let g:ale_history_log_output = 1
"let g:ale_keep_list_window_open = 0
"let g:ale_lint_delay = 200
"let g:ale_lint_on_enter = 1
"let g:ale_lint_on_filetype_changed = 1
"let g:ale_lint_on_save = 1
"let g:ale_lint_on_text_changed = 'always'
"let g:ale_lint_on_insert_leave = 0
"let g:ale_linter_aliases = {'less': 'css'}
"let g:ale_linters = {'typescript': ['tslint'], 'javascript': ['eslint']}
"let g:ale_linters_explicit = 0
"let g:ale_list_window_size = 10
"let g:ale_list_vertical = 0
"let g:ale_loclist_msg_format = '%code: %%s'
"let g:ale_max_buffer_history_size = 20
"let g:ale_max_signs = -1
"let g:ale_maximum_file_size = v:null
"let g:ale_open_list = 0
"let g:ale_pattern_options = v:null
"let g:ale_pattern_options_enabled = v:null
"let g:ale_set_balloons = 0
"let g:ale_set_highlights = 1
"let g:ale_set_loclist = 1
let g:ale_set_quickfix = 1
"let g:ale_set_signs = 1
"let g:ale_sign_column_always = 0
"let g:ale_sign_error = '>>'
"let g:ale_sign_info = '--'
"let g:ale_sign_offset = 1000000
"let g:ale_sign_style_error = '>>'
"let g:ale_sign_style_warning = '--'
"let g:ale_sign_warning = '--'
"let g:ale_statusline_format = v:null
"let g:ale_type_map = {}
"let g:ale_use_global_executables = v:null
"let g:ale_warn_about_trailing_blank_lines = 1
"let g:ale_warn_about_trailing_whitespace = 1
