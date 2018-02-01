function genpasswd -d "Generate random password long as integer argv"
    if test -n "$argv[1]"
        tr -dc A-Za-z0-9_ < /dev/urandom | head -c $argv[1] | xargs
    else
        tr -dc A-Za-z0-9_ < /dev/urandom | head -c 20 | xargs
    end
end