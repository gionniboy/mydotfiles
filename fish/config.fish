for p in /opt/bin /opt/local/bin /usr/bin /usr/local/bin
	if test -d $p
		set -x PATH $p $PATH
	end
end


set -gx EDITOR "vim"
set -gx LANG en_US.utf8
set -gx GOPATH ~/go
set -gx PATH ~/bin ~/.local/bin ~/.node_modules_global/bin $PATH
alias ccat="pygmentize -O style=monokai -f console256 -g"

source ~/.config/fish/aliases.fish
source ~/.config/fish/functions.fish