# export EDITOR by OS

if [[ "$OSTYPE" == "darwin"* ]]; then
    # https://www.emacswiki.org/emacs/EmacsForMacOS#toc15
    # brew cask install emacs
    export EDITOR="/Applications/Emacs.app/Contents/MacOS/Emacs"
fi
