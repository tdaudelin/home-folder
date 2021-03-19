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

function install_jetbrains() {
  print_info "Installing Jetbrains Toolbox..."
  brew install --cask jetbrains-toolbox
}

function install_vscode() {
  print_info "Installing VSCode..."
  brew install --cask visual-studio-code
}

function ide_setup() {
  print_header "IDEs"
  install_emacs
  install_jetbrains
  install_vscode
}