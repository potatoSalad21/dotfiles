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

alias vim=nvim
alias ls="ls --color"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
