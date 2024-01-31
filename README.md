# Dotfiles
![Thumbnail](https://raw.githubusercontent.com/tath2701/dotfiles/main/misc/assets/dotfile_thumbnail.png)
## Supported OS
- :white_check_mark: macOS 
- :white_large_square: Linux (TBA)
- :white_large_square: Windows (TBA)


## Installation
Clone the repository
```
git clone https://github.com/tath2701/dotfiles
cd dotfiles
```

Run the script to symlink appropriate files from current directory into ``$HOME/.config``. **The script will overwrite the existing files/links**, make sure to handle the conflicts before start the script.
```
./install.sh
```

## Font
Comic Code
https://github.com/romkatv/powerlevel10k/blob/master/font.md

## Neovim Setup
install Packer.nvim
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

install fd for folder searching

install rg for better find searching
