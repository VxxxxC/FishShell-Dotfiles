# Greeting prologue
echo "Welcome to "(uname -a | awk '{print $1 " " $2 " " $3 " " $4 " " $12}')
uptime

# nvm
. ~/.config/fish/conf.d/nvm.fish
nvm use 16

# Change prompt
functions -c fish_prompt _old_fish_prompt
function fish_prompt
  if set -q VIRTUAL_ENV
    echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
  end
  _old_fish_prompt
end

#This is oh-my-posh theme init when starting up fish shell
eval "$(oh-my-posh init fish --config $(brew --prefix oh-my-posh)/themes/kushal.omp.json)"

# below is fish-exa shortcut command 
if type -q ll
    alias ll "lli"
    alias lla "llai"
end
if type -q l
    alias l "li"
    alias la "lai"
    alias l-tree "lt"
end

