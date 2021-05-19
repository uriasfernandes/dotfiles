export ZSH="/Users/ytalorodrigues/.oh-my-zsh"

# Display red dots while waiting for completion
COMPLETION_WAITING_DOTS="true"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    bgnotify
    docker
    docker-compose
)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

## env vars
export NODE_ENV="development"

GREEN="%{$fg_bold[green]%}"
YELLOW="%{$fg_bold[yellow]%}"
CYAN="%{$fg_bold[cyan]%}"
RED="%{$fg_bold[red]%}"
RESET="%{$reset_color%}"

PROMPT='$GREEN ⬢  $YELLOW%c $(git_prompt_info) $RESET'

ZSH_THEME_GIT_PROMPT_PREFIX=" $CYAN"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" $RED⦿"
ZSH_THEME_GIT_PROMPT_CLEAN=" $GREEN⦾"

export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

fpath=(~/.zsh/completion $fpath)
