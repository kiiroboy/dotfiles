#! /bin/bash

BASEDIR=$(readlink -f $0 | xargs dirname)
macOSCONFIG=('nvim' 'tmux' 'kitty')
macOSHOME=('.myzshrc' '.p10k.zsh' '.ideavimrc' '.zfn' 'bin')
linux=('nvim' 'tmux')

installOSX() {
        for i in ${macOSCONFIG[@]}; do
                ln -sf $BASEDIR/$i $HOME/.config
        done
        for i in ${macOSHOME[@]}; do
                ln -sf $BASEDIR/$i $HOME/
        done
        if ! grep -Fxq "source ~/.myzshrc" $HOME/.zshrc
        then
            # code if found
            echo "source ~/.myzshrc" >> ~/.zshrc
        fi
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
