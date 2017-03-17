source ~/.zsh_aliases
export PATH
export EDITOR=vim
source /usr/local/share/antigen.zsh
antigen use oh-my-zsh

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle zsh-users/zsh-completions src
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme agnoster

# Tell antigen that you're done.
antigen apply
unsetopt beep
bindkey -M menuselect '^M' .accept-line
export HISTSIZE=100000
