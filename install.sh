#! /bin/bash

BASEDIR=$(readlink -f $0 | xargs dirname)
macOS=('karabiner' 'nvim' 'neofetch' 'tmux' 'wezterm')
installOSX() {
	for i in ${macOS[@]}; do
		ln -sf $BASEDIR/$i $HOME/.config
	done
}

install() {
    case "$OSTYPE" in
      darwin*)  installOSX ;; 
      linux*)   echo "LINUX" ;;
      *)        echo "unknown: $OSTYPE" ;;
    esac
}

install
