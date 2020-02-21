ZSH=$HOME/.oh-my-zsh
ZSH_THEME="litch"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="false"

export PATH="/usr/local/bin:$HOME/bin:$PATH"

plugins=(git bundler brew gem litch sublime)

source $ZSH/oh-my-zsh.sh


# added by Miniconda3 installer
export PATH="/Users/litch/miniconda3/bin:$PATH"

NPM_PACKAGES="${HOME}/.npm-packages"

export PATH="$NPM_PACKAGES/bin:$PATH"
export PATH="~/bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
