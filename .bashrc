# .bashrc
# export TERM=xterm-256color
# [[ $TMUX = "" ]] && export TERM="xterm-256color"

# Test putty-256color
[[ $TMUX = "" ]] && export TERM="putty-256color"

PS1="\[\e[0;37m\][\[\e[0;36m\]\u\[\e[0;37m\]@\[\e[0;37m\]\h\[\e[0;37m\]:\[\e[0;37m\]\w\[\e[0;37m\]]$ \[\e[0m\]"
PROMPT_COMMAND='printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/$HOME/\~}"'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'

alias ll='ls -alF'
alias la='ls -A'

# source ~/.bin/tmuxinator.bash
. /etc/bash_completion
source <(kubectl completion bash)
