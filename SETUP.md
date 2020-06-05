## Git and Home Dir

Set up SSH access to personal github account

```
git config --global user.name "Travis Daudelin"
git config --global user.email "{work email}"
git config --global pull.rebase true
```

```
cd ~/
git init
git remote add origin git@github.com:tdaudelin/home-folder.git
git pull origin master --allow-unrelated-histories
```

## Editors

https://www.emacswiki.org/emacs/EmacsForMacOS
https://www.spacemacs.org/
https://www.jetbrains.com/toolbox-app/?fromMenu
https://code.visualstudio.com/
* Plugins
  * emmanuelbeziat.vscode-great-icons
  * lfs.vscode-emacs-friendly
  * eamodio.gitlens
  * msjsdiag.debugger-for-chrome
* https://code.visualstudio.com/docs/setup/mac


## SDKs

https://github.com/nvm-sh/nvm
https://sdkman.io/

### Python 3
```
sudo apt install python3 python3-pip ipython3
sudo -H pip3 install -U pipenv
```

## Misc

https://github.com/rhyeal/aws-rotate-iam-keys
https://cli.vuejs.org/
https://sensible-side-buttons.archagon.net/

Avatar saved in MM Google Drive
