#!/bin/bash
# ========== aliases ==========
alias vi='/usr/bin/vim.tiny'
alias vim='/usr/bin/vim.tiny'
alias nvim="$HOME/AppImage/nvim.appimage"
alias btop='btop --utf-force'
alias lst='tree -L 1'

# easily activate python venvs
venv() {
	source "$1/bin/activate"
}

# ffmpeg hide banner
# credits: https://linux.m2osw.com/how-remove-ffmpeg-ffprobe-stupid-banner
# alias ffmpeg="ffmpeg -hide_banner"
# alias ffprobe="ffprobe -hide_banner"
# alias ffplay="ffplay -hide_banner"

# ========== bindings ==========
# credits: https://stackoverflow.com/questions/7179642/how-can-i-make-bash-tab-completion-behave-like-vim-tab-completion-and-cycle-thro
# If there are multiple matches for completion, Tab should cycle through them
bind 'TAB:menu-complete'
# Display a list of the matching files
bind "set show-all-if-ambiguous on"

# Perform partial (common) completion on the first Tab press, only start
# cycling full results on the second Tab press (from bash version 5)
bind "set menu-complete-display-prefix on"

# ========== PATH ===========
export PATH="$HOME/.local/bin:$PATH"
export CDPATH=".:$HOME"
