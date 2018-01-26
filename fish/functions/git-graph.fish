function git-graph -d "Refreshing git log graph"
    while true
        clear
        git log \
        --graph \
        --all \
        --color \
        --date=short \
        -40 \
        --pretty=format:"%C(yellow)%h%x20%C(white)%cd%C(green)%d%C(reset)%x20%s%x20%C(bold)(%an)%Creset" | cat -
        sleep 10
    end
end