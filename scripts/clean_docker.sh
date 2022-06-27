#!/bin/bash

`docker rm -f $(docker ps -a -q) > /dev/null 2>&1`
`docker rmi -f $(docker images -q) > /dev/null 2>&1`
`docker volume rm -f $(docker volume ls -q) > /dev/null 2>&1`
`docker network rm $(docker network ls -q) > /dev/null 2>&1`


function showDockerCleanedMessage()
{
    colorred="\033[31m"
    colorpowder_blue="\033[1;36m" #with bold
    colorblue="\033[34m"
    colornormal="\033[0m"
    colorwhite="\033[97m"
    colorlightgrey="\033[90m"
    
    printf "                   ${colorred} ##       ${colorlightgrey} .         \n"
    printf "             ${colorred} ## ## ##      ${colorlightgrey} ==         \n"
    printf "           ${colorred}## ## ## ##      ${colorlightgrey}===         \n"
    printf "       /\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\\\___/ ===       \n"
    printf "  ${colorblue}~~~ ${colorlightgrey}{${colorblue}~~ ~~~~ ~~~ ~~~~ ~~ ~ ${colorlightgrey}/  ===- ${colorblue}~~~${colorlightgrey}\n"
    printf "       \\\______${colorwhite} o ${colorlightgrey}         __/           \n"
    printf "         \\\    \\\        __/            \n"
    printf "          \\\____\\\______/               \n"
    printf "${colorpowder_blue}                                          \n"
    printf '       __           __                _              __                          __ \n'
    printf '  ____/ /___  _____/ /_____  _____   (_)____   _____/ /__  ____ _____  ___  ____/ / \n'
    printf ' / __  / __ \/ ___/ //_/ _ \/ ___/  / / ___/  / ___/ / _ \/ __ `/ __ \/ _ \/ __  /  \n'
    printf '/ /_/ / /_/ / /__/ ,< /  __/ /     / (__  )  / /__/ /  __/ /_/ / / / /  __/ /_/ /   \n'
    printf '\__,_/\____/\___/_/|_|\___/_/     /_/____/   \___/_/\___/\__,_/_/ /_/\___/\__,_/    \n'
    printf '                                                                                    \n'
    printf " ${colornormal}                                         \n"
    
}

showDockerCleanedMessage