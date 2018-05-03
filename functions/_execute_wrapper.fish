function __execute_wrapper
    commandline | read -l buffer

    string replace -a -r '(;|\|)' ' $1' $buffer | read buffer

    for word in (string split ' ' $buffer)
        for keyword in P
            if string match -q $keyword -- $word
                switch $word
                    case P
                        set replacement '| peco'
                end
                string replace $keyword $replacement $buffer | read buffer
            end
        end
    end

    string replace -a -r '\s+' ' ' $buffer | read buffer
    string replace -a ' ;' ';' $buffer | read buffer

    commandline $buffer
    commandline -f execute
end
