local ret_status="%(?:%{$fg_bold[green]%}❯:%{$fg_bold[red]%}❯)"
PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}% %{$reset_color%}'
RPROMPT='%{$fg_bold[cyan]%} %m %{$reset_color%} %~ %{$fg_bold[blue]%}$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%2{✏️ %}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
