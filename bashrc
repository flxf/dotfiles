if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# git bash completion
if [ -f /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi

if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
  . /opt/local/etc/profile.d/bash_completion.sh
fi

# git prompt
if [ -f /opt/local/share/git-core/git-prompt.sh ]; then
  . /opt/local/share/git-core/git-prompt.sh
fi

if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

# http://jonisalonen.com/2012/your-bash-prompt-needs-this/
PS1='\[\033[G\]\w/$(__git_ps1 " (%s):")'
export PS1

export TERM="xterm-color"
export CLICOLOR=1
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

function ve {
  vi -O $@
}

# use hub as a git wrapper
alias git=hub
