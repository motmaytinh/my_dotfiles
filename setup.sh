#!/bin/bash
# My environment setup script 

echo "Hello World!"

if ! command -v git >/dev/null 2>&1; then
	printf "${YELLOW}Git is not installed!${NORMAL} Installing git!\n"
	sudo apt install git
else
	printf "${GREEN}Git installed.\n"
fi

if ! command -v zsh >/dev/null 2>&1; then
	printf "${YELLOW}Zsh is not installed!${NORMAL} Installing zsh!\n"
	sudo apt install zsh
	chsh -s $(which zsh)
	wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
	sudo git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
	wget https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf
	wget -P ~ https://github.com/motmaytinh/my_config/blob/master/.zshrc
else
    printf "${GREEN}Zsh installed.\n"
fi


if [ ! -d ~/.vim ]; then
	printf "${YELLOW}Vim GUI is not installed!${NORMAL} Installing Vim GUI!\n"
	mkdir -p ~/.vim/pack/themes/opt 
	mkdir -p ~/.vim/colors
	apt remove vim-tiny
	apt update
	apt install vim
	wget -P ~ https://github.com/motmaytinh/my_config/blob/master/.vimrc
	echo ".vim created"
else
	printf "${GREEN}Vim GUI installed.\n"
fi

if ! command -v pip >/dev/null 2>&1; then
	sudo apt install python-pip
else
	printf "${GREEN}Pip installed.\n"
fi

if [ ! -d /usr/share/themes/Adapta ]; then
	printf "${YELLOW}Adapta is not installed!${NORMAL} Installing Adapta!\n"
	sudo add-apt-repository ppa:tista/adapta
	sudo apt-get update
	apt get adapta
else
	printf "${GREEN}Adapta installed.\n"
fi

if ! command -v google-chrome >/dev/null 2>&1; then
	printf "${YELLOW}Google Chrome is not installed!${NORMAL} Installing Google Chrome!\n"
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
	sudo apt-get update
	sudo apt-get install google-chrome
else
	printf "${GREEN}Google Chrome installed.\n"
fi
