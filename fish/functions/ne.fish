function ne
    if test (count $argv) -gt 0
        nvim -c ":Note $argv"
    else
        echo "Please provide file name (use nls)"
    end
end
