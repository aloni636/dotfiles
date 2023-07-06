#!/bin/bash
# ========== aliases ==========
# alias vi='/usr/bin/vim.tiny'
# alias vim='/usr/bin/vim.tiny'
alias btop='btop --utf-force'
alias lst='ls -t'
alias llt='ls -lt'
alias ..="cd .."
alias s='source'
# ignore .git even when viewing hidden files
alias tree='tree -I .git'

# easily activate python venvs
venv() {
	source "$1/bin/activate"
}
# completion for venv command
# list all venvs inside VENVS_DIR if user didn't wrote anything yet 
# else, complete directories
export VENVS_DIR="$HOME/venvs/"
_venv_completion() {
    # get current word (i.e venv <WORD>)
    local current_word="${COMP_WORDS[COMP_CWORD]}"
    # complete only if user didn't wrote anything yet
    if [ -z $current_word ]; then
        # get all directories inside $VENVS_DIR
        local folder_list=$(compgen -d $VENVS_DIR)
        # insert to COMPREPLY, and complete one at a time 
        # (I still don't know why when I set COMPREPLY to ${folder_list} 
        # it inserts them all at once)
        COMPREPLY=( $(compgen -W "${folder_list}" -- ${current_word}) )
        # substitute expanded $HOME with ~ for better readability
        COMPREPLY=("${COMPREPLY[@]/$HOME/\~}")    
    fi
    return 0
}
# -o dirnames - for when the user typed some path
# -o nospace - to not place the cursor at a position to complete another parameter
complete -o dirnames -o nospace -F _venv_completion venv

# ffmpeg hide banner
# credits: https://linux.m2osw.com/how-remove-ffmpeg-ffprobe-stupid-banner
alias ffmpeg="ffmpeg -hide_banner"
alias ffprobe="ffprobe -hide_banner"
alias ffplay="ffplay -hide_banner"
