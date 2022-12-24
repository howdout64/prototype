function shsh {
    printf "\e[94mroot@\e[34mprototype \e[96m~#\e[97m "
    read -r command
    if [[ "$command" == "ls" ]]; then
     ls -l
     shsh
    else
     ./proot -r . -S . -b /proc /bin/bash -c "$command"
     shsh
    fi
}

shsh
