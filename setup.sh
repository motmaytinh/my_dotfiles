#!/bin/bash
# My environment setup script 

echo "Hello World!"

if [ ! -d ~/.vim ]; then
	mkdir -p ~/.vim/pack/themes/opt 
	mkdir -p ~/.vim/colors
	apt remove -y vim-tiny
	apt update
	apt install -y vim
	echo ".vim created"
fi

