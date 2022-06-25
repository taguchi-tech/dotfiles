# .bash_profile

# Get the aliases and functions
#if [ -f ~/.bashrc ]; then
#	. ~/.bashrc
#fi

# User specific environment and startup programs

PATH=$HOME/.nodenv/bin:/usr/local/sbin:/usr/local/bin:$PATH
LANG=ja_JP.UTF-8

export PATH LANG
unset USERNAME

export HISTCONTROL=ignoreboth

if [ -f ${HOME}/.zsh/git-completion.zsh ]; then
    zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.zsh
fi
 
if [ -f ${HOME}/.zsh/git-prompt.sh ]; then
    source ${HOME}/.zsh/git-prompt.sh
fi
 
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
 
setopt PROMPT_SUBST ; PS1='%n@%m:%F{blue}%~%f%F{red}$(__git_ps1 "(%s)")%f\$ '

eval "$(nodenv init -)"

