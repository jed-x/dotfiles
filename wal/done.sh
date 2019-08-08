#!/bin/sh

# =================================================
# Symlink config files so programs can be started
# without referencing the cache directly
#
# Includes: zathura, dunst, qutebrowser
# =================================================

mkdir -p  "${HOME}/.config/zathura"
mkdir -p  "${HOME}/.config/dunst"

ln -sf    "${HOME}/.cache/wal/zathurarc"        "${HOME}/.config/zathura/zathurarc"
ln -sf    "${HOME}/.cache/wal/dunstrc"          "${HOME}/.config/dunst/dunstrc"
ln -sf    "${HOME}/.cache/wal/qutebrowser.yml"  "${HOME}/.config/qutebrowser/colors.yml"
ln -sf    "${HOME}/.cache/wal/.Xresources"      "${HOME}/.Xresources"
# ===================
# ====== dunst ======
# ===================

# Restart dunst with the new color scheme
pkill dunst
dunst -config ~/.config/dunst/dunstrc &

