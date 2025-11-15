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

if [ -f /home/marware/.config/zsh/aliases ]; then
    source /home/marware/.config/zsh/aliases
else
    print "404: /home/marware/.config/zsh/aliases not found."
fi

# Add .local/bin path 
export PATH="/home/marware/.local/bin:$PATH"

# Init plugins
source /home/marware/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/marware/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/marware/.config/zsh/plugins/sudo/sudo.plugin.zsh

# Keep at the end of the file
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
