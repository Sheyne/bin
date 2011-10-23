#Aliases
alias commit="git commit"

#Autocompletes
source ~/bin/contrib-completion-git-completion.bash


#colors and such
alias ls="ls -G"
PS1="\[\033[34;1m\]\w\[\033[m\]\$ "

#Path
PATH=~/bin/:$PATH
PATH=/opt/local/bin:/opt/local/sbin:$PATH
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
export NODE_PATH="/usr/local/lib/node"
