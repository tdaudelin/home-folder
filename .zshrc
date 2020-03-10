# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# color prompt, https://askubuntu.com/a/1183280
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

autoload -U colors && colors
PS1="%{$fg[green]%}%n@%m%{$reset_color%}:%{$fg[yellow]%}%1~%{$reset_color%} %% "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/tdaudelin/.sdkman"
[[ -s "/Users/tdaudelin/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/tdaudelin/.sdkman/bin/sdkman-init.sh"
