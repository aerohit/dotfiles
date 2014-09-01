### Installation instructions

Source the bashrc (in .bashrc or .zshrc) as follows:

    source ~/bin/dotfiles/bashrc

Create a symbolic link for ssh config as follows:

    ln -s ~/bin/dotfiles/ssh/config ~/.ssh/config

Create a symbolic link for slate config as follows:

    ln -s ~/bin/dotfiles/ssh/slate ~/.slate

For configuring vim:

    ln -s ~/bin/dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/bin/dotfiles/vim ~/.vim
    ln -s ~/bin/dotfiles/vim/bundle/vim-colorschemes/colors ~/.vim/colors

For installing [vundle](https://github.com/gmarik/vundle):

    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

Link tmux:

    ln -s ~/bin/dotfiles/tmux.conf ~/.tmux.conf

For configuring Git:

    ln -s ~/bin/dotfiles/git/gitconfig ~/.gitconfig

For configuring ZSH, first clone [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh). Then:

    source ~/bin/dotfiles/zshrc

For configuring default gemrc (Gemfile):

    ln -s ~/bin/dotfiles/gemrc ~/.gemrc

For configuring default rspec

    ln -s ~/bin/dotfiles/rspec .rspec
