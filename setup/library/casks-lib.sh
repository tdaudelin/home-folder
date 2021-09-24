function install_emacs() {
  print_info "Verifying emacs..."
  if command_exists emacs; then
    print_info "emacs already installed"
  else
    print_warn "emacs not found. Installing..."
    brew tap railwaycat/emacsmacport
    brew install --cask emacs-mac
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
  fi
}

function casks_setup() {
  print_header "Casks"
  install_emacs
  print_info "Installing various tools and casks..."
  brew install awscli
  brew install --cask docker \
      jetbrains-toolbox \
      postman \
      visual-studio-code
      # google-chrome # uncomment if needed, usually already installed and will error if found
}
