#!/bin/bash

setxkbmap -layout us,ru
setxkbmap -option 'grp:alt_shift_toggle'
xmodmap ~/.Xmodmaprc
xset r rate 250 60

picom -b

# Set fallback cursor.
xsetroot -cursor_name left_ptr

# If Emacs is started in server mode, `emacsclient` is a convenient way to
# edit files in place (used by e.g. `git commit`).
export VISUAL="emacsclient -nw"
export PAGER=less
export INSIDE_EMACS=27
export EDITOR="$VISUAL"
export PAGER=less

# Finally launch emacs.
exec dbus-launch --exit-with-session emacs -mm --debug-init
