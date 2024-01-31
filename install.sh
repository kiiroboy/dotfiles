#! /bin/bash

BASEDIR=$(readlink -f $0 | xargs dirname)
macOSDIR=('karabiner' 'nvim' 'neofetch' 'tmux' 'wezterm')
macOSFILE=('.zshrc')
linux=('nvim' 'tmux')
installOSX() {
        for i in ${macOSDIR[@]}; do
                ln -sf $BASEDIR/$i $HOME/.config
        done
        for i in ${macOSFILE[@]}; do
                ln -sf $BASEDIR/$i $HOME/
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
