alias aliass='nano $HOME/.bash_aliases'
alias ab='source $HOME/.bash_aliases'
alias a='apt update && apt full-upgrade -y && apt autoremove -y && apt clean && clear && echo "Todo Actualizado..."'
alias ll='exa -l'
alias la='exa -la'
alias m='cmatrix'
alias baulera='cd /home/$USER/.baulera'
alias ip="echo $(ip -o -4 addr list wlp2s0 |awk '{print $4}' |cut -d / -f1)"