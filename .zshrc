fpath=(~/.zsh $fpath)

autoload -U compinit
compinit -u


# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls -G'
alias ll='ls -lG'
alias l='ls -lG'
alias la='ls -alG'
alias hg='hg --encoding=utf-8'
alias xrm='xargs -t -0 rm'
alias tarx='tar czf --exclude node_modules'
alias updatelocate='sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist'

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
 
# setopt PROMPT_SUBST ; PS1='%n@%m:%F{blue}%1c%f%F{red}$(__git_ps1 "(%s)")%f\$ '
setopt PROMPT_SUBST ; PS1='%n@%m:%F{blue}%~%f%F{red}$(__git_ps1 "(%s)")%f\$ '

