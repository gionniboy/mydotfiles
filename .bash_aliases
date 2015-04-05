alias reload='source ~/.bashrc'

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias lla='ls -la'

# move fastly
alias ..='cd ..'
alias cd2="cd ../.."
alias cd3="cd ../../.."
alias cd4="cd ../../../.."
alias cd5="cd ../../../../.."
alias cd6='cd ../../../../../..'

alias p='pico'
alias tail='tail -n 50'
alias df='df -Th'
alias tree='tree -Csuh'
alias histg='history | grep'
alias k9='kill -9'
alias ifconfig='/sbin/ifconfig'

alias pstimes='ps -eo lstart,comm,user --sort lstart'
alias lsofnames="lsof | awk '!/^\$/ && /\// { print $9 }' | sort -u"
alias topcpu="ps -e -o pcpu,nice,state,cputime,args --sort pcpu | sed '/^ 0.0 /d' | pr -TW$COLUMNS"
alias topten="ps -eo pcpu,pid,state,nice,user,args | sort -k1 -r | head -n10"
alias topmemrss="ps -e -orss=,args= | sort -b -k1,1n | pr -TW$COLUMNS"
alias meminfo="echo -e '/proc/meminfo:\n'; grep --color=auto '^[Mem|Swap]*[Free|Total]*:' /proc/meminfo && echo -e '\nfree -m:'; free -m"
alias todaylog="sudo ls -ld --sort=time `sudo find /var/log -type f -daystart -ctime 0 | sed -r 's/^.*\.([0-9]+|old|gz)$//g'`"
alias bootmsg="sudo sed 's/\^\[/\o33/g;s/\[1G\[/\[27G\[/' /var/log/boot"
alias bigfiles="sudo du -h -d 5 / | grep '[0-9]G'"
alias mostused='cut -f1 -d" " ~/.bash_history| sort | uniq -c | sort -nr | head -n 10'
alias openports='sudo netstat -nape --inet'
alias dirtypage='grep -C 1 dirty /proc/vmstat'
alias ducks='du -chs * | sort -rn | head -n 11'
alias totalconn="netstat -nt | awk '/^tcp/ {++state[$NF]} END {for(key in state) print key,"\t",state[key]}'"

alias myip='curl http://myexternalip.com/raw'

# Bash pastebin
alias sprungeout="curl -F 'sprunge=<-' http://sprunge.us"
alias aringaout="curl -F 'aringa=<-' arin.ga"

# Archive
alias mktar='tar cvf'
alias mktargz='tar cvzf'
alias mktarbz='tar cvjf'
alias mkzip='zip -r'
alias untar='tar xvf'
alias untargz='tar xvzf'
alias untarbz='tar xvjf'

# System
alias systemupdate='sudo apt-get update && apt-ge upgrade -y'
alias aptsearch='sudo apt-cache search'
alias aptshow='sudo apt-cache show'
 
# git
alias ga='git add'
alias gaa='git add -A'
alias gstat='git status'
alias glo='git log'
alias glog='git log --graph'
alias gcm='git commit -m'
alias gpu='git push'
alias gcho='git checkout'
alias gdif='git diff'
alias gpul='git pull'
alias gls='git ls-files'
alias gclo='git clone'
alias gdiff='git diff'
alias gbr='git branch'

# webdev
alias htmllines='wc -l `find . -iname "*.html"` | sort -n'
alias phplines='wc -l `find . -iname "*.php"` | sort -n'
alias jslines='wc -l `find . -iname "*.js"` | sort -n'
alias sasslines='wc -l `find . -iname "*.scss"` | sort -n'
alias csslines='wc -l `find . -iname "*.css"` | sort -n'
