alias -g M='`git ls-files --modified | peco`'
alias -g U='`git ls-files --others --exclude-standard | peco`'
alias -g S='`git diff --staged --name-only | peco`'
alias -g C='`git ls-files --cached | peco`'
alias -g B='`git branch -a | peco | sed -E -e "s/^[* ]+//" | cut -d" " -f1`'

function peco-src() {
  local selected_dir=`ghq list | peco`
  [ -n "$selected_dir" ] && cd "$HOME/.ghq/$selected_dir"
}
alias e=peco-src

function peco-select-history() {
  local tac
  if which tac > /dev/null; then
    tac="tac"
  else
    tac="tail -r"
  fi
  BUFFER=$(history -n 1 | eval $tac | peco --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history