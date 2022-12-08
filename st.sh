function shsh {
    printf "root@prototype ~# "
    read -r command
    ./proot -r . -S . -b /proc -b /run /bin/bash -c "$command"
    shsh
}

shsh
