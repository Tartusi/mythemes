PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/sublime_text_3
if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi
user=$(whoami)
#eval "$(thefuck --alias)"
DEFAULT_USER=$user
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
antigen theme Tartusi/mythemes

# Tell antigen that you're done.
antigen apply
unsetopt beep
source /usr/share/autojump/autojump.zsh
bindkey -M menuselect '^M' .accept-line
export HISTSIZE=100000
