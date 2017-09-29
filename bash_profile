# make auto complete better :)
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

# nvm stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# git completion and updated prompt
[[ -f "$HOME/git_completion.bash" ]] && source "$HOME/git_completion.bash"
[[ -f "$HOME/.git_prompt.sh" ]] && source "$HOME/.git_prompt.sh"
[[ -f "$HOME/.bash_prompt" ]] && source "$HOME/.bash_prompt"


GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true

PROMPT_COMMAND=__prompt_command

function __prompt_command() {
    local rc="$?"
    exit=""

    if [ $rc == 0 ]; then
        exit="\[\033[1;30m\]-"
    else
        exit="\[\033[0;31m\]✗"
    fi

    __git_ps1 "$exit \[\033[0;36m\]\W\[\033[0m\]" " →\[\033[0m\]  " " · %s"
}

# shortcuts and aliases
alias workspace='cd ~/Documents/github/'
alias wakedevboxlocal='wakeonlan  50:46:5D:67:34:2E'
alias wakedevboxremote='wakeonlan -i 74.134.238.171 -p 9 50:46:5D:67:34:2E'
