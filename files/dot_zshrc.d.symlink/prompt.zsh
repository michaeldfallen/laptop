autoload colors && colors

directory_name() {
  echo "%{$fg[blue]%}%1/%\/%{$reset_color%}"
}

ret_status() {
  echo "%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
}

git_radar() {
  USE_DEV_RADAR="${USE_DEV_RADAR:-"false"}"
  if [[ $USE_DEV_RADAR == "true" ]]; then
    ~/Projects/personal/git-radar/git-radar --zsh --fetch
  else
    git-radar --zsh --fetch
  fi
}

powerline_branch="$(printf '\uf401')"
export GIT_RADAR_MASTER_SYMBOL="%{$fg_bold[blue]%}$powerline_branch%{$reset_color%}"
export GIT_RADAR_COLOR_BRANCH="$fg[white]"
export GIT_RADAR_COLOR_CHANGES_STAGED="$fg[green]"
export GIT_RADAR_COLOR_CHANGES_UNSTAGED="$fg[red]"
export GIT_RADAR_COLOR_CHANGES_CONFLICTED="$fg[yellow]"
export GIT_RADAR_COLOR_CHANGES_UNTRACKED="$fg[white]"
export GIT_RADAR_COLOR_STASH="$fg[yellow]"
export GIT_RADAR_FORMAT="%{ :remote}%{ :branch}%{ :local}%{ :stash}%{ :changes}"

export PROMPT=$'$(ret_status)$(directory_name)$(git_radar) '
set_prompt () {
  export RPROMPT="%{$fg_bold[cyan]%}%{$reset_color%}"
}

precmd() {
  title "zsh" "%m" "${PWD##*/}"
  set_prompt
}

preexec() {
  title "zsh" "%m" "${PWD##*/} - $2"
}
