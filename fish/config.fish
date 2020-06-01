# Paths

set -x JAVA_HOME "/Library/Java/JavaVirtualMachines/jdk1.8.0_202.jdk/Contents/Home"
set -gx PATH $JAVA_HOME/bin "/Applications/Postgres.app/Contents/Versions/latest/bin" $PATH
set -gx PATH "/usr/local/Cellar/rabbitmq/3.7.15/sbin" $PATH
set -gx PATH "~/.local/bin" $PATH
set -gx PATH "/Users/aerohit/.local/bin" $PATH
set -gx SBT_OPTS "-Xmx2G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled  -XX:+HeapDumpOnOutOfMemoryError"
set -gx PATH "/usr/local/sbin" $PATH
set --universal fish_user_paths $fish_user_paths ~/.rbenv/shims

# Docker
#eval (docker-machine env default)

# Aliases

alias tmls="tmux list-sessions"
alias tmlw="tmux list-windows -a"
alias tmlp="tmux list-panes -a"
alias tmas="tmux attach-session -t"
alias tmns="tmux new-session -s"
alias tmss="tmux switch -t"
alias tmksr="tmux kill-server"
alias tmkss="tmux kill-session"

alias vim="env NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim"
alias nvim="env NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim"

#alias ols='cd ~/Dropbox/learn-skills; vim'
alias ols='code ~/Dropbox/learn-skills'

alias g="git"

alias dc="docker-compose"
alias ls='lsd'

