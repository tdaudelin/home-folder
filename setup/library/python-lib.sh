function python_setup() {
  print_header "Python"
  print_info "Installing python and pyenv"
  brew install python pyenv
  print_info "Upgrading python tooling"
  pip install --upgrade setuptools
  pip install --upgrade pip
}