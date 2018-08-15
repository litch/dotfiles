alias gst='git status'

unalias gm

alias gcp='git commit -p'

c() { cd ~/code/$1; }
_c() { _files -W ~/code -/; }
compdef _c c

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

# autocorrect is more annoying than helpful
unsetopt correct_all

cptime() { date "+%Y-%m-%d %H:%M" | pbcopy }

e() {
  vim ~/dotfiles/oh-my-zsh/custom/plugins/litch/litch.plugin.zsh
}

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export JRUBY_OPTS='--2.0'

export PGDATA='/usr/local/var/postgres'

export POSTURE=development

export NVM_DIR="/Users/litch/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/miniconda3/bin:$PATH"

alias btc='curl -sSL https://coinbase.com/api/v1/prices/historical | head -n 1 | sed "s|^.*,|$|" | sed "s|\(\.[0-9]$\)|\10|"'
