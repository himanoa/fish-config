function nvcd
    nvr -c "cd "(realpath $argv)
    cd (realpath $argv)
end

function nvo
    nvr --remote-tab-silent 0x08.txt
end
