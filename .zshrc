export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode auto      # update automatically without asking

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# track oh my zsh changes in bare git repo
export ZSH_CUSTOM=$HOME/.dotfiles/custom

# aliases
alias dotgit='/usr/bin/git --git-dir=/Users/ryannicoletti/.cfg/ --work-tree=/Users/ryannicoletti'

source /Users/ryannicoletti/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias config='/usr/bin/git --git-dir=/Users/ryannicoletti/.dotfiles/ --work-tree=/Users/ryannicoletti'
