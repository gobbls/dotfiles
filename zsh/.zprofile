# Start sway if all relevant variables are available.
if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] && [ -z "$DISPLAY" ] ; then
    exec sway
fi
