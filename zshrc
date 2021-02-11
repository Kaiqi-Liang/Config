# Aliases for config files
alias paths='sudo vim /etc/paths'
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'

# Aliases for ls
alias ls='ls -G'
alias ll='ls -Alhi'
alias lol='ls -Aoh'
alias lsl='ls -lh'
alias lsa='ls -A'

# Get confirmation before doing destructive move
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'

# Get human readable file sizes
alias du='du -h'
alias df='df -h'

# Colourise grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'

# Quick access to certain directories
alias desktop='cd /Users/kaiqiliang/Desktop'
alias document='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/'
alias 1911='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/1st\ Year/Semester\ 1/COMP1911/Code'
alias 1521='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/1st\ Year/Semester\ 2/COMP1521/Code'
alias 1531='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/2nd\ Year/Trimester\ 3/COMP1531/Code'
alias 2041='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/2nd\ Year/Trimester\ 2/COMP2041/Code'
alias 2121='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/2nd\ Year/Trimester\ 2/COMP2121/Code'
alias 2521='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/2nd\ Year/Trimester\ 2/COMP2521/Code'
alias 2511='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/3rd\ Year/Trimester\ 2/COMP2511/Code'
alias 3141='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/3rd\ Year/Trimester\ 2/COMP3141/Code'
alias 3311='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/2nd\ Year/Trimester\ 3/COMP3311/Code'
alias 3331='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/2nd\ Year/Trimester\ 3/COMP3331/Code'
alias 3900='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/3rd\ Year/Trimester\ 3/COMP3900/Code'
alias 6080='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/3rd\ Year/Trimester\ 3/COMP6080/Code'

# Shortcuts for git
alias add='git add'
alias commit='git commit'
alias status='git status'
alias branch='git branch'
alias checkout='git checkout'
alias master='checkout master'
alias merge='git merge'
alias push='git push'
alias pull='git pull'

function commitpush {
    if git commit -am "$1"
    then
        git push
    fi
}

# Other aliases
alias java='java -ea'
alias stat='stat -x'
alias activate='. venv/bin/activate'

# Settings for history
alias h='history -E'
setopt HIST_IGNORE_ALL_DUPS

# Customise command prompt
export PS1="%15F>_%f %14F%2~%f %11F$%f "

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Other functions
function mkcd {
    mkdir -p "$1"
    cd "$1"
}

function scroll {
    while true
    do
        /Users/kaiqiliang/Documents/UNSW/Coursework/1st\ Year/Semester\ 2/COMP1521/Code/ass1/scroll "$1"
    done
}

