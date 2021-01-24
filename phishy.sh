#!/bin/bash

export COLOR_RESET="\e[0m"

# Text Colors
export WHITE_COLOR="\e[97m"
export BLUE_COLOR="\e[34m"

# Background Colors
export BRED_COLOR="\e[41m"

function banner() {
    clear

    printf "$COLOR_RESET\n$WHITE_COLOR                 .                  $WHITE_COLOR Twitter | https://www.twitter.com/ant_devs$COLOR_RESET"
    printf "$COLOR_RESET\n$WHITE_COLOR                \":\"                       $COLOR_RESET"
    printf "$COLOR_RESET\n$WHITE_COLOR              ___:____     |\"\/\"|         $COLOR_RESET"
    printf "$COLOR_RESET\n$WHITE_COLOR            ,'        '.    \  /            $COLOR_RESET" 
    printf "$COLOR_RESET\n$WHITE_COLOR            |  O        \___/  |            $COLOR_RESET" 
    printf "$COLOR_RESET\n$WHITE_COLOR            ~^~^~^~^~^~^~^~^~^~^~^~^~       $COLOR_RESET"     
    printf "$COLOR_RESET\n$BLUE_COLOR ██████  ██   ██ ██ ███████ ██   ██ ██    ██ $COLOR_RESET"
    printf "$COLOR_RESET\n$BLUE_COLOR ██   ██ ██   ██ ██ ██      ██   ██  ██  ██  $COLOR_RESET"
    printf "$COLOR_RESET\n$BLUE_COLOR ██████  ███████ ██ ███████ ███████   ████   $COLOR_RESET"
    printf "$COLOR_RESET\n$BLUE_COLOR ██      ██   ██ ██      ██ ██   ██    ██    $COLOR_RESET"
    printf "$COLOR_RESET\n$BLUE_COLOR ██      ██   ██ ██ ███████ ██   ██    ██    $COLOR_RESET\n"
    printf "$COLOR_RESET\n$BRED_COLOR$WHITE_COLOR Advanced Phishing tool with 30+ Templates $COLOR_RESET\n"
    printf "$COLOR_RESET\n"   
}

function menuOptions() {
    printf "$COLOR_RESET$WHITE_COLOR Select A Template $COLOR_RESET$WHITE_COLOR"
    printf "\n$COLOR_RESET\n"
    printf "$COLOR_RESET$WHITE_COLOR[30] Amazon$COLOR_RESET\t$WHITE_COLOR[20] PNC\n$COLOR_RESET"
    #read -p $' \e[97m Select an option: ' menu_option
}

banner

menuOptions