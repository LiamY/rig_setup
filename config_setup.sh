base_url() {
  # echos string prefixed with base url
  echo "https://raw.githubusercontent.com/liamy/rig_setup/master/$1"
}

installHidden() {
  # downloads file from rig_setup repo
  curl $(base_url $1) > ~/$2.$1
}

install() {
  # downloads file from rig_setup repo
  if [ $2 ]; then
    mkdir -p $2
    echo $2
  fi
  curl $(base_url $1) > ~/$2$1
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
    backupHidden $1
  fi
  installHidden $1
  return 0;
}
# bash settings
backupInstallHidden 'bash_profile'

# git settings
backupInstallHidden 'gitconfig'

# vim configuration
backupInstallHidden 'terminal_colors' '.vim/colors/'

backupInstallHidden 'vimrc' ''
# backupInstallHidden 'vimrc'

echo 'Installing bundles...'
vim +PluginInstall +qa
echo
