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

# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PGDATA='/usr/local/var/postgres'

export POSTURE=development

export PATH="$HOME/miniconda3/bin:$HOME/.npm-packages/bin:$PATH"

btc () {
  curl -s http://api.coindesk.com/v1/bpi/currentprice.json | python -c "import json, sys; print(json.load(sys.stdin)['bpi']['USD']['rate'])"
}