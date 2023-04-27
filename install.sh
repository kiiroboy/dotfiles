#! /bin/bash

installOSX() {
    BASEDIR=$(readlink -f $0 | xargs dirname)
    for d in $BASEDIR/macOS/*; do
        ln -sf $d $HOME/.config
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
