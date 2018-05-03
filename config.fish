set -x GOPATH $HOME
set -x WINEARCH win32
set -x XDG_CONFIG_DIRS ~/.config
set -x PATH $HOME/.anyenv/bin $PATH
set -x PATH /home/himanoa/Downloads/google-cloud-sdk/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x PATH $GOPATH/bin $PATH
set -x DIRENV_ nvim
set -x EDITOR vim
set -x PATH $HOME/src/github.com/k0kubun/Nocturn/packages/v1.6.1/Nocturn-linux-x64 $PATH

alias gst='git status'
alias ga='git add'
alias gc='git commit'
alias g ='git'
alias vim='nvim'
alias weather='curl -4 http://wttr.in/Tokyo'
function git-hash
    git log --oneline --branches | fzf-tmux | awk '{print $1}'
end


function fzf-tmux_select_file
    if ls .git
        if set -q $argv
            git ls-files | fzf-tmux | read line; commandline "vim $line"
        else
            git ls-files | fzf-tmux | read line; commandline "vim $line"
        end
    else
        if set -q $argv
            find . -print | fzf-tmux | read line; commandline "vim $line"
        else
            find . -print | fzf-tmux | read line; commandline "vim $line"
        end
    end
end

function fzf-tmux_select_repository
    if set -q $argv
        ghq list -p | fzf-tmux | read line; commandline "cd $line"
    else
        ghq list -p | fzf-tmux --query $argv | read line; commandline "cd $line"
    end
end

function fzf-tmux_select_history
    if set -q $argv
        history |  fzf-tmux | read line; commandline $line
    else
        history | fzf-tmux --query $argv | read line; commandline $line
    end
end

function fzf-tmux_select_branch
   git branch -a | fzf-tmux | tr -d ' ' | read branch
   if [ $branch ]
       commandline "git checkout $branch"
   else
       commandline "git checkout $branch"
   end
end

function fish_user_key_bindings
    bind \cr fzf-tmux_select_history
    bind \c] fzf-tmux_select_repository
    bind \cb fzf-tmux_select_branch
    bind \cf fzf-tmux_select_file
end

eval (direnv hook fish)

status --is-interactive; and source (anyenv init -|psub)
