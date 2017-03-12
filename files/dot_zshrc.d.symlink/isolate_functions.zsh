# Prevent functions from messing with zsh options
# by allowing them only to set local options
setopt LOCAL_OPTIONS

# Same thing for traps
setopt LOCAL_TRAPS
