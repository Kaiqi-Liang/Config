alias profile='sudo vim ~/.bash_profile'
alias paths='sudo vim /etc/paths'
alias vimrc='vim ~/.vimrc'
alias clean='make clean'
alias h='history 20'
alias lsl='ls -l'
alias lsa='ls -A'
alias desktop='cd ~/Desktop'
alias activate='. venv/bin/activate'
alias code='cd /Users/Kaiqi\ Liang/Documents/Code'

alias 1911='cd /Users/Kaiqi\ Liang/Documents/UNSW/1st\ Year/Semester\ 1/COMP1911/Code'
alias 1521='cd /Users/Kaiqi\ Liang/Documents/UNSW/1st\ Year/Semester\ 2/COMP1521/Code'
alias 1531='cd /Users/Kaiqi\ Liang/Documents/UNSW/2nd\ Year/Trimester\ 3/COMP1531/Code'
alias 2041='cd /Users/Kaiqi\ Liang/Documents/UNSW/2nd\ Year/Trimester\ 2/COMP2041/Code' 
alias 2121='cd /Users/Kaiqi\ Liang/Documents/UNSW/2nd\ Year/Trimester\ 2/COMP2121/Code' 
alias 2521='cd /Users/Kaiqi\ Liang/Documents/UNSW/2nd\ Year/Trimester\ 2/COMP2521/Code' 
alias 3311='cd /Users/Kaiqi\ Liang/Documents/UNSW/2nd\ Year/Trimester\ 3/COMP3311/Code'
alias 3331='cd /Users/Kaiqi\ Liang/Documents/UNSW/2nd\ Year/Trimester\ 3/COMP3331/Code'

alias add='git add'
alias commit='git commit -am'
alias status='git status'
alias branch='git branch'
alias checkout='git checkout'
alias master='checkout master'
alias merge='git merge'
alias push='git push'
alias pull='git pull'
alias log='git log'

export PS1="\e[94m(^_^) \e[36m\W \e[93m$\e[0m "

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/kaiqiliang/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/kaiqiliang/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/kaiqiliang/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/kaiqiliang/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source /opt/homebrew/etc/bash_completion.d/bazel-complete.bash
. "/Users/kaiqiliang/.deno/env"