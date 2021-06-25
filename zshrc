# Aliases for config files
alias paths='sudo vim /etc/paths'
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'

# Aliases for ls
alias ls='ls -G'
alias lol='ls -Aoh'

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
alias 18s1='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/2018/Semester\ 1'
alias 18s2='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/2018/Semester\ 2'
alias 19t1='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/2019/Trimester\ 1'
alias 19t2='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/2019/Trimester\ 2'
alias 19t3='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/2019/Trimester\ 3'
alias 20t1='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/2020/Trimester\ 1'
alias 20t2='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/2020/Trimester\ 2'
alias 20t3='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/2020/Trimester\ 3'
alias 21t1='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/2021/Trimester\ 1'
alias 21t2='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/2021/Trimester\ 2'
alias 21t3='cd /Users/kaiqiliang/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/Coursework/2021/Trimester\ 3'

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

# Compiler flags
alias java='java -ea'
alias g++='g++ -std=c++20 -Wall'
alias gcc='gcc -Wall'

# Other aliases
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

