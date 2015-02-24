### Installation instructions

Source the bashrc (in .bashrc or .zshrc) as follows:

    source ~/bin/dotfiles/bashrc

Create a symbolic link for ssh config as follows:

    ln -s ~/bin/dotfiles/ssh/config ~/.ssh/config

Use Spectacle for window management.

For configuring vim:

    ln -s ~/bin/dotfiles/nvim/nvimrc ~/.vimrc
    ln -s ~/bin/dotfiles/nvim ~/.vim

    ln -s ~/bin/dotfiles/nvim/nvimrc ~/.nvimrc
    ln -s ~/bin/dotfiles/nvim ~/.nvim

For installing [vim-plug](https://github.com/junegunn/vim-plug):

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

Link tmux:

    ln -s ~/bin/dotfiles/tmux.conf ~/.tmux.conf

Link fish:

    ln -s ~/bin/dotfiles/fish/config.fish ~/.config/fish/config.fish
    ln -s ~/bin/dotfiles/fish/functions ~/.config/fish/functions

For configuring Git:

    ln -s ~/bin/dotfiles/git/gitconfig ~/.gitconfig

For configuring default gemrc (Gemfile):

    ln -s ~/bin/dotfiles/gemrc ~/.gemrc

For configuring default rspec

    ln -s ~/bin/dotfiles/rspec .rspec
