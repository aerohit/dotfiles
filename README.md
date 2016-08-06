### Installation instructions

Source the bashrc (in .bashrc or .zshrc) as follows:

    source ~/dotfiles/bashrc

Create a symbolic link for ssh config as follows:

    ln -s ~/dotfiles/ssh/config ~/.ssh/config

Use Spectacle for window management.

Install tmux with 24 bit or true colour support:

    https://github.com/choppsv1/homebrew-term24

For configuring vim:

    ln -s ~/dotfiles/nvim/nvimrc ~/.vimrc
    ln -s ~/dotfiles/nvim ~/.vim

    ln -s ~/dotfiles/nvim/nvimrc ~/.nvimrc
    ln -s ~/dotfiles/nvim ~/.nvim

For installing [vim-plug](https://github.com/junegunn/vim-plug):

For neovim:

    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

For vim:

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

Link tmux:

    ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

Link fish:

    ln -s ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
    ln -s ~/dotfiles/fish/functions ~/.config/fish/functions

For configuring Git:

    ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

For configuring default gemrc (Gemfile):

    ln -s ~/dotfiles/gemrc ~/.gemrc

For configuring default rspec

    ln -s ~/dotfiles/rspec .rspec

To install powerline for tmux

    brew install python
    pip install git+git://github.com/Lokaltog/powerline

    mkdir ~/.config/powerline
    cp -R /usr/local/lib/python2.7/site-packages/powerline/config_files/* ~/.config/powerline
    mv ~/.config/powerline/config.json ~/.config/powerline/config.json.bak
    ln -s ~/dotfiles/powerline/config.json ~/.config/powerline/config.json
    ln -s ~/dotfiles/powerline/themes/tmux/custom.json ~/.config/powerline/themes/tmux/custom.json

Download Powerline patched fonts

    git clone https://github.com/Lokaltog/powerline-fonts.git

Don't forget to install Powerline patched fonts!
