function tarlist -d "Tar archive listing without untar"
    if test -n "$argv"
        tar -tvf $argv | awk '{ print $1"\t"$3"\t"$6 }'
    else
        printf "give me a tar"
    end
end