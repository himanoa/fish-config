set -x GOPATH $HOME
set -x WINEARCH win32
set -x XDG_CONFIG_DIRS ~/.config
set -x PATH $HOME/.anyenv/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x PATH $GOPATH/bin $PATH
set -x DIRENV_ nvim
set -x EDITOR vim
set -x NAME himanoa
set -x EMAIL matsunoappy@gmail.com

alias gst='git status'
alias ga='git add'
alias gc='git commit'
alias g ='git'
alias vim='nvim'
alias weather='curl -4 http://wttr.in/Tokyo'
alias touch='touch_erb'

set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_TMUX 1
set -U FZF_COMPLETE 1
set -U FZF_1
bind \cb '__fzf_ghq'
bind \co '__fzf_ghq'

status --is-interactive; and source (anyenv init -|psub)
alias ggra="git log --graph --oneline --decorate=short --date=format:'%Y-%m-%d %H:%M:%S' --pretty=format:'%Cgreen%h %C(yellow)%cd %Cred%d %Creset%s %Cblue<%cn>'"
