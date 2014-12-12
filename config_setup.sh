url() {
  echo "https://raw.githubusercontent.com/liamy/rig_setup/master/$1"
}

install() {
  curl -s $(url $1) > ~/$1
}

backup() {
  cp ~/$1 ~/$1~
}

safeInstall() {
  echo "Installing $1..."
  if [ -f ~/$1 ]; then
    echo "File ~/$1 exists. Backing it up to ~/$1~"
    backup $1
  fi
  install $1
  return 0;
}

safeInstall '.vimrc'

echo 'Installing bundles...'
vim +PluginInstall +qa
echo
