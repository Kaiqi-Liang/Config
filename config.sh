#!/bin/zsh
# Set up ssh key if not exist
ssh=~/.ssh
if mkdir $ssh || ! test -f ~/.ssh/id_rsa
then
	ssh-keygen
	cat $ssh/id_rsa.pub
	ssh-copy-id z5210932@cse.unsw.edu.au
	git remote set-url origin git@github.com:Kaiqi-Liang/Config.git
fi

# Set up all the config files
spell=vim/spell
mkdir -p ~/.$spell
mkdir -p ~/.ghc
mkdir -p ~/.zsh
for config in $spell/* ([zs]sh|ghc)/* *rc *_* *config clang-format
do
	if ! diff ~/.$config $config > /dev/null
	then
		echo creating ~/.$config
		ln -i $config ~/.$config
	fi
done

for script in bin/*
do
	exec=`echo $script | cut -d'.' -f1`
	if ! diff /usr/local/$exec $script > /dev/null
	then
		echo creating /usr/local/$exec
		sudo ln -i $script /usr/local/$exec
	fi
done

if ! diff /etc/paths paths > /dev/null
then
	echo creating /etc/paths
	sudo ln -i paths /etc
fi
