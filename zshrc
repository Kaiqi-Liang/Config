# Aliases for config files
alias paths='sudo vim /etc/paths'
alias zshrc='vim $HOME/.zshrc'
alias vimrc='vim $HOME/.vimrc'
alias settings='vim $HOME/Library/Application\ Support/Code/User/settings.json'

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
alias document='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/Documents'
alias chatgpt='python3 /Users/kaiqiliang/Config/chatgpt.py'
alias 18s1='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/2018/Semester\ 1'
alias 18s2='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/2018/Semester\ 2'
alias 19t1='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/2019/Trimester\ 1'
alias 19t2='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/2019/Trimester\ 2'
alias 19t3='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/2019/Trimester\ 3'
alias 20t1='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/2020/Trimester\ 1'
alias 20t2='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/2020/Trimester\ 2'
alias 20t3='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/2020/Trimester\ 3'
alias 21t1='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/2021/Trimester\ 1'
alias 21t2='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/2021/Trimester\ 2'
alias 21t3='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/2021/Trimester\ 3'
alias 22t1='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/2022/Trimester\ 1'
alias 22t2='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/2022/Trimester\ 2'
alias 22t3='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/2022/Trimester\ 3'
alias 22s1='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UWA/2022/Semester\ 1'
alias 22s2='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UWA/2022/Semester\ 2'
alias 23s1='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UWA/2023/Semester\ 1'
alias 23s2='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UWA/2023/Semester\ 2'
alias 23t2='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/2023/Trimester\ 2'
alias 23t3='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/2023/Trimester\ 3'
alias 24t1='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/2024/Trimester\ 1'
alias 24t2='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/2024/Trimester\ 2'

# Shortcuts for git
alias branch='git branch -a'
alias remote='git remote -v'

function commitpush {
	if git commit -am "$1"
	then
		git push
	fi
}

function master {
	if ! git checkout master 2> /dev/null
	then
		git checkout main
	fi
}

function bundle {
	git bundle create "$1" --all
}

function repo {
	url=`git remote -v`
	if ! test -z $url
	then
		url=`echo $url | head -1 | cut -f2 | cut -d' ' -f1`
		if ! echo $url | grep https > /dev/null
		then
			url=https://`echo $url | cut -d'@' -f2 | tr ':' '/'`
		fi
		open $url
	fi
}

function dus {
	du -d1 $1 | sort -hr
}

# Compiler flags
alias java='java -ea'
CFLAGS='-pedantic -Wall -Wextra -Wconversion -Wshadow -fno-omit-frame-pointer -fsanitize=undefined,address'
export CXXFLAGS='-std=c++20 '$CFLAGS
export CFLAGS='-std=c17 '$CFLAGS

alias make_dbg_cpp="make CC=g++ CXXFLAGS='$CXXFLAGS -g'"

# Other aliases
alias stat='stat -x'
alias activate='. venv/bin/activate'
alias dirs='dirs -v'

# Settings for history
alias h='history -E'
setopt HIST_IGNORE_ALL_DUPS

# Customise command prompt
export PS1="%15F>_%f %14F%2~%f %11F$%f "

function mkcd {
	mkdir -p "$1"
	cd "$1"
}

function scroll {
	while $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/UNSW/2018/Semester\ 2/COMP1521/Code/ass1/scroll "$1"
	do
	done
}

function qr {
	curl qrcode.show/"$1"
}

function ip {
	if [[ $1 = 'public' ]]
	then
		curl ifconfig.me
		echo
	else
		ifconfig | egrep 'inet .* broadcast' | cut -d' ' -f2
	fi
}

function killport {
	sudo lsof -t -i:$1 | xargs kill
}

# Auto completion for git
zstyle ':completion:*:*:git:*' script $HOME/.zsh/git-completion.bash
fpath=($HOME/.zsh $fpath)
autoload -Uz compinit && compinit

# Initialise conda
__conda_setup="$('/Users/kaiqiliang/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kaiqiliang/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kaiqiliang/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kaiqiliang/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kaiqiliang/google-cloud-sdk/completion.zsh.inc'; fi

# Add Developer Tools to PATH
. "$HOME/.cargo/env"
export PATH="$PATH:/Library/TeX/texbin"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:/Applications/CMake.app/Contents/bin"
export PATH="/opt/local/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:/opt/homebrew/bin"
export PATH="$PATH:/usr/local/apache-maven-3.9.5/bin"
export PATH="$PATH:/Users/kaiqiliang/miniconda3/bin"
export PATH="/Users/kaiqiliang/.modular/pkg/packages.modular.com_mojo/bin:$PATH"
export MODULAR_HOME="/Users/kaiqiliang/.modular"
