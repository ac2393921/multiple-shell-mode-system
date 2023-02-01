###[ Starship ]#################################################################
starship init fish | source

###[ Alias ]#################################################################
if [ -d $ALIASES_FISH_DIR ] && [ -r $ALIASES_FISH_DIR ] && [ -x $ALIASES_FISH_DIR ];
    for alias in {$ALIASES_FISH_DIR}/**/*.fish;
      [ -r $alias ] && source $alias
    end
end

###[ Path ]#################################################################
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH  $PYENV_ROOT/bin $PATH
# set -x PATH CPLUS_INCLUDE_PATH $CPLUS_INCLUDE_PATH:home/apg4b/include/
# set -gX PATH /opt/homebrew/opt/openjdk@11/bin:$PATH
set PATH /opt/homebrew/opt/openjdk@11/bin:$PATH
pyenv init - | source

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

# Atcoder
function atcoder
  if [ -e stdin.txt ];
    rm stdin.txt
  end

  touch stdin.txt
  nvim $argv -o stdin.txt -c "11 wincmd +"
end
