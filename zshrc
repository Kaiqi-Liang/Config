# Aliases for config files
alias paths='sudo vim /etc/paths'
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias settings='vim ~/Library/Application\ Support/Code/User/settings.json'

# Aliases for ls
alias ls='ls -G'
alias lol='ls -Aoh'

# Get confirmation before doing destructive move
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'

# Get human readable file sizes
alias du='du -hd1'
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
alias push='git push'
alias pull='git pull'
alias remote='git remote -v'

function commitpush {
	if git commit -am "$1"
	then
		git push
	fi
}

function master {
	if ! checkout master 2> /dev/null
	then
		checkout main
	fi
}

function bundle {
	git bundle create "$1" --all
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

# Add Developer Tools to PATH
export PATH="$PATH:/Library/TeX/texbin"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:/Applications/CMake.app/Contents/bin"

# Other functions
function repo {
	if url=`git remote -v`
	then
		url=`echo $url | head -1 | cut -f2 | cut -d'@' -f2 | cut -d' ' -f1 | tr ':' '/'`
		open https://$url
	fi
}

function mkcd {
	mkdir -p "$1"
	cd "$1"
}

function scroll {
	while /Users/kaiqiliang/Documents/UNSW/Coursework/2018/Semester\ 2/COMP1521/Code/ass1/scroll "$1"
	do
	done
}

function qr {
	curl qrcode.show/"$1"
}

