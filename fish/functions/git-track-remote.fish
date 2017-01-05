function git-track-remote
    git branch --track $argv origin/$argv
    git checkout $argv
end
