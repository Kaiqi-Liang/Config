#!/bin/zsh
# Set up ssh key if not exist
ssh=~/.ssh
if mkdir $ssh || ! test -f ~/.ssh/id_rsa
then
	ssh-keygen
	cat $ssh/id_rsa.pub
	ssh-copy-id z5210932@cse.unsw.edu.au
fi

# Set up all the config files
spell=vim/spell
mkdir -p ~/.$spell
mkdir -p ~/.ghc
for config in $spell/* (ssh|ghc)/* *rc *_* *config
do
	echo creating ~/.$config
	ln -i $config ~/.$config
done
