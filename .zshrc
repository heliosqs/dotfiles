export ZSH="/home/heliosqs/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8

# Alias
alias ga="git add -A"
alias gm="git commit -m" 
alias dckcontids="sudo docker container ps -a -q"
alias dckvolids="sudo docker volume ls -q"
alias dckup="sudo docker-compose up"
alias dckdown="sudo docker-compose down"
alias zshreload="source ~/.zshrc"
alias tp="terraform plan"
alias ta="terraform apply"
alias td="terraform destroy"
alias tkill="tmux kill-session -t"
alias vim="nvim"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
