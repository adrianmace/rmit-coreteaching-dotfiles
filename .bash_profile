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

# Useful general unix stuff

alias mkdir='mkdir -pv'
alias wget='wget -c'
alias ports='netstat -tulanp'
alias pscpu='ps aux | sort -nr -k 3 | head -10'
alias meminfo='free -m -l -t'

# History settings
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=1000000
HISTTIMEFORMAT='%b %d %I:%M %p '
HISTCONTROL=ignoreboth
HISTIGNORE="history:h:pwd:exit:x:df:du:ls:ls -la:ll:l:clear:c"

# Original from http://pigfly.io but modified to remove/add formats
extract() {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)  tar xjf $1  ;;
            *.tar.gz) tar xzf $1  ;;
            *.tar.xz) tar -xvJf $1 ;;
            *.rar)  unrar x $1  ;;
            *.gz) gzip $1 ;;
            *.tar)  tar xf $1 ;;
            *.tbz2) tar xjf $1  ;;
            *.tgz)  tar xzf $1  ;;
            *.zip)  unzip $1  ;;
            *.Z)  uncompress $1 ;;
            *.7z) 7za e $1 ;;
            *)  echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
