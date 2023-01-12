#!/bin/bash
# ========== aliases ==========
alias vi='/usr/bin/vim.tiny'
alias vim='/usr/bin/vim.tiny'
alias btop='btop --utf-force'
alias lst='tree -L 1'

# easily activate python venvs
venv() {
	source "$1/bin/activate"
}

# ffmpeg hide banner
# credits: https://linux.m2osw.com/how-remove-ffmpeg-ffprobe-stupid-banner
alias ffmpeg="ffmpeg -hide_banner"
alias ffprobe="ffprobe -hide_banner"
alias ffplay="ffplay -hide_banner"

# ========== PATH ===========
export PATH="$HOME/.local/bin:$PATH:$HOME/AppImage"
export CDPATH=".:$HOME"
