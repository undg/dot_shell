#!/bin/bash

paths=(
~/.vim
~/.zprezto
~/vimwiki
)
for item in ${paths[*]}
do
    echo $item
    git -C $item pull
    echo '----------------------------------------------'
done
