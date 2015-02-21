base_url() {
  # echos string prefixed with base url
  echo "https://raw.githubusercontent.com/liamy/rig_setup/master/$1"
}

installHidden() {
  # downloads file from rig_setup repo
  curl $(base_url $1) > ~/.$1
}

install() {
  # downloads file from rig_setup repo
  curl $(base_url $1) > ~/$1
}

backupHidden() {
  # stores previous settings in a temp file
  cp ~/.$1 ~/.$1~
}

backup() {
  # stores previous settings in a temp file
  cp ~/$1 ~/$1~
}

backupInstallHidden() {
  echo "Installing $1..."
  if [ -f ~/.$1 ]; then
    echo "File ~/.$1 exists. Backing it up to ~/.$1~"
    backup $1
  fi
  install $1
  return 0;
}

backupInstallHidden 'vimrc'

echo 'Installing bundles...'
vim +PluginInstall +qa
echo
