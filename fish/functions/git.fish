# git functions

function git-clean -d "Cleans your working copy of untracked files (not directories)"
    git clean --dry-run --force
    read -l -p 'set_color red; echo "Continue? [Yn]"; set_color normal; echo "> "' input
    switch $input
        case '' 'y' 'Y' 'yes' 'Yes' 'YES'
            git clean --force
    end
end

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