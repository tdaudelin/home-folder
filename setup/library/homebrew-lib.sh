homebrew_setup() {
    if [ -d ~/usr/local/Homebrew ]; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    fi
    brew update && brew upgrade

    # Install GNU core utilities (those that come with OS X are outdated).
    # Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
    brew install coreutils
    sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

    brew install bash
    brew install bash-completion2

    brew install gpg

    brew install wget

    # # We installed the new shell, now we have to activate it
    # echo "Adding the newly installed shell to the list of allowed shells"
    # # Prompts for password
    # sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
    # # Change to the new shell, prompts for password
    # chsh -s /usr/local/bin/bash

    # Install `wget` with IRI support.
    brew install wget --with-iri

}