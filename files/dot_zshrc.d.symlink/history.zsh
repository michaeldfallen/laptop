HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# adds history to the histfile when session closes
setopt APPEND_HISTORY

# share history across sessions
setopt SHARE_HISTORY

# don't record duplicates in history
setopt HIST_IGNORE_ALL_DUPS

# Remove blanks
setopt HIST_REDUCE_BLANKS
