# TODO: refactor to use brew: https://medium.com/@katopz/how-to-upgrade-git-ff00ea12be18

# Verify Git is installed
function verify_git () {
    if ! command -v git >/dev/null; then
        echo -e "- ERROR: git is required for publishing\nhttps://git-scm.com/"
        exit 1
    else
        local readonly gitPrefix="git version "
        local readonly gitVersion=$(git --version)
        local readonly gitVersionMajor=$(echo "${gitVersion#$gitPrefix}" | awk -F \. {'print $1'})

        if [ "$gitVersionMajor" == "1" ]
            then
            echo -e "- ERROR: git@^2 is required for publishing\nhttps://git-scm.com/"
            exit 1
        else
            echo "+ Git is installed at the minimum required version: $(git --version)"
        fi
    fi
}

# Setup git
function git_setup() {
    
echo "+ Checking git"
    if ! command -v git >/dev/null; then
        echo -e "- ERROR: git is required for publishing\nhttps://git-scm.com/"
        exit 1
    else
        local readonly gitPrefix="git version "
        local readonly gitVersion=$(git --version)
        local readonly gitVersionMajor=$(echo "${gitVersion#$gitPrefix}" | awk -F \. {'print $1'})

        if [ "$gitVersionMajor" == "1" ]
            then
            echo -e "- ERROR: git@^2 is required for publishing\nhttps://git-scm.com/"
            exit 1
        else
            echo "+ Git is installed at the minimum required version: $(git --version)"
        fi
    fi

    git config --global user.name "$1"
    git config --global user.email "$2"
    
    git config --global push.default current

}