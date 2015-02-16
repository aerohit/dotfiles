# kill by name
function kbn
    ps aux | grep -i $argv | grep -v grep | awk '{ print $2 }' | xargs kill -9
end
