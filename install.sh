#! /bin/bash

BASEDIR=$(readlink -f $0 | xargs dirname)
macOSDIR=('nvim' 'neofetch' 'tmux' 'wezterm' 'kitty')
macOSFILE=('.myzshrc' '.p10k.zsh' '.ideavimrc')
linux=('nvim' 'tmux')

installOSX() {
        for i in ${macOSDIR[@]}; do
                ln -sf $BASEDIR/$i $HOME/.config
        done
        for i in ${macOSFILE[@]}; do
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
