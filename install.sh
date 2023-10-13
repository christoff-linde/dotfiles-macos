#!/usr/bin/env bash

git clone --bare git@github.com:christoff-linde/dotfiles-macos.git
$HOME/.dotfiles

# define config alias locally
function config {
	git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

# create a directory to backup existing dotfiles
mkdir -p .dotfiles.backup

config checkout
if [ $? = 0 ]; then
	echo "Checked out .dotfiles from git@github.com:christoff-linde/dotfiles-macos.git"
else
	echo "Moving existing .dotfiles backup to .dotfiles.backup"
	config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs - I{} mv {} .dotfiles.backup/{}
fi

# checkout dotfiles from repo
config checkout
config config status.showUntrackedFiles no
