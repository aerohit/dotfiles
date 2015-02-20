function github
    echo "creating project" $argv
    git remote add origin git@github.com:aerohit/$argv.git
    git push -u  origin master
end
