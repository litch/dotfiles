
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="litch"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="false"

export PATH="/usr/local/bin:$HOME/bin:$HOME/.rvm/bin:$PATH"
export EDITOR='subl -w'

source $ZSH/oh-my-zsh.sh

zplugins=(git bundler brew gem rbates sublime)

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 