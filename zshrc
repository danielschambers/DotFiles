### Zsh config
#

# Brew can get fucked
export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASK_OPTS=--require-sha
export HOMEBREW_NO_ANALYTICS=1

ZSH_THEME="dieter"
export EDITOR='nvim'

# ALIASES
alias nv="nvim"
alias vi="nvim"
alias vim="nvim"
alias zx="exa -lFha --git"
alias r="ranger"
alias be="bundle exec"
alias kc="kubectl"
alias cl="clear"
alias rake='noglob rake'
alias berc="bundle exec spring stop; bundle exec rails c"
alias bers="bundle exec spring stop; bundle exec rails s"
alias bess="bundle exec spring stop"
alias rspec="bundle exec rspec"
alias vim=/usr/local/bin/vim
alias diffocop="git diff origin/master --name-only --diff-filter=ACMRTUXB | grep '\.rb$' | tr '\n' ' ' | xargs bundle exec rubocop"
alias gfarb="git fetch --all; git rebase -i origin/master; bundle install"
alias gpr="git request-pull master"

# Needed to prevent zsh trying to glob match [] inputs.
unsetopt nomatch

plugins=(git)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=165'

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

export GOPATH=$HOME/go
PATH="/Users/ix/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/puppetlabs/bin:/usr/local/sbin:/usr/local/opt/postgresql/bin"
PATH=$PATH:$GOPATH/bin
PATH="$HOME/.asdf/bin:$PATH"
export PATH

export FZF_DEFAULT_COMMAND='rg --files --hidden --follow'

eval "$(asdf exec direnv hook zsh)"

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
