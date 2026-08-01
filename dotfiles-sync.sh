#!/bin/bash

rsync -avhP \
	--exclude='/.git/' \
	--exclude='/.gitignore' \
	--exclude='/README.md' \
	"$HOME/.mydotfiles/" "$HOME/.dotfiles/ml4w.mydotfiles/"
