function mkdircd --description 'create dir and move into'
	mkdir -p $argv
    cd $argv
end

function pubkey --description "copy public ssh key"
    cat ~/.ssh/id_rsa.pub | xsel --clipboard --input; and echo '=> Public key copied to pasteboard.'
    xsel --clipboard --output
end

function gitworklog --description "Show work done on current git repo today"
  if test (count $argv) = 1
    git log --since="$argv[1] hours ago" --pretty="#%h - %s" | xsel --clipboard --input
    git log --since="$argv[1] hours ago" --pretty="#%h - %s"
  else
    git log --since="12 hours ago" --pretty="#%h - %s" | xsel --clipboard --input
    git log --since="12 hours ago" --pretty="#%h - %s"
  end
end

function abspath -d 'Calculates the absolute path for the given path'
    set -l cwd ''
    pushd $argv[1]; and set cwd (pwd); and popd
    echo $cwd
end