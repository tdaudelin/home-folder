# set 'nvm current' correctly when opening a shell in a dir containing .nvmrc
if [ -f "./.nvmrc" ] && nvm &> /dev/null; then
  nvm use --silent
fi