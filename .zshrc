if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export VISUAL="vim"
export EDITOR="$VISUAL"


#########
# ALIAS #
#########
alias v="vim"
alias updmrrs='sudo reflector --verbose --latest 20 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'
alias yt="$HOME/.Scripts/YoutubeDL.sh"
alias android-connect="jmtpfs /home/jiei/mnt"
alias archsh="tput smcup && /home/$USER/.Scripts/Post-Archlinux-Installation-Script.sh"

ZSH_THEME="powerlevel10k/powerlevel10k"
ENABLE_CORRECTION="false"

plugins=(
	archlinux
	git
	sudo
	)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
