#! /bin/bash

BASEDIR=$(readlink -f $0 | xargs dirname)
macOS=('karabiner' 'nvim' 'neofetch' 'tmux' 'wezterm')
linux=('nvim' 'tmux')
installOSX() {
        for i in ${macOS[@]}; do
                ln -sf $BASEDIR/$i $HOME/.config
        done
}

installLinux() {
        for i in ${linux[@]}; do
                ln -sf $BASEDIR/$i $HOME/.config
        done
}

install() {
    case "$OSTYPE" in
      darwin*)  installOSX ;;
      linux*)   installLinux ;;
      *)        echo "unknown: $OSTYPE" ;;
    esac
}

install
