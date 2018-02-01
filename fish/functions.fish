# Navigation
function ..  ; cd .. ; end
function cd2 ; cd ../.. ; end
function cd3 ; cd ../../.. ; end
function cd4 ; cd ../../../.. ; end
function cd5 ; cd ../../../../.. ; end
function cd6 ; cd ../../../../../.. ; end
function cd7 ; cd ../../../../../../.. ; end
function cd8 ; cd ../../../../../../../.. ; end

# Utilities
function grep ; command grep --color=auto $argv ; end
function fgrep ; command fgrep --color=auto $argv ; end
function egrep ; command egrep --color=auto $argv ; end

function k9 -d 'kill -9 the short way'
  kill -9 $argv
end

function removeduplines -d "Removes duplicate lines from a file.
                         Usage: removeduplines infile outfile"
  # Similar to 'sort <file> | uniq' but faster and can handle larger input.
  # Also preserves original order (sort | uniq doesn't)."
  awk '!x[$0]++' $argv[1] > $argv[2]
end

function scrotify -d "take a custom screenshot - set quality and delay"
  if test -z "$argv[2]"
    printf "scrotify -q quality -d delay"
  else
    scrot -q "$argv[1]" -d $argv[2] "$HOME/screeshot_`date +'%F'`.jpg"
  end
end

function memcpu -d "top ten eating process"
  set -l c_n (set_color normal)
  set -l c_r (set_color red)

	printf '%s \n' $c_r "********** Top 10 cpu eating process **********" $c_n; ps auxf | sort -nr -k 3 | head -10;
	printf '%s \n' $c_r "********** Top 10 memory eating process **********" $c_n; ps auxf | sort -nr -k 4 | head -10;
end

# Searching with find, easily
function ff -d "find a file under the current directory"
  find . -name "$argv[1]"
end

function ffstart -d "find a file start with $argv"
  find . -name "$argv[1]"'*'
end

function ffend -d "find a file end with $argv"
   find . -name '*'"$argv[1]"
end

function fflarge -d "find file more big than $argv"
   find . -type f -size +{$argv[1]}c
end

# encrypt/decrypt a file with blowfish
function blowcrypt -d "encrypt a file with blowcrypt and a passphrase"
  if test -z "$argv"
    printf 'Encrypt: blowcrypt filein'
    return 1
  else
  openssl bf-cbc -salt -in "$argv[1]" -out "$argv[1].bf"
  end
end

function fishdecrypt -d "decrypt a file with blowcrypt"
  if test -z "$argv"
    printf 'Decrypt: fishdecrypt filein'
    return 1
  else
    openssl bf-cbc -d -salt -in "$argv[1]" -out "$argv[1].out"
  end
end

