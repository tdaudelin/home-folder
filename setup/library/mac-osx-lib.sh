function verify_make() {
    echo "+ Verifying make"
    if command -v make >/dev/null
        then
        echo "+ Make is installed: $(make --version | grep GNU)"
    else
        echo "- Make is required, install Xcode tools or your distribution's build tool package"
        exit 1
    fi
}

# Set Finder preferences
function configure_finder() {
    echo 'Showing hidden files'
    # Set desktop folder as default
    defaults write com.apple.finder NewWindowTarget -string "PfDe"
    # Always show hidden files
    defaults write com.apple.finder AppleShowAllFiles TRUE
    killall Finder
}

function mac_osx_setup() {
    # echo "------------------------------"
    # echo "Updating OSX.  If this requires a restart, run the script again."

    # Install all available updates
    # sudo softwareupdate -ia --verbose

    # Install only recommended available updates
    # sudo softwareupdate -ir --verbose

    echo "------------------------------"
    echo "Installing Xcode Command Line Tools."
    # Install Xcode command line tools
    if command -v xcode-select >/dev/null
        then
        echo "+ Xcode is installed: $(xcode-select --version)"
    else
        echo "- Xcode is not installed."
        xcode-select --install
    fi

    verify_make

    configure_finder

}