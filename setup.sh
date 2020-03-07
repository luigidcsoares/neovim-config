#!/bin/sh
# A script to set up language-specific plugins.

THIS=$(basename $0)

function help() {
    echo "
    $THIS is a simple script used to configure language-specific plugins.
    For this to work one must first add a file named <lang>.vim to customizations/lang folder.
    "

    echo "
    Usage:
    $THIS -a \"[lang1] [lang2] ... [langN]\" (append to the lang list)
    $THIS -c (clean the existing config)
    $THIS -h (show help)
    $THIS -s \"[lang1] [lang2] ... [langN]\" (set up a new lang list cleaning the previous one)
    "
}

CUSTOM_DIR="$HOME/.config/nvim/customizations"
PLUGINS_DIR="${CUSTOM_DIR}/lang"
PLUGINS_FILE="${CUSTOM_DIR}/plugins_lang.vim"

function append() {
    for lang in "$@"
    do
        echo "source $PLUGINS_DIR/$lang.vim" >> $PLUGINS_FILE
    done

    nvim --headless +PlugClean! +PlugInstall +qa
}

function empty() {
    : > $PLUGINS_FILE
}

function clean() {
    empty
    nvim --headless +PlugClean! +qa
}

function setup() {
    empty
    append $@
}

while getopts "ha:s:c" opt; do
    case $opt in
        "a") 
            append $OPTARG;;

        "c")
            clean;;

        "h")
            help;;

        "s")
            setup $OPTARG;;
    esac
done
