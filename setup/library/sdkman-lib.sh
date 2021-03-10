sdkman_setup() {
    
    # Check to see if sdkman is already installed

    echo "Installing sdkman..."
    curl -s get.sdkman.io | bash
    source "$HOME/.sdkman/bin/sdkman-init.sh"
    sdk install groovy
    sdk install maven
    sdk install gradle
    sdk install groovyserv
    sdk install ant
    sdk install java 11.0.2-open
    java -version
}