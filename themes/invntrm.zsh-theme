
#
# This function replace zsh %~, which not correctly working on our Ubuntu
function get_short_path() {

    if [ $IS_OSX ]; then
        PATH_PREFIX='/Users/'
    else
        PATH_PREFIX='/home/'
    fi

    pwd | sed "s#$PATH_PREFIX$(whoami)#~#"

}

function get_computer_name() {

    if [ $IS_OSX ]; then
        scutil --get ComputerName
    else
        echo '%m'
    fi
}

function computer_name_to_emoji() {
    [[ $(cat - | grep 'osx') ]] && echo '%2{⌘ %}' || echo '%2{📶 %}'
}

function put_spacing() {
    echo -e "\n "
}

local ret_status="%{%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%})%}❯"
TPROMPT='%{$fg_bold[blue]%}$(git_prompt_info) %a%{$reset_color%}'
PROMPT="${ret_status} $TPROMPT$(get_computer_name|computer_name_to_emoji) %{$fg_bold[cyan]%}%C %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%2{✏️ %}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
