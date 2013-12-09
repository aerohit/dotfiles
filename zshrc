# Giving initial value so that terminal doesn't cry on launch
start_time=$SECONDS

function timer_start {
  threshold_time=10
  start_time=$SECONDS
  cmd=$1
}

function timer_stop {
  execution_time=$(($SECONDS-$start_time))
  if [[ $execution_time -gt $threshold_time ]]; then
    send_notification
  fi
  start_time=$SECONDS
}

function send_notification {
  elapsed_time="${execution_time} secs"
  terminal-notifier -title "Finished" -subtitle "elapsed time ${elapsed_time}" -message "${cmd}"
}

# Load required functions.
autoload -Uz add-zsh-hook

add-zsh-hook preexec timer_start
add-zsh-hook precmd timer_stop
