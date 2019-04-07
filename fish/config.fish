# Paths

set -x JAVA_HOME "/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home"
set -gx PATH $JAVA_HOME/bin $PATH
set -gx SBT_OPTS "-Xmx2G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled  -XX:+HeapDumpOnOutOfMemoryError"

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

alias g="git"

alias dc="docker-compose"
