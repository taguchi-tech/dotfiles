# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -al --color=auto'
alias vi='vim'
alias hg='hg --encoding=utf-8'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f ~/dotfiles/bash_completion.d/tmux ];then
    . ~/dotfiles/bash_completion.d/tmux
fi

if [ -f ~/dotfiles/bash_completion.d/git-completion.bash ]; then
    . ~/dotfiles/bash_completion.d/git-completion.bash
fi

if [ -f ~/dotfiles/bash_completion.d/git-prompt.sh ]; then
    . ~/dotfiles/bash_completion.d/git-prompt.sh
    GIT_PS1_SHOWDIRTYSTATE=true
    export PS1='\[\033[36m\]\u@\h\[\033[00m\]:\[\033[34m\]\W\[\033[31m\]$(__git_ps1 " (%s)")\[\033[00m\]\$ '
fi

