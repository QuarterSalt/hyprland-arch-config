# ~/.bashrc
clear
[[ $- != *i* ]] && return
alias grep='grep --color=auto'

alias hypr-conf='nano ~/.config/hypr/hyprland.conf'
alias bash-conf='nano ~/.bashrc'
alias bash-rel='source ~/.bashrc && clear'
alias hypr-rel='hyprctl reload && clear'
alias neo-conf='nano ~/.config/neofetch/config.conf'
alias waybar-conf='nano ~/.config/waybar/config.jsonc'
alias waybar-styles='nano ~/.config/waybar/style.css'
alias clr='clear'
alias kitty-conf='nano ~/.config/kitty/kitty.conf'
alias nano-conf='sudo nano /etc/nanorc'
alias wofi-styles='nano ~/.config/wofi/style.css'
alias wofi-conf='nano ~/.config/wofi/config'
alias hyprpaper-conf='nano ~/.config/hypr/hyprpaper.conf'
alias rand-wall='waypaper --folder /home/qs/Pictures/Wallpapers --random && clear'
alias yazi-key='nano ~/.config/yazi/keymap-default.toml'
alias yazi-conf='nano ~/.config/yazi/yazi.toml'
alias doom='/usr/bin/drl'

PS1='\n  \W   \e[0m\e[38;2;255;255;255m '

# Created by `pipx` on 2025-05-06 03:21:56
export PATH="$PATH:/home/qs/.local/bin"
alias config='/usr/bin/git --git-dir=/home/qs/.config/ --work-tree=/home/qs'
