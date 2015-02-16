function ne
    if test (count $argv) -gt 0
        vim -c ":Note $argv"
    else
        echo "Please provide file name (use nls)"
    end
end
