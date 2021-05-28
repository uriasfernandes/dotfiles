export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"
export CLICOLOR="auto"
export TERM=xterm-color
export HISTTIMEFORMAT="%d/%m/%y %T "
export HISTSIZE=10000
export FIREBIRD_HOME=/Library/Frameworks/Firebird.framework/Resources
export PATH=$PATH:$FIREBIRD_HOME/bin
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export EDITOR=/usr/bin/vim
export PGPASSWORD=123
export GOPATH="/Users/urias/go"

alias qfind="find . -name "
alias hh="history"
alias ll="ls -plaht"
alias mv="mv -v"
alias tailf="tail -f -n 500"
alias psqll="psql -h localhost -U postgres"
alias codepy="code --extensions-dir ~/workspace/my/code_profiles/python/exts --user-data-dir ~/workspace/my/code_profiles/python/data"

# ls -p >> mostra a / pra indicar as pastas
# ls -S >> ordena por tamanho (maior > menor)
# ls -t >> ordena por tempo (recente > antigo)

git_nome_branch () { git branch 2>/dev/null | grep -e '^*' | sed -E 's/^\* (.+)$/[\1] /' ; }

gam() { "/Users/urias/bin/gam/gam" "$@" ; }

extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xjf $1    ;;
      *.tar.gz)  tar xzvf $1   ;;
      *.bz2)     bunzip2 $1    ;;
      *.rar)     unrar e $1    ;;
      *.gz)      gunzip $1     ;;
      *.tar)     tar xf $1     ;;
      *.tbz2)    tar xjf $1    ;;
      *.tgz)     tar xzf $1    ;;
      *.zip)     unzip $1      ;;
      *.Z)       uncompress $1 ;;
      *.7z)      7z x $1       ;;
      *) echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

PS1="\[\e[01;36m\]\w \[\e[m\]\[\e[01;33m\]\$(git_nome_branch)\[\e[m\]\[\e[01;36m\]>>\[\e[m\] "
# PS1="\[
#       \e[01;36m\]\w \[\e[m
#     \]\[
#       \e[01;33m\]\$(git_nome_branch)\[\e[m
#     \]\[
#       \e[01;36m\]>>\[\e[m
#     \] "
export PS1

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# export PATH=/bin:/usr/bin:/usr/local/bin
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/urias/oracle-cli:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="/usr/local/opt/python@3.9/bin:$PATH"

