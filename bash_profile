#General exports
export HOME="/Users/quantu"
export DEVELOPMENT="$HOME/development"


#Home of libs and tools
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

##===== Aliases ======#
alias bpe='vim ~/.bash_profile; source ~/.bash_profile'
alias ls='ls -G'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
 
# usage: nametab my-name-of-tab
# result: tab (iterm2) gets name my-name-of-tab
function nametab {
   echo -ne "\033]0;"$*"\007"
}
 
# show current git branch. choose between 'full' or 'without computer name'
parse_git_branch() {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
# full
# export PS1="\[\033[00m\]\u@\h\[\033[01;33m\] \w \[\033[31m\]\$(parse_git_branch) \[\033[00m\]$\[\033[00m\] "
# without computer name
export PS1="\[\033[00m\]\u\[\033[01;33m\] \w \[\033[31m\]\$(parse_git_branch) \[\033[00m\]$\[\033[00m\] "
