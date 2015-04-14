# GenPasswd function
genpasswd()
        {
                local l=$1
        [ "$l" == "" ] && l=16
        tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}

# Perform mkdir and cd in a single command
mkdircd ()
        { mkdir -p "$@" && eval cd "\"\$$#\"";
}

# Tar archive listing without untar
tarls()
	{ local file=${1}
  tar -tvf ${file} | awk '{ print $1"\t"$3"\t"$6 }'
}

# Process grep function
psgrep()
        { ps aux | grep $1 | grep -v grep
}

# Process KILL function
pskill()
        {
                local PID
        PID=$(ps ax | grep $1 | grep -v grep | awk '{print $1}')
        echo -n "Killing $1 (process id $PID) ..."
        kill -9 $PID
        echo "Smiley Man! Is DEAD"
}

# My process
myps()
        { ps $@ -u $USER -o pid,%cpu,%mem,bsdtime,command ;
}

# Sanitize permission of a directory (and all files in)
sanitize()
        { chmod -R u=rwX,g=rX,o= "$@" ;
}

# DiskFree alternative way
mydf()
        { for fs ; do
  if [ ! -d $fs ]
        then
  echo -e $fs" :No such file or directory" ; continue
  fi
        local info=( $(command df -P $fs | awk 'END{ print $2,$3,$5 }') )
        local free=( $(command df -Pkh $fs | awk 'END{ print $4 }') )
        local nbstars=$(( 20 * ${info[1]} / ${info[0]} ))
        local out="["
        for ((j=0;j<20;j++)); do
          if [ ${j} -lt ${nbstars} ]; then
            out=$out"*"
          else
            out=$out"-"
          fi
        done
        out=${info[2]}" "$out"] ("$free" free on "$fs") "
        echo -e $out
  done
}

# WLAN IP
#wlanip()
#{
#  MYIP=$(/sbin/ifconfig wlan0 | awk '/inet/ { print $2 } ' |
#    sed -e s/addr://)
#  echo ${MYIP:-"Not Connected! Try different interfaces"}
#}

# Ethernet IP
#ethip()
#{
#  MYIP=$(/sbin/ifconfig wlan0 | awk '/inet/ { print $2 } ' |
#    sed -e s/addr://)
#  echo ${MYIP:-"Not Connected! Try different interfaces"}
#}

# Remove space from file and dir names, replace it with underscore
rmspaces()
{
        echo "Replacing all spaces from dir/file names with _ in 3 seconds..."
        sleep 3
   ls | while read -r FILE
        do
   mv -v "$FILE" `echo $FILE | tr ' ' '_' | tr -d '[{}(),\!]' | tr -d "\'" | tr '[A-Z]' '[a-z]' | sed 's/_-_/_/g'`
        done
}

# Get md5sums of all files in current dir
md5sumdir()
{
        find * -type f -exec md5sum {} \; &> md5sum.txt && echo "Success: md5sum.txt written" || echo "Error: md5sum.txt not written"
}

# Fastly encrypt something with blowfish blow encrypt fish decrypt
blow()
{
        [ -z "$1" ] && echo 'Encrypt: blow FILE' && return 1
    openssl bf-cbc -salt -in "$1" -out "$1.bf"
}

fish()
{
    openssl bf-cbc -d -salt -in "$1" -out "$2"
}

# Take a Screenshot from shell
screenshot()
{
        if ! which scrot &> /dev/null;
                then
        echo "${FUNCNAME[0]}(): You must install 'scrot' first."
                return 1
        fi

    local delay=1
    local quality=90

    [ "$1" ] && delay="$1"
    [ "$2" ] && quality="$2"

    scrot -q $quality -d $delay "$HOME/screeshot_`date +'%F'`.jpg"
}

# Color manpages
man() {
        env \
                LESS_TERMCAP_mb=$(printf "\e[1;31m") \
                LESS_TERMCAP_md=$(printf "\e[1;31m") \
                LESS_TERMCAP_me=$(printf "\e[0m") \
                LESS_TERMCAP_se=$(printf "\e[0m") \
                LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
                LESS_TERMCAP_ue=$(printf "\e[0m") \
                LESS_TERMCAP_us=$(printf "\e[1;32m") \
                        man "$@"
}
