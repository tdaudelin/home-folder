source ~/.bashrc

# export EDITOR by OS

if [[ "$OSTYPE" == "darwin"* ]]; then
    # https://www.emacswiki.org/emacs/EmacsForMacOS#toc15
    # brew cask install emacs
    export EDITOR="/Applications/Emacs.app/Contents/MacOS/Emacs"
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/tdaudelin/.sdkman"
[[ -s "/Users/tdaudelin/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/tdaudelin/.sdkman/bin/sdkman-init.sh"
