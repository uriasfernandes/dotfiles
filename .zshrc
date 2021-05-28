# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

# Histórico:
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=5000
export SAVEHIST=5000
export HISTTIMEFORMAT="%d/%m/%y %T "

# Display red dots while waiting for completion
COMPLETION_WAITING_DOTS="true"

plugins=(
    aws
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    bgnotify
    docker
    docker-compose
)

# autoload -U compinit && compinit
autoload bashcompinit
bashcompinit

alias qfind="find . -name "
alias hh="history"
alias ll="ls -plaht"
alias mv="mv -v"
alias tailf="tail -f -n 500"
alias psqll="psql -h localhost -U postgres"
alias codepy="code --extensions-dir ~/workspace/my/code_profiles/python/exts --user-data-dir ~/workspace/my/code_profiles/python/data"

function gam() { "$HOME/bin/gam/gam" "$@" ; }

source $ZSH/oh-my-zsh.sh

## BINDINGS
bindkey -s '^[OP' '/Users/urias/workspace/casamagalhaes/infratools ^M'

GREEN="%{$fg_bold[green]%}"
YELLOW="%{$fg_bold[yellow]%}"
CYAN="%{$fg_bold[cyan]%}"
RED="%{$fg_bold[red]%}"
RESET="%{$reset_color%}"

PROMPT='$GREEN 👨🏼‍💻  $YELLOW%c $(git_prompt_info) $RESET'

# ZSH_THEME="agnosternewline"
ZSH_THEME="dracula"

ZSH_THEME_GIT_PROMPT_PREFIX=" $CYAN"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" $RED⦿"
ZSH_THEME_GIT_PROMPT_CLEAN=" $GREEN⦾"

export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

fpath=(~/.zsh/completion $fpath)
source /Users/urias/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
