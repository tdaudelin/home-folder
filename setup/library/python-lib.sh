function python_setup() {
  print_header "Python"

  local readonly os="$(which_os)"
  print_info "Installing python and pyenv"
  if [[ os == "mac" ]]; then
    brew install python pyenv
    print_info "Upgrading python tooling"
    pip install --upgrade setuptools
    pip install --upgrade pip
  else
    print_warn "Python installation on $os not yet supported"
    # sudo apt-get install software-properties-common -y
    # sudo add-apt-repository ppa:deadsnakes/ppa -y
    # sudo apt-get update
    # sudo apt-get install python3.9 python3.9-distutils -y
    # sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.9 10
    
  fi
}