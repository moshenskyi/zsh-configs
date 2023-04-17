export ALIAS_HOME=$HOME/.zsh/aliases.zsh
export EDITOR='vim'
export GOPATH=$HOME/go
export GOROOT=/usr/local/go 
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin

pb() {
   cat "$@" | pbcopy
}

pb_err() {
    cat "$@" 2>&1 | pbcopy
}

mkcd() {
    mkdir -p "$@" && cd "$_"
}

curr_branch() {
   git rev-parse --abbrev-ref HEAD
}

gpush() {
   # call above func to get current branch 
   local current_branch="$(curr_branch)"
   
   git checkout main
   git pull
   git checkout $current_branch
}

add_alias() {
    if [ "$#" -ne 1 ]
    then
        echo "Illegal number of parameters"
    else
        echo "alias $1" >> $ALIAS_HOME
    fi
}

topen() {
    touch $1
    e $1
}

find_and_kill() {
    if [ "$#" -ne 1 ]
    then
        echo "Illegal number of parameters"
    else
        ps -ax | grep "$1" | awk {'print $1'} | xargs kill -9
    fi
}

list_proc() {
   if [ "$#" -ne 1 ]
    then
        echo "Illegal number of parameters"
    else
        ps -ax | grep "$1" | awk {'print $1'}
    fi 
}
