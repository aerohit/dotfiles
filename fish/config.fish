# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

if test -z $rvm_bin_path
  exec bash --login -c "exec fish" ^&1
end

# Custom plugins and themes may be added to ~/.oh-my-fish/custom
# Plugins and themes can be found at https://github.com/oh-my-fish/
Theme 'robbyrussell'
Plugin 'theme'
Plugin 'brew'
Plugin 'bundler'
Plugin 'jump'
Plugin 'rails'
Plugin 'rvm'
Plugin 'sublime'
Plugin 'tmux'
Plugin 'vi-mode'
Plugin 'vundle'

set -x PLAY_LOG_FILE "-Dlogger.file=/Users/rohit/codes/site/customer-site/conf/logger-dev.xml"

alias tmls="tmux list-sessions"
alias tmas="tmux attach-session -t"
alias tmns="tmux new-session -s"
alias tmss="tmux switch -t"
alias tmksr="tmux kill-server"
alias tmkss="tmux kill-session"
alias vim="env NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim"
alias nvim="env NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim"

set -x LC_ALL "en_US.UTF-8"
set -x LC_COLLATE "en_US.UTF-8"
set -x LC_CTYPE "en_US.UTF-8"
set -x LC_MESSAGES "en_US.UTF-8"
set -x LC_MONETARY "en_US.UTF-8"
set -x LC_NUMERIC "en_US.UTF-8"
set -x LC_TIME "en_US.UTF-8"

set -x TMUX_POWERLINE_PATCHED_FONT_IN_USE "false"

set -x PIP_REQUIRE_VIRTUALENV true
set -x PYTHONPATH "~/codes/pymodules"
set -x WORKON_HOME "~/codes/virtualenvs"

set -x JAVA_HOME "/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home"
set -x M2_HOME "/usr/local/Cellar/maven/3.3.3/libexec"
set -gx PATH $NGINX/sbin /usr/local/opt/php56/bin/ /usr/local/sbin /usr/local/bin $M2_HOME/bin $JAVA_HOME/bin $PATH

set -gx PATH "/Users/rohit/wahanda/gitflow" $PATH
set -gx PATH "/usr/local/opt/coreutils/libexec/gnubin" $PATH
set -gx PATH "/Users/rohit/.local/bin" $PATH
set -gx NODE_TLS_REJECT_UNAUTHORIZED 0
