ZSH=$HOME/.oh-my-zsh
ZSH_THEME="litch"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="false"

export PATH="/usr/local/bin:$HOME/bin:$HOME/.rvm/bin:$PATH"
export EDITOR='subl -w'

plugins=(git bundler brew gem rbates litch sublime)

source $ZSH/oh-my-zsh.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
