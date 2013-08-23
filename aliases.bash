# TRAVERSING
#######################################################

alias ll='ls -lAFGh'
alias whatsmyip='ipconfig getifaddr en1'

function mkd {
  mkdir $1;
  cd $1;
}


# MISC
#######################################################

alias vi=vim
alias h='history'
alias fh='history | grep $1' #Requires one input
ft() { echo -n "（╯°□°）╯︵ ┻━┻" | pbcopy; }

# alias ztr='tar -czvf $1 $2' #create a tarball
# alias zls='tar -tzf $1' #ls a tarball
# alist zun='tar -xzvf $1' #extract a tarball

# GIT
#######################################################

# alias g='git'
# alias ga="git add"
# alias gb='git branch --verbose'
# alias gc='git commit --verbose'
# alias gca='git commit --verbose --all'
# alias gco="git checkout"
# alias gd='git diff --ignore-space-change'
# alias gk='gitk &'
# alias gull='git pull'
# alias gm="git merge"
# alias gush='git push'
# alias gs="git stash"
# alias gx="gitx"

alias shlvl="echo $SHLVL"
alias flush_dns="sudo killall -HUP mDNSResponder"

_sites () {
    local client project
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    if [ $prev == "sites" ]
    then
        COMPREPLY=( $(compgen -W "$(ls /Users/sdavis/Sites/)" -- $cur) );
    elif [ $COMP_CWORD == 2 ]
    then
        COMPREPLY=( $(compgen -W "$(ls "/Users/sdavis/Sites/$prev")" -- $cur));
    fi
}
complete -F _sites sites;

sites () {
    cd "/Users/sdavis/Sites/$1/$2"
}

