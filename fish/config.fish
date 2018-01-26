for p in /opt/bin /opt/local/bin /usr/bin /usr/local/bin /sbin /usr/local/sbin /usr/sbin
	if test -d $p
		set -gx PATH $p $PATH
	end
end

set -gx EDITOR "vi"
set -gx LANG en_US.utf8
set -gx GOPATH ~/go
set -gx PATH ~/bin ~/.local/bin $PATH


# custom: commonly used locations
set -U firegardenco "$HOME/FIREGARDEN-CO"
set -U gitspace "$HOME/GIT"
set -U pyspace "$HOME/python"
set -U gospace "$HOME/go"
set -U phpspace "$HOME/php"
set -U kvmpool "$HOME/KVMPOOL"
set -U vagrantpool "$HOME/VAGRANT"

# load custom files
source ~/.config/fish/aliases.fish
source ~/.config/fish/abbreviations.fish

for val in ~/.config/fish/functions/*.fish
  source $val
end


