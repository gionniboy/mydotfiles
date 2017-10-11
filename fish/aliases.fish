# super alias [imported from bash and converted when needed]
alias reload='source ~/.config/fish/config.fish'

# Navigation
function ..    ; cd .. ; end
function cd2   ; cd ../.. ; end
function cd3  ; cd ../../.. ; end
function cd4 ; cd ../../../.. ; end
function cd5 ; cd ../../../../.. ; end
function cd6 ; cd ../../../../../.. ; end
function cd7 ; cd ../../../../../../.. ; end
function cd8 ; cd ../../../../../../../.. ; end


alias ccat='pygmentize -O style=monokai -f console256 -g'

# Utilities
function grep ; command grep --color=auto $argv ; end
function fgrep ; command fgrep --color=auto $argv ; end
function egrep ; command egrep --color=auto $argv ; end

# typos
alias gti=git

alias hosts='sudo $EDITOR /etc/hosts'
alias push="git push"
alias mostused='cut -f1 -d" " ~/.bash_history| sort | uniq -c | sort -nr | head -n 10'
alias dirtypage='grep -C 1 dirty /proc/vmstat'
alias ducks='du -chs * | sort -rn | head -n 11'

# Networking. IP address, dig, DNS
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias dig="dig +nocmd any +multiline +noall +answer"
alias ifaceup='ip -o link | grep UP | cut -f2 -d: | grep -v lo'
alias lsock='lsof -i -P'
alias openports='netstat -nape --inet'
alias totalconn="netstat -nt | awk '/^tcp/ {++state[$NF]} END {for(key in state) print key,"\t",state[key]}'"
# netstat -nt | awk '/^tcp/ {++state[$NF]} END {for(key in state) print key,"\t",state[key]}'

# Process
alias pstimes='ps -eo lstart,comm,user --sort lstart'
alias topcpu="ps -e -o pcpu,nice,state,cputime,args --sort pcpu | sed '/^ 0.0 /d' | pr -TW$COLUMNS"
alias topten="ps -eo pcpu,pid,state,nice,user,args | sort -k1 -r | head -n10"
alias topmemrss="ps -e -orss=,args= | sort -b -k1,1n | pr -TW$COLUMNS"

# open api pastebin alternatives
alias sprungeout="curl -F 'sprunge=<-' http://sprunge.us"
alias aringaout="curl -F 'aringa=<-' http://arin.ga"

