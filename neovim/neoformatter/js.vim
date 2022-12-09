function! neoformat#formatters#js#enabled() abort
    return ['prettier']
endfunction

function! neoformat#formatters#js#prettier() abort
    return {
        \ 'exe': 'prettier',
        \ 'args': ['-s 4', '-q'],
        \ 'stdin': 1
        \ }
endfunction

