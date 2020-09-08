#!/bin/zsh
for config in [a-z]*[!.]?? [sg][sh][ch]/*
do
    ln -i $config ~/.$config
done

# Set up vim spell dictionary
spell=.vim/spell
if ! mkdir ~/$spell
then
    rm -r ~/$spell
    mkdir ~/$spell
fi

for file in $spell/*
do
    ln -i $file ~/$spell
done
