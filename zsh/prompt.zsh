autoload colors && colors

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

local current_dir='${PWD/#$HOME/~}'

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  if $(! $git status -s &> /dev/null)
  then
    echo ""
  else
    if [[ $($git status --porcelain) == "" ]]
    then
      echo "on %{$fg_bold[green]%}$(git_branch)%{$reset_color%}"
    else
      echo "on %{$fg_bold[red]%}$(git_branch)%{$reset_color%}"
    fi
  fi
}

unpushed() {
  $git cherry -v @{origin} 2>/dev/null
}

need_push() {
  if [[ $(unpushed) == "" ]]
  then
    echo " "
  else
    echo " %{$fg_bold[magenta]%}(unpushed)%{$reset_color%} "
  fi
}

directory_name() {
  echo "%{$fg_bold[yellow]%}${PWD/#$HOME/~}%{$reset_color%}"
}

export PROMPT="
%{$fg[cyan]%}%n\
%{$fg[white]%}@\
%{$fg[green]%}%m\
%{$fg[white]%}: \
%{$fg_bold[yellow]%}${current_dir}%{$reset_color%} \
$(git_dirty)$(need_push)
%{$fg_bold[red]%}$ %{$reset_color%}"

set_prompt() {
  export RPROMPT="%{$terminfo[bold]$fg[blue]%}%(1j.%j.) %{$reset_color%}%{$fg[grey]%}[%*]%{$reset_color%}"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}
