# like alias but not equal
abbr -a gco git checkout

# listing
abbr -a dir dir --color=auto
abbr -a vdir vidr --color=auto
abbr -a ll ls -l
abbr -a la ls -A
abbr -a l ls -CF
abbr -a lla ls -la

# shortcuts
abbr -a v vi
abbr -a p pico
abbr -a g git
abbr -a tail tail -n 50
abbr -a df df -Th
abbr -a tree tree -Csuh
abbr -a histg 'history | grep'
abbr -a wget wget -c

#alias py='python'

# Archive
abbr -a mktar tar cvf
abbr -a mktargz tar cvzf
abbr -a mktarbz tar cvjf
abbr -a mkzip zip -r
abbr -a untar tar xvf
abbr -a untargz tar xvzf
abbr -a untarbz tar xvjf