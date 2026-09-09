#!/usr/bin/bash

# setup fzf history search
if [ -x "$(which fzf)" ] ; then
    eval "$(fzf --bash)"
fi

# change shell prompt to include nonzero exit codes, based on https://stackoverflow.com/a/16715681
PROMPT_COMMAND=__prompt_command    # Function to generate PS1 after CMDs
PS1_COPY=$PS1
__prompt_command() {
    local EXIT="$?"
    local color_reset='\[\e[0m\]'
    local color_red='\[\e[0;31m\]'

    PS1="${PS1_COPY%\\\$ }"
    if [ $EXIT != 0 ]; then
        PS1+=" ${color_red}[$EXIT]${color_reset} "
    fi
    PS1+="$ "
}

# fix weird ls colors
LS_COLORS+=':ow=01;33'

# aliases
alias x="exit"
alias sus="systemctl suspend"
alias py=python3

alias gs="git s"
alias ga="git add"
alias gg="git g"
alias gf="git f"
alias ga="git add"
alias gap="git add -p"
alias gapn="git add -N :/ && git add -p"
alias gc="git commit"
alias gd="git diff"
alias gw="git switch"
alias gb="git branch"
alias gp="git push"
alias gcm="git cm"
alias gca="git ca"
alias gch="git checkout"
alias gus="git unstage"
alias gh="git stash"

alias l="ls -la"

alias rf="readlink -f"
alias rgm="rg --multiline --multiline-dotall"

# alias completion
complete -F _complete_alias "${!BASH_ALIASES[@]}"
