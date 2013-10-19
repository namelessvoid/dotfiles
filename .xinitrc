#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# disable x bell
xset b off

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
exec i3 -V >> ~/.i3/i3log 2>&1
