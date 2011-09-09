Source the bashrc as follows:

source ~/bin/dotfiles/bashrc

Create a symbolic link for ssh config as follows:

ln -s ~/bin/dotfiles/ssh/config ~/.ssh/config

Now instead of,

ssh -p SOME_PORT someuser@example.com

just do:

ssh backup

or to copy files:

scp code backup:archives/

or to clone git repository:

git clone backup:my_project.git

### Shortcuts
!! Previously executed command
!$ last argument of previous command
!:n n-th argument of the previous command
history View previously executed command
!n to run the n-th command from history
!echo Re-run a command by name
^r interactive search of history
^from^to replace first occurence and re-run


Examples:
→
___________________
→ sudo !!

___________________
→ touch README.txt
→ gvim !$

___________________
→ gvim README.mk 

→ ^README^INSTALL
gvim INSTALL.mk 

___________________
→ mv README.{txt,mk} 


### Vim

ln -s ~/bin/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/bin/dotfiles/vim ~/.vim
ln -s ~/bin/dotfiles/vim/bundle/vim-colorschemes/colors ~/.vim/colors
ln -s ~/bin/dotfiles/git/gitconfig ~/.gitconfig
