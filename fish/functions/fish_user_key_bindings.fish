# enable bash last command !!
function bind_bang
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

# enable bash last arg !$
function bind_dollar
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end

# enable keybindings                                                                                                                                                                                               
function fish_user_key_bindings
  bind "&&" 'commandline -i "; and"'                                                                                                                                                            
  bind "||" 'commandline -i "; or"'
  bind ! bind_bang
  bind '$' bind_dollar
end
