# color settings
export PS1='❮\w❯ '

# vim > emacs
export EDITOR=vim

# aliases
alias ls="ls --color=always"

# automatic ls after cd
function cd() { builtin cd "$@" && ls; }
