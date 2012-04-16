### Installation instructions

Source the bashrc (in .bashrc or .zshrc) as follows:

    source ~/bin/dotfiles/bashrc

Create a symbolic link for ssh config as follows:

    ln -s ~/bin/dotfiles/ssh/config ~/.ssh/config

For configuring vim:

    ln -s ~/bin/dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/bin/dotfiles/vim ~/.vim
    ln -s ~/bin/dotfiles/vim/bundle/vim-colorschemes/colors ~/.vim/colors

For installing vundle:

    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

For configuring Git:

    ln -s ~/bin/dotfiles/git/gitconfig ~/.gitconfig

For configuring ZSH, first clone [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh). Then:

    ln -s ~/bin/dotfiles/zshrc ~/.zshrc
    ln -s ~/bin/dotfiles/zsh/aerohit.zsh-theme ~/codes/oh-my-zsh/themes/aerohit.zsh-theme

For configuring default gemrc (Gemfile):

    ln -s ~/bin/dotfiles/gemrc ~/.gemrc 
