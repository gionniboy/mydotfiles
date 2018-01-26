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

