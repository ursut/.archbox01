#!/bin/bash

dir=$HOME/.config/i3lock/
[[ -d $dir ]] && cd $dir || exit 0

#bg=$(shuf -n1 -e $HOME/.bg/*)

import -silent -window root bg.png;
convert bg.png -scale 25% -blur 0x20 -scale 400% bg.png;
#notify-send --urgency low "Locking..."
composite -gravity center pad_white.png bg.png bg.png;

i3lock -i bg.png

#i3lock -i bg.png --textcolor=eee8d5ff --ringcolor=07364295 --keyhlcolor=268bd295 --bshlcolor=dc322f95 --insidecolor=002b3695 --insidevercolor=268bd295 --ringvercolor=268bd295 --insidewrongcolor=dc322f95 --ringwrongcolor=dc322f95 --linecolor=07364295 --separatorcolor=07364295;

