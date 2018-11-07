function __fzf_ghq
    set -q FZF_TMUX; or set FZF_TMUX 0
    set -q FZF_TMUX_HEIGHT; or set FZF_TMUX_HEIGHT 40%
    if [ $FZF_TMUX -eq 1 ]
        cd (ghq root)/(ghq list | tmux-fzf -d$FZF_TMUX_HEIGHT)
    else
        cd (ghq root)/(ghq list | fzf)
    end
end
