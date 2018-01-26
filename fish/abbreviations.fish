# auto expanded alias

# Archive
# TODO: create a dynamic function for archiving like functions/extract.fish
abbr -a mktar tar cvf
abbr -a mktargz tar cvzf
abbr -a mktarbz tar cvjf
abbr -a mkzip zip -r
abbr -a untar tar xvf
abbr -a untargz tar xvzf
abbr -a untarbz tar xvjf

# git
abbr -a gco git checkout

# listing
abbr -a dir dir --color=auto
abbr -a vdir vidr --color=auto
abbr -a ll ls -l
abbr -a la ls -A
abbr -a l ls -CF
abbr -a lla ls -la

# Process
abbr -a pstimes 'ps -eo lstart,comm,user --sort lstart'
abbr -a topcpu "ps -e -o pcpu,nice,state,cputime,args --sort pcpu | sed '/^ 0.0 /d' | pr -TW$COLUMNS"
abbr -a topten "ps -eo pcpu,pid,state,nice,user,args | sort -k1 -r | head -n10"
abbr -a topmemrss "ps -e -orss=,args= | sort -b -k1,1n | pr -TW$COLUMNS"

# Networking. IP address, dig, DNS
abbr -a myip 'dig +short myip.opendns.com @resolver1.opendns.com'
abbr -a digall 'dig +nocmd any +multiline +noall +answer'
abbr -a ifaceup 'ip -o link | grep UP | cut -f2 -d: | grep -v lo'
abbr -a lsock 'lsof -i -P'
abbr -a openports 'netstat -nape --inet'

# shortcuts
abbr -a v vi
abbr -a g git
abbr -a tail tail -n 50
abbr -a df df -Th
abbr -a tree tree -Csuh
abbr -a histg 'history | grep'
abbr -a wget wget -c
abbr -a pygcat 'pygmentize -O style=monokai -f console256 -g'
