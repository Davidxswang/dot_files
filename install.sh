#!/bin/bash

# .vimrc
if [ -a ~/.vimrc ]
	then
		echo -e "\e[91mA .vimrc file already exists in ~, a backup is made.\e[0m"
		cp ~/.vimrc ~/.vimrc.backup
fi

cp vimrc ~/.vimrc
echo -e "\e[93mThe .vimrc file is copied to ~.\e[0m"

# tmux.conf
if [ -a ~/tmux.conf ]
	then
		echo -e "\e[91mA tmux.conf file already exists in ~, a backup is made.\e[0m"
		cp ~/tmux.conf ~/tmux.conf.backup
fi

cp tmux.conf ~/tmux.conf
echo -e "\e[91mThe tmux.conf file is copied to ~.\e[0m"
