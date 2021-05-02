" Path to the babashka binary
let g:babashka = get(g:, 'babashka', '/usr/bin/bb')

fun s:onEvent(jobid, data, event) dict
    if a:event == 'exit'
        call delete('.nrepl-port')
    endif
endfun

let s:path = expand('<sfile>:p:h')
fun s:repl()
    let l:rpath = printf('%s/repl.clj', s:path)
    let l:callbacks = {
    \   'on_exit': function('s:onEvent')
    \ }
    call jobstart([g:babashka, l:rpath], l:callbacks)
endfun

command BabashkaRepl call s:repl()
