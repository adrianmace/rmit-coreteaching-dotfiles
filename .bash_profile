export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export PROMPT_DIRTRIM=2
export PS1='\[\e[1;33m\]\u@\h\[\e[1;37m\]:\[\e[0;31m\]\w \[\e[0;37m\]\$ '

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
