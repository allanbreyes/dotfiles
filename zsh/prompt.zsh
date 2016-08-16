autoload colors && colors

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

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
      echo "git:%{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}"
    else
      echo "git:%{$fg_bold[red]%}$(git_prompt_info)%{$reset_color%}"
    fi
  fi
}

git_prompt_info() {
  ref=$($git symbolic-ref HEAD 2>/dev/null) || return
  echo "${ref#refs/heads/}"
}

unpushed() {
  $git cherry -v @{upstream} 2>/dev/null
}

need_push() {
  if [[ $(unpushed) == "" ]]
  then
    echo ""
  else
    echo "(%{$fg_bold[magenta]%}unpushed%{$reset_color%})"
  fi
}

directory_name() {
  current_dir="${PWD/#$HOME/~}"
  echo "%{$fg_bold[yellow]%}${current_dir}%{$reset_color%}"
}

prefix() {
  echo "%{$fg[cyan]%}%n%{$fg[white]%}@%{$fg[green]%}%m%{$fg[white]%}:%{$reset_color%}"
}

export PROMPT=$'\n$(prefix) $(directory_name) $(git_dirty) $(need_push)\n%{$fg_bold[red]%}$ %{$reset_color%}'
set_prompt() {
  export RPROMPT="%{$terminfo[bold]$fg[blue]%}%(1j.%j.) %{$reset_color%}%{$fg[grey]%}[%*]%{$reset_color%}"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}
