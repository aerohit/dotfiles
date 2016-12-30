## Installation instructions

### Git

    ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

### Bash

Source the bashrc (in .bashrc or .zshrc) as follows:

    source ~/dotfiles/bashrc

### Fish shell

    ln -s ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
    ln -s ~/dotfiles/fish/functions ~/.config/fish/functions

### Neovim

Create the config directory

    mkdir -p ~/.config/nvim

And then link the config files
    ln -s ~/dotfiles/nvim/nvimrc ~/.config/nvim/init.vim
    ln -s ~/dotfiles/nvim ~/.config/nvim


Install https://github.com/junegunn/vim-plug


### Tmux

    ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

### Powerline

Instal the fonts from here https://github.com/powerline/fonts

### Ruby things

    ln -s ~/dotfiles/gemrc ~/.gemrc
    ln -s ~/dotfiles/rspec .rspec
