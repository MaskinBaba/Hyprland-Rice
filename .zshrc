
path+=('/home/maskin/.local/bin')
export PATH

# %m%#
# PROMPT="[%n@%m] %1~ "
PROMPT="[%n@%m]%(?..%F{9}✖)%f%F{105}%~%f %#"

alias ls="ls --color=auto"
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

fcd() {
	cd "$(find -type d | fzf)"
}
open() {
	xdg-open "$(find -type f | fzf)"
}

autoload -U colors && colors
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%snq
zstyle :compinstall filename '/home/maskin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
