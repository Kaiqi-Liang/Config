#!/bin/zsh
# Set up ssh key if not exist
ssh=~/.ssh
if mkdir $ssh
then
    ssh-keygen
    cat $ssh/id_rsa.pub
fi

mkdir -p ~/.ghc
for config in [a-z]*[!.]?? [sg][sh][ch]/*
do
    ln -i $config ~/.$config
done

# Set up vim spell dictionary
spell=vim/spell
mkdir -p ~/.$spell
for file in $spell/*
do
    ln -i $file ~/.$spell
done
