# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=$HOME/bin:$HOME/go/bin:/usr/local/bin:$PATH
export TERM="xterm-256color"
export EDITOR="vim"

# disable prompting to update and just do it
DISABLE_UPDATE_PROMPT=true

# disable autoupdating oh-my-zsh
# DISABLE_AUTO_UPDATE=true

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

DEFAULT_USER=jason

plugins=(
  docker
  git
  ruby
)

source $ZSH/oh-my-zsh.sh

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

eval "$(rbenv init -)"

alias update-ruby-build='git -C "$(rbenv root)"/plugins/ruby-build pull'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


alias speedy_nmap="sudo nmap -sS -T5 -PP -PE -PM -PI -PA20,53,80,113,443,5060,10043 --host-timeout=300m -O --max-rtt-timeout=600ms --initial-rtt-timeout=300ms --min-rtt-timeout=300ms --max-retries=2 --stats-every 10s --traceroute -PS1,7,9,13,21-23,25,37,42,49,53,69,79-81,105,110-111,113,123,135,137,139,143,179,222,384,389,407,443,445,465,500,512-515,540,548,554,587,617,623,689,705,783,910,912,921,993,995,1000,1024,1099-1100,1220,1300,1352,1433-1435,1494,1521,1533,1581-1582,1604,1720,1723,1755,1900,2000,2049,2100,2103,2121,2207,2222,2323,2380,2525,2533,2598,2638,2947,2967,3000,3050,3057,3128,3306,3389,3628,3632,3690,3780,3790,4000,4445,4848,5051,5060-5061,5093,5168,5250,5405,5432-5433,5554-5555,5800,6050,6060,6070,6080,6101,6112,6502-6504,6660,6667,6905,7080,7144,7510,7579-7580,7777,7787,8000,8008,8014,8028,8080-8081,8090,8180,8222,8300,8333,8443-8444,8800,8812,8880,8888,8899,9080-9081,9090,9111,9152,9495,9999-10001,10050,10202-10203,10443,10616,10628,11000,11234,12174,12203,12401,13500,14330,16102,18881,19300,19810,20031,20034,20222,22222,25000,25025,26000,28222,30000,34443,38080,38292,41025,41523-41524,44334,46823,50000-50004,50013,57772,62078,62514,65535 --min-rate=250 -PU47911"
alias ls='ls --color=auto -lph --group-directories-first'
alias la='ls --color=auto -lAph --group-directories-first'

