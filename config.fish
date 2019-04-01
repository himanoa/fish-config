set -x GOPATH $HOME
set -x WINEARCH win32
set -x XDG_CONFIG_DIRS ~/.config
set -x PATH $HOME/.anyenv/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH
set -x PATH $HOME/.config/composer/vendor/bin $PATH
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x PATH $GOPATH/bin $PATH
set -x DIRENV_ nvim
set -x EDITOR vim
set -x NAME himanoa
set -x EMAIL matsunoappy@gmail.com

alias gst='git status'
alias ga='git add'
alias gc='git commit'
alias gcf='git commit --fixup'
alias gcfh='git commit --fixup HEAD'
alias g ='git'
alias vim='nvim'
alias weather='curl -4 http://wttr.in/Tokyo'
alias touch='touch_erb'
alias vimf='vim (rg --files | fzf-tmux)'
alias review='tig --reverse -w (git merge-base origin/master HEAD)...HEAD'

set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_TMUX 1
set -U FZF_COMPLETE 1
set -U FZF_1
bind \cb '__fzf_ghq'
bind \co '__fzf_ghq'

status --is-interactive; and source (anyenv init -|psub)
alias ggra="git log --graph --oneline --decorate=short --date=format:'%Y-%m-%d %H:%M:%S' --pretty=format:'%Cgreen%h %C(yellow)%cd %Cred%d %Creset%s %Cblue<%cn>'"
alias c="tmux choose-tree -w"
eval (direnv hook fish)

function change_tmux_window_name -e "fish_postexec"
  tmux rename-window (basename (pwd))
end

alias x='env LANG=en_US.UTF-8 startx'
