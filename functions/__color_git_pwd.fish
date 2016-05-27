set -q fish_color_git_path; or set -g fish_color_git_path yellow

function __color_git_pwd --description "PWD with color git path"
  set_color $fish_color_cwd

  if [ (git rev-parse --is-inside-work-tree 2>/dev/null; or echo "false") = "true" ]
    echo -n (git rev-parse --show-toplevel)
    set_color $fish_color_git_path
    echo -n "/"
    echo -n (git rev-parse --show-prefix)
  else
    echo -n (pwd)
  end

  set_color normal
end
