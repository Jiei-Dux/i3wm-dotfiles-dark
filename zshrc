if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export EDITOR=vim
alias crontab="export VISUAL=vim; crontab"
alias icat="kitty +kitten icat"

ZSH_THEME="powerlevel10k/powerlevel10k"
ENABLE_CORRECTION="true"

plugins=(
	archlinux
	git
	sudo
	)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
