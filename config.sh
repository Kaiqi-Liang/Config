#!/bin/zsh
mkdir ~/.ghc
mkdir ~/.ssh
for config in [a-z]*[!.]?? [sg][sh][ch]/*
do
    ln -i $config ~/.$config
done

# Set up vim spell dictionary
spell=vim/spell
mkdir ~/.$spell
for file in $spell/*
do
    ln -i $file ~/.$spell
done
