###[ Starship ]#################################################################
eval (starship init elvish)

###[ Modules ]#################################################################
use epm
epm:install github.com/zzamboni/elvish-modules
use github.com/zzamboni/elvish-modules/alias

alias:bash-alias ls=exa
alias:new se source elvish
alias:bash-alias z=zsh
alias:bash-alias b=bash
alias:bash-alias f=fish
alias:bash-alias n=nu
alias:bash-alias e=elvish
alias:bash-alias x=xonsh