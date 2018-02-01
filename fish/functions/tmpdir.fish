function tmpdir -d "create temp dir"
    if test -n "$argv[1]"
        set dir (mktemp -d -t "$argv[1].XXXXXXXXXX")
    else
        set dir (mktemp -d)
    end
    cd $dir; or exit
    trap "rm -r $dir" EXIT
    set -e dir
end

