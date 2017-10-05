# super alias [imported from bash and converted when needed]
alias reload='source ~/.config/fish/config.fish'

# move quickly [TODO: write better, with a cycle maybe]
alias ..='cd ..'
alias cd2="cd ../.."
alias cd3="cd ../../.."
alias cd4="cd ../../../.."
alias cd5="cd ../../../../.."
alias cd6='cd ../../../../../..'
alias cd7='cd ../../../../../../..'
alias cd8='cd ../../../../../../../..'

# listing
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias lla='ls -la'

# shortcuts
alias v='vim'
alias p='pico'
alias g='git'
alias tail='tail -n 50'
alias df='df -Th'
alias tree='tree -Csuh'
alias histg='history | grep'
alias k9='kill -9'
alias wget='wget -c'
alias myip='curl http://myexternalip.com/raw'
#alias py='python'
alias ccat='pygmentize -O style=monokai -f console256 -g'

# Utilities
function grep ; command grep --color=auto $argv ; end
function fgrep ; command fgrep --color=auto $argv ; end
function egrep ; command egrep --color=auto $argv ; end

# typos
alias gti=git

alias hosts='sudo $EDITOR /etc/hosts'
alias push="git push"

# Networking. IP address, dig, DNS
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias dig="dig +nocmd any +multiline +noall +answer"

alias topmemhuman="ps -eo size,pid,user,command --sort -size |
    awk '{ hr=$1/1024 ; printf("%13.2f Mb ",hr) } { for ( x=4 ; x<=NF ; x++ ) { printf("%s ",$x) } print "" }' "

ps -eo size,pid,user,command --sort --size | awk '{ hr=$1/1024 ; printf("%13.6f Mb ",hr) } { for ( x=4 ; x<=NF ; x++ ) { printf("%s ",$x) } print "" }'

topmemhuman="ps -eo size,pid,user,command | sort -rn | head -10 | awk '{ hr[1024**2]="GB"; hr[1024]="MB"; for (x=1024**3; x>=1024; x/=1024) { if ($1>=x) { printf ("%-6.2f %s ", $1/x, hr[x]); break } } } { printf ("%-6s %-10s ", $2, $3) } { for ( x=4 ; x<=NF ; x++ ) { printf ("%s ",$x) } print ("\n") }'"