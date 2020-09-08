#!/bin/zsh
for config in [a-z]*[!.]??
do
    ln -i $config ~/.$config
done

ssh=.ssh/config
ln -i $ssh ~/$ssh

ghc=.ghc/ghci.conf
ln -i $ghc ~/$ghc
