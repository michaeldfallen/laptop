# Enable arrow keys to move words
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
bindkey '^[[1;6D' beginning-of-line
bindkey '^[[1;6C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char

# allow cd-ing by > ~/Projects instead of > cd ~/Projects
setopt auto_cd
