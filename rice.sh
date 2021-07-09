#! /bin/bash
# |-------------------------------------------------------------------------|
# |  ____                 _     _      ____                        _        |
# | |  _ \ ___ _   _  ___| |__ (_) ___|  _ \ ___ _ __   __ _ _   _(_)_ __   |
# | | |_) / __| | | |/ __| '_ \| |/ __| |_) / _ \ '_ \ / _` | | | | | '_ \  |
# | |  __/\__ \ |_| | (__| | | | | (__|  __/  __/ | | | (_| | |_| | | | | | |
# | |_|   |___/\__, |\___|_| |_|_|\___|_|   \___|_| |_|\__, |\__,_|_|_| |_| |
# |           |___/                                   |___/                 |
# |-------------------------------------------------------------------------| 

set_theme () {
	cp ~/Developer/.scripts/themes/$1/i3.config ~/.config/i3/config
	cp ~/Developer/.scripts/themes/$1/polybar.config ~/.config/polybar/config
	cp ~/Developer/.scripts/themes/$1/xfce4_terminal.config ~/.config/xfce4/terminal/terminalrc
	feh --bg-scale ~/Developer/.scripts/themes/$1/wallpaper.jpg
}

if [ -z "$1" ]; then
	echo "Usage: 	theme [option]."
	echo "Available Themes:"
	ls ~/Developer/.scripts/themes/
	exit
else
	set_theme $1
fi

killall polybar
i3 restart
cd && clear && neofetch
