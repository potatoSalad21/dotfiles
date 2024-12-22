# zshrc
bindkey "^[[H" beginning-of-line # HOME
bindkey "^[[F" end-of-line # END
bindkey "^[[3~" delete-char # DEL
bindkey "^[[3;5~" delete-word # CTRL+DEL - delete a whole word after cursor
bindkey "^H" backward-delete-word # CTRL+BACKSPACE - delete a whole word before cursor
bindkey "^[[1;5C" forward-word # CTRL+ARROW_RIGHT - move cursor forward one word
bindkey "^[[1;5D" backward-word # CTRL+ARROW_LEFT - move cursor backward one word

autoload -U promptinit; promptinit
prompt pure

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# ALIASES
alias vim=nvim
alias ls="ls --color"
alias obs="flatpak run com.obsproject.Studio"
alias lsa="ls -la"
alias kys="shutdown -P now"

karel() {
    javac -cp karel.jar $1 &&
    (java -cp .:./karel.jar "${1%.*}" || echo "Error during execution") ||
    echo "Error during compilation"
}

fjava() {
    javac -cp ./acm.jar ./src/"$1".java &&
    (java -cp .:acm.jar:src "$1" || echo "Error during execution") ||
    echo "Error during compilation"
}


source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
