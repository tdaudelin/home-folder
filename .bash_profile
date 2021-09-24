source ~/.bashrc

# export EDITOR by OS

if [[ "$OSTYPE" == "darwin"* ]]; then
    # https://www.emacswiki.org/emacs/EmacsForMacOS#toc15
    # brew cask install emacs
    export EDITOR="/Applications/Emacs.app/Contents/MacOS/Emacs"
fi

PATH=$HOME/bin:$PATH:/usr/local/sbin

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export PATH="$HOME/.poetry/bin:$PATH"
