function shsh {
    printf "root@prototype ~# "
    read -r command
    ./proot -r . -S . /bin/bash -c "$command"
    shsh
}

shsh
