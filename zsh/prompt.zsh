autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

black='\e[0;30m'
blue='\e[0;34m'
green='\e[0;32m'
cyan='\e[0;36m'
red='\e[0;31m'
purple='\e[0;35m'
brown='\e[0;33m'
lightgray='\e[0;37m'
darkgray='\e[1;30m'
lightblue='\e[1;34m'
lightgreen='\e[1;32m'
lightcyan='\e[1;36m'
lightred='\e[1;31m'
lightpurple='\e[1;35m'
yellow='\e[1;33m'
white='\e[1;37m'
nc='\e[0m'


git_branch() {
  echo $(git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  st=$(git status 2>/dev/null | tail -n 1)
  if [[ $st == "" ]]
  then
    echo ""
  else
    if [[ $st =~ "working directory clean" ]]
    then
      echo "%{$lightgray%}on%{$reset_color%} %{$blue%}⭠ $(git_prompt_info) ☀%{$reset_color%}"  # ➙ ☀
    else
      echo "%{$lightgray%}on%{$reset_color%} %{$lightred%}⭠ $(git_prompt_info)%{$reset_color%}"  # ☠
    fi
  fi
}

git_prompt_info () {
 ref=$(git symbolic-ref HEAD 2>/dev/null) || return
 echo "${ref#refs/heads/}"
}

unpushed () {git cherry -v @{upstream} 2>/dev/null |  wc -l | tr -s " "}

need_push () {
  if [[ $(unpushed) == "0" ]]
  then
    echo " "
  else
    echo " %{$lightgray%}with%{$reset_color%}%{$purple%}$(unpushed) unpushed ➙%{$reset_color%} "
  fi
}

directory_name(){
  echo "%{$lightgray%}%1/%\/%{$reset_color%}"
}

export PROMPT=$'$(directory_name) $(git_dirty)$(need_push) ›'

precmd() {
  title "zsh" "%m" "%55<...<%~"
}

todo() {}