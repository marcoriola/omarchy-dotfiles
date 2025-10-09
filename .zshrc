# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/marware/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

if [ -f ~/.config/zsh/aliases ]; then
    source ~/.config/zsh/aliases
else
    print "404: ~/.config/zsh/aliases not found."
fi

# Add .local/bin path 
export PATH="$HOME/.local/bin:$PATH"

# Init plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/sudo/sudo.plugin.zsh

# Keep at the end of the file
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
