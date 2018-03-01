# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/m/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"


export UPDATE_ZSH_DAYS=30

# DISABLE_AUTO_TITLE="true"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

## Aliases
# File manipulations
alias ls='ls --color=always'
alias ll='ls -alF'

# Apt
alias ai='sudo apt-get install --assume-yes'
alias as='sudo apt-cache search'
alias ap='sudo apt-cache policy'
alias ar='sudo apt-get --purge remove'
alias au='sudo apt-get update'
alias ad='sudo apt-cache depends'
alias al='sudo dpkg -l | grep'

# less & grep
alias l='fc -s | less -S'
# alias g='fc -s | grep --color=always'

# Utils
alias nv='nvim'
alias q='exit'
alias cl='clear'
alias cat='cat -n'
alias udb='sudo updatedb'
alias loc='locate'
alias rbt='systemctl reboot'
alias blk='sudo blkid'
alias src='source ~/.zshrc'
alias uz='aunpack'
alias fnd='grep --color=always -rnw . -e'
alias py='ipython3'
alias xclip='xclip -selection c'
alias getip='curl orga.cat/ip'
getiip() {
	ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1 -d'/'
}
alias iota-seed='cat /dev/urandom | tr -dc A-Z9 | head -c${1:-81}'

# Ranger
alias gh='ranger ~'
alias gdw='ranger ~/downloads/'
alias gdo='ranger ~/docs/'
alias gco='ranger ~/code/'
alias gy='ranger ~/crypto/'
alias gr='ranger /'
alias gdev='ranger /dev/'
alias getc='ranger /etc/'
alias gusr='ranger /usr/'
alias gloc='ranger /usr/local/'
alias gmnt='ranger /mnt/'
alias gmedia='ranger /media/'
alias gi='ranger /usr/include/'
alias mt='ranger ~/mt/'

# Config files
alias ea='nvim ~/config/zshrc'
alias ev='nvim ~/config/nvimrc'
alias ei='nvim ~/config/i3rc'
alias er='nvim ~/config/rangerrc'
alias doc='nvim ~/mt/docs/BUILD.md'
