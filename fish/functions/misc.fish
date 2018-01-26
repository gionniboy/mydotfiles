# Navigation
function ..  ; cd .. ; end
function cd2 ; cd ../.. ; end
function cd3 ; cd ../../.. ; end
function cd4 ; cd ../../../.. ; end
function cd5 ; cd ../../../../.. ; end
function cd6 ; cd ../../../../../.. ; end
function cd7 ; cd ../../../../../../.. ; end
function cd8 ; cd ../../../../../../../.. ; end

function mkdircd -d 'create dir and move into'
	mkdir -p $argv
  cd $argv
end

# Utilities
function grep ; command grep --color=auto $argv ; end
function fgrep ; command fgrep --color=auto $argv ; end
function egrep ; command egrep --color=auto $argv ; end

function abspath -d 'Calculates the absolute path for the given path'
  set -l cwd ''
  pushd $argv[1]; and set cwd (pwd); and popd
  echo $cwd
end

function filesize --description "Human readable size of the given file/dir"
  ls -gh $argv[1] | awk '{ print $4 }'
  # du -chd 1 $argv[1] | grep total | cut -f 1
  #
  # BSD tools don't have long options --total --human-readable --max-depth=1
  #
  # du doesn't give the size of the file, it gives an indication of how much
  # space the file uses, which is subtly different (usually the size reported by
  # du is the size of the file rounded up to the nearest number of blocks, where
  # a block is typically 512B or 1kB or 4kB)
end

function gitworklog -d "Show work done on current git repo today"
  if test (count $argv) = 1
    git log --since="$argv[1] hours ago" --pretty="#%h - %s" | xsel --clipboard --input
    git log --since="$argv[1] hours ago" --pretty="#%h - %s"
  else
    git log --since="12 hours ago" --pretty="#%h - %s" | xsel --clipboard --input
    git log --since="12 hours ago" --pretty="#%h - %s"
  end
end

function k9 -d 'kill -9 the short way'
  kill -9 $argv
end

function loop -d "Usage: loop TIMES COMMAND"
  for i in (seq 1 $argv[1])
    eval $argv[2..-1]
  end
end

function permcode --description="File permissions in human readable and octal form"
  command -v stat >/dev/null; and begin
    stat --format="%A %a %n" $argv
  end; or echo "Install GNU stat with your manager"
end

function pubkey -d "copy public ssh key"
  cat ~/.ssh/id_rsa.pub | xsel --clipboard --input; and echo '=> Public key copied to pasteboard.'
  xsel --clipboard --output
end

function removeduplines -d "Removes duplicate lines from a file.
                         Usage: removeduplines infile outfile"
  # Similar to 'sort <file> | uniq' but faster and can handle larger input.
  # Also preserves original order (sort | uniq doesn't)."
  awk '!x[$0]++' $argv[1] > $argv[2]
end

