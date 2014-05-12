# Enable colors in terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Trim prompt directory after two levels
export PROMPT_DIRTRIM=2

# Generate a cleaner shell prompt
if [ $HOSTNAME = "csitprdap01.int.its.rmit.edu.au" ]; then
    export PS1='\[\e[1;33m\]\u@titan\[\e[1;37m\]:\[\e[0;31m\]\w \[\e[0;37m\]\$ '
elif [ $HOSTNAME = "csitprdap02.int.its.rmit.edu.au" ]; then
    export PS1='\[\e[1;33m\]\u@saturn\[\e[1;37m\]:\[\e[0;31m\]\w \[\e[0;37m\]\$ '
elif [ $HOSTNAME = "csitprdap03.int.its.rmit.edu.au" ]; then
    export PS1='\[\e[1;33m\]\u@jupiter\[\e[1;37m\]:\[\e[0;31m\]\w \[\e[0;37m\]\$ '
else
    export PS1='\[\e[1;33m\]\u@\h\[\e[1;37m\]:\[\e[0;31m\]\w \[\e[0;37m\]\$ '
fi


# Various colored alternatives
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Various types of ls aliases

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Useful general unix aliases
# Source Dushan Karovich-Wynne

alias mkdir='mkdir -pv'
alias wget='wget -c'
alias ports='netstat -tulanp'
alias pscpu='ps aux | sort -nr -k 3 | head -10'
alias meminfo='free -m -l -t'
