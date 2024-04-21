
path+=('/home/maskin/.local/bin')
export PATH

# %m%#
# PROMPT="[%n@%m] %1~ "
PROMPT="%F{4}[%f%n@%m%F{4}]%f%(?..%F{9}✖ )%f%F{1}%~%f %#"
(cat ~/.cache/wal/sequences &)

alias ls="ls --color=auto"
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias s=systemctl

fcd() {
	cd "$(find -type d | fzf)"
}
open() {
	xdg-open "$(find -type f | fzf)"
}

testingshit() {
	komand="$(cat ~/.histfile | fzf)"
	zsh -c "$komand"
}

footssh() {
	if [[ $TERM = "foot" ]]; then
		TERM=linux ssh $@
	else
		ssh $@
	fi
}

alias ssh=footssh

autoload -U colors && colors
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


EDITOR=vim

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
