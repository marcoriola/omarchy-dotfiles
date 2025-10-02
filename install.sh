mkdir ~/dotfiles-backup
cp -r ~/.config/* ~/dotfiles-backup
cp -rf .config/* ~/.config/
echo "Installed successfully. Backed up previous dotfiles in ~/dotfiles-backup"
