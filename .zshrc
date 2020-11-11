if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [ -d "$HOME/.local/bin" ]; then
    export PATH=$HOME/.local/bin:$PATH
fi

ZSH=~/.oh-my-zsh/

source ~/powerlevel10k/powerlevel10k.zsh-theme

plugins=(git git-extras archlinux adb cp python docker sudo command-not-found)

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi


source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source $ZSH/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up			
bindkey '^[[B' history-substring-search-down

HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=5000


alias sp='sudo pacman'
alias update='sudo pacman -Syyu'
alias aup="pamac upgrade --aur"
alias grubup="sudo update-grub"
alias orphaned="sudo pacman -Rns $(pacman -Qtdq)"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias untar='tar -zxvf '
alias wget='wget -c '
alias speed='speedtest-cli --server 2406 --simple'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias path='echo -e ${PATH//:/\\n}'
alias neofetch='neofetch --ascii /home/sirpuli/.config/neofetch/puli.txt'

neofetch

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
