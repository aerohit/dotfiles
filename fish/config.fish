# Paths

set -x JAVA_HOME "/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home"
set -gx PATH $JAVA_HOME/bin $PATH

# Aliases

alias tmls="tmux list-sessions"
alias tmas="tmux attach-session -t"
alias tmns="tmux new-session -s"
alias tmss="tmux switch -t"
alias tmksr="tmux kill-server"
alias tmkss="tmux kill-session"

alias vim="env NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim"
alias nvim="env NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim"
