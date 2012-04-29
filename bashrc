# git bash completion
if [ -f /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi

# http://jonisalonen.com/2012/your-bash-prompt-needs-this/
PS1="\[\033[G\]\w/"
export PS1

export TERM="xterm-color"
export CLICOLOR=1
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

function ve {
  vi -O $@
}
