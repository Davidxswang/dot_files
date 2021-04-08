#!/bin/bash

# .vimrc
if [ -f ~/.vimrc ]
	then
		echo -e "\e[91mA .vimrc file already exists in ~, a backup is made.\e[0m"
		cp ~/.vimrc ~/.vimrc.backup
fi

cp vimrc ~/.vimrc
echo -e "\e[93mThe .vimrc file is copied to ~.\e[0m"

# tmux.conf
if [ -f ~/.tmux.conf ]
	then
		echo -e "\e[91mA tmux.conf file already exists in ~, a backup is made.\e[0m"
		cp ~/.tmux.conf ~/.tmux.conf.backup
fi

cp tmux.conf ~/.tmux.conf
echo -e "\e[93mThe tmux.conf file is copied to ~.\e[0m"

# jupyter config folder
if [ ! -d "~/.jupyter" ]
	then
		echo -e "\e[93m~/.jupyter folder does not exist, so we created it.\e[0m"
		mkdir ~/.jupyter
fi

# jupyter lab
if [ -f ~/.jupyter/jupyter_lab_config.py ]
	then
		echo -e "\e[91mA jupyter_lab_config.py file already exists in ~/.jupyter/, a backup is made.\e[0m"
		cp ~/.jupyter/jupyter_lab_config.py ~/.jupyter/jupyter_lab_config.py.backup
fi

cp jupyter_lab_config.py ~/.jupyter/jupyter_lab_config.py
echo -e "\e[93mThe jupyter_lab_config.py file is copied to ~/.jupyter/"

# jupyter notebook
if [ -f ~/.jupyter/jupyter_notebook_config.py ]
	then
		echo -e "\e[91mA jupyter_notebook_config.py file already exists in ~/.jupyter/, a backup is made.\e[0m"
		cp ~/.jupyter/jupyter_notebook_config.py ~/.jupyter/jupyter_notebook_config.py.backup
fi

cp jupyter_notebook_config.py ~/.jupyter/jupyter_notebook_config.py
echo -e "\e[93mThe jupyter_notebook_config.py file is copied to ~/.jupyter/"
