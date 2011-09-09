### Installation instructions

Source the bashrc (in .bashrc or .zshrc) as follows:

    source ~/bin/dotfiles/bashrc

Create a symbolic link for ssh config as follows:

    ln -s ~/bin/dotfiles/ssh/config ~/.ssh/config

For configuring vim:

    ln -s ~/bin/dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/bin/dotfiles/vim ~/.vim
    ln -s ~/bin/dotfiles/vim/bundle/vim-colorschemes/colors ~/.vim/colors

For configuring Git:
    ln -s ~/bin/dotfiles/git/gitconfig ~/.gitconfig
