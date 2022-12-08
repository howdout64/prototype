function shsh {
    printf "root@prototype ~# "
    read -r command
    ./proot -r . -S . -b /proc /bin/bash -c "$command"
    shsh
}

shsh
