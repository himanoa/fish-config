function __fzf_dotconfigs
    set -q FZF_TMUX; or set FZF_TMUX 0
    set -q FZF_TMUX_HEIGHT; or set FZF_TMUX_HEIGHT 40%
    if [ $FZF_TMUX -eq 1 ]
        cd ~/.config/(ls -F ~/.config | grep / | fzf-tmux)
    else
        cd ~/.config/(ls -F ~/.config | grep / | fzf)
    end
end
