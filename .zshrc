# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch notify
unsetopt autocd beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/marware/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Manual configuration
eval "$(~/.local/bin/oh-my-posh init zsh)"

# TODO: add aliases and plugins

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
