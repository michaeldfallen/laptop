if test $OSX; then
  alias ls='ls -G'
fi
if test $LINUX; then
  alias ls='ls --color=auto'
fi
alias ll='ls -la'
