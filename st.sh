function shsh {
    printf "\e[94mroot@\e[34mprototype \e[96m~#\e[97m "
    read -r command
    ./proot -r . -S . -b /proc -0 /bin/bash -c "$command"
    shsh
}

shsh
