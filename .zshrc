if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

if [ -d "$HOME/.local/bin" ]; then
    export PATH=$HOME/.local/bin:$PATH
fi

ZSH=~/.oh-my-zsh/

source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

plugins=(git git-extras archlinux adb cp python docker sudo command-not-found)

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

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
alias pup='sudo pacman -Syyu'
alias aup="pamac upgrade --aur"
alias grubup="sudo update-grub"
alias orphend="sudo pacman -Rns $(pacman -Qtdq)"
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
alias lsl='ls -l --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias path='echo -e ${PATH//:/\\n}'
alias excon='expressvpn connect'
alias exusa='expressvpn connect usda'
alias exhu='expressvpn connect hu'
alias exdis='expressvpn disconnect'
alias exlist='expressvpn list all'
alias exstart='sudo systemctl start expressvpn'
alias exstat='expressvpn status'
#alias pk='pulseaudio -k'
alias neofetch='neofetch | lolcat'
alias swapoff='sudo swapoff -a'
alias shutdown='shutdown -h now "Ye"'

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

neofetch

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/sirpuli/.sdkman"
[[ -s "/home/sirpuli/.sdkman/bin/sdkman-init.sh" ]] && source "/home/sirpuli/.sdkman/bin/sdkman-init.sh"
