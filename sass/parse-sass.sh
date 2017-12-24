#!/bin/sh

for scss in *.scss
do
  sassc -a $scss ${scss%%.scss}.css
done

mv gnome-shell.css ../Flat\ Remix/gnome-shell/

gdbus call --session --dest org.gnome.Shell --object-path /org/gnome/Shell --method org.gnome.Shell.Eval 'Main.loadTheme();'
