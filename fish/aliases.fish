# super alias [imported from bash and converted when needed]
alias reload='source ~/.config/fish/config.fish'

# typos
alias gti=git

alias hosts='sudo $EDITOR /etc/hosts'
alias push="git push"
alias mostused='cut -f1 -d" " ~/.bash_history| sort | uniq -c | sort -nr | head -n 10'
alias dirtypage='grep -C 1 dirty /proc/vmstat'
alias ducks='du -chs * | sort -rn | head -n 11'
alias totalconn="netstat -nt | awk '/^tcp/ {++state[$NF]} END {for(key in state) print key,"\t",state[key]}'"

# open pastebin alternatives
alias sprungeout="curl -F 'sprunge=<-' http://sprunge.us"
alias aringaout="curl -F 'aringa=<-' http://arin.ga"