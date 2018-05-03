function fish_user_key_bindings
    ### expand ###
    bind --sets-mode expand \t expand:execute
    bind --mode expand --sets-mode default --key backspace expand:revert
    bind --mode expand \t expand:choose-next
    bind --mode expand --sets-mode default '' ''
    ### expand ###
    ### global-abbreviation ###
    bind ' ' '__gabbr_expand; commandline -i " "'
    ### global-abbreviation ###
end

fzf_key_bindings
