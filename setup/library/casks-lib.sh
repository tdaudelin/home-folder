function install_emacs() {
  print_info "Verifying emacs..."
  if command_exists emacs; then
    print_info "emacs already installed"
  else
    print_warn "emacs not found. Installing..."
    brew tap railwaycat/emacsmacport
    brew install --cask emacs-mac emacs-mac-spacemacs-icon
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
  fi
}

function casks_setup() {
  print_header "Casks"
  install_emacs
  brew cask install docker \
      google-chrome \
      jetbrains-toolbox \
      visual-studio-code
}