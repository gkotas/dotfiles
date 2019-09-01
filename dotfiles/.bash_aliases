# Force tmux to use 256 colors
alias tmux='tmux -2'

##### Bash Functions ####
# Conditional configuration for nano
nano() {
  # Tabs in Makefiles
  if [[ -n $1 && `basename "$1"` =~ (Makefile|makefile) ]]
  then
    command nano --tabsize 2 "$@"
  # Python uses 4 space indentations
  elif [[ $1 == *.py ]]
  then
    command nano --tabsize 4 --tabstospaces "$@"
  # Everything else is 2 space indentations
  else
    command nano --tabsize 2 --tabstospaces "$@"
  fi
}
