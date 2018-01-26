function permcode --description "File permissions in human readable and octal form"
  command -v stat >/dev/null; and begin
    stat --format="%A %a %n" $argv
  end; or echo "Install GNU stat with your manager"
end