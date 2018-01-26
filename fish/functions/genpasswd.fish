function genpasswd -d "Generate random password long as integer argv"
    if test -n "$argv"
        tr -dc A-Za-z0-9_ < /dev/urandom | head -c $argv | xargs
    else
        tr -dc A-Za-z0-9_ < /dev/urandom | head -c 20 | xargs
    end
end