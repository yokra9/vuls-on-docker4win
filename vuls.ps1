docker run --rm -it -v "${HOME}/.ssh:/tmp/.ssh:ro" -v "${PWD}:/vuls" -v "${PWD}/vuls-log:/var/log/vuls" vuls $Args[0] $Args[2]