#!/bin/zsh
NAME=$1

if [ $1 -n ]; then
	echo "Set arg 1 as function. Like ./$0 strlcat"
	exit
fi

cd warmachine && bash grademe.sh ft_$NAME -u
cd -
cd tripouille && make $NAME