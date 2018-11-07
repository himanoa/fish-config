set -x GOPATH $HOME
set -x WINEARCH win32
set -x XDG_CONFIG_DIRS ~/.config
set -x PATH $HOME/.anyenv/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x PATH $GOPATH/bin $PATH
set -x DIRENV_ nvim
set -x EDITOR vim

alias gst='git status'
alias ga='git add'
alias gc='git commit'
alias g ='git'
alias vim='nvim'
alias weather='curl -4 http://wttr.in/Tokyo'

set -U FZF_LEGACY_KEYBINDINGS 0
bind \cb '__fzf_ghq'
bind \co '__fzf_ghq'
