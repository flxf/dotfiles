export PS1="\w/"
export TERM="xterm-color"
export CLICOLOR=1
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

function ve {
  vi -O $@
}
