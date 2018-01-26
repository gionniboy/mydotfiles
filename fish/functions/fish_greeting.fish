function fish_greeting --description 'Print the shell greeting'
  set -l c_n (set_color normal)
  set -l c_r (set_color red)
  
  uname -nmsr
  uptime
  printf "%sIt is %s%s%s (%s) on %s%s%s \n" $c_n $c_r (date +%T) $c_n (date +%Z) $c_r (date +%F) $c_n

  fortune -s
end
