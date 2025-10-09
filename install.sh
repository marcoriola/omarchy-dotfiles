mkdir ~/dotfiles-backup
cp -r ~/.config/* ~/dotfiles-backup
cp -rf .config/* ~/.config/
mv ~/.zshrc ~/.zshrc-backup
cp -f .zshrc ~/.zshrc
echo "Installed successfully. Backed up previous dotfiles in ~/dotfiles-backup"
