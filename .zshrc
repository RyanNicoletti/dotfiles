export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode auto      # update automatically without asking

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

# change custom directory so oh my zsh changes are tracked in git repo
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
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias qatgo='ssh 192.168.103.200'
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# golang
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin

# nvim
export PATH=~/neovim/bin:$PATH
