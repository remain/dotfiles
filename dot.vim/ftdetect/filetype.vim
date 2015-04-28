augroup filetypedetect
  autocmd BufNewFile,BufRead Capfile     setfiletype ruby
  autocmd BufNewFile,BufRead *.cap       setfiletype ruby
  autocmd BufNewFile,BufRead Guardfile   setfiletype ruby
  autocmd BufNewFile,BufRead *.thor      setfiletype ruby

  autocmd BufNewFile,BufRead *.coffee    setfiletype coffee

  autocmd BufNewFile,BufRead *.template  setfiletype json

  autocmd BufNewFile,BufRead *.zshrc     setfiletype zsh
  autocmd BufNewFile,BufRead *.zsh-theme setfiletype zsh

  autocmd BufNewFile,BufRead *.c         setlocal shiftwidth=4 softtabstop=4
  autocmd BufNewFile,BufRead *.h         setlocal shiftwidth=4 softtabstop=4

  autocmd BufNewFile,BufRead *.hs        setlocal shiftwidth=4 softtabstop=4
augroup END
