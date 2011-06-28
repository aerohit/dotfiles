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
