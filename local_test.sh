#!/bin/zsh

act --version
if [ $? -eq 1 ]; then
	echo "Install act .."
	curl https://raw.githubusercontent.com/nektos/act/master/install.sh
	sudo bash install.sh
	rm -f install.sh
fi
sudo act -l
sudo act
