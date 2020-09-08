#!/bin/zsh
for config in [a-z]*[!.]?? [sg][sh][ch]/*
do
    ln -i $config ~/.$config
done
