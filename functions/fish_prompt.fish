set -g fish_color_user green --bold
set -g fish_color_host cyan --bold
set -g fish_color_cwd normal
#set -g fish_color_git_path yellow

function fish_prompt --description "Write out the prompt"
  set -l last_status $status

  # User
  if not test $last_status -eq 0
    set_color $fish_color_error
  end
  echo -n '┌'
  set_color $fish_color_user
  echo -n (whoami)
  set_color normal

  echo -n '@'

  # Host
  set_color $fish_color_host
  echo -n (hostname)
  set_color normal

  echo -n ':'

  # PWD
  __color_git_pwd
  __terlar_git_prompt
  echo

  if not test $last_status -eq 0
    set_color $fish_color_error
  end

  echo -n '└➤ '
  set_color normal
end

function fish_right_prompt --description "Write out the right prompt"
  date +"[%T]"
end
