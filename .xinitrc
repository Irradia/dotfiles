#!/bin/sh

# if [ -d /etc/X11/xinit/xinitrc.d ]; then
#   for f in /etc/X11/xinit/xinitrc.d/*; do
#     [ -x "$f" ] && . "$f"
#   done
#   unset f
# fi

bsps() {
	sxhkd -c ~/.config/sxhkd/sxhkdrc >/dev/null 2>&1               &
	xrdb -load ~/.Xresources                                       &
	xrdb -merge ~/.urxvt/colors/monokai                            &
	xset b 0                                                       &
	xset r rate 300 40                                             &
	xset s 2530 blank                                              &
	xset +dpms                                                     &
	xset dpms 2530 2530 2530                                       &
	xautolock -time 45 -locker ~/bin/suppressed-lock -notify 300 \
	-notifier 'notify-send --urgency normal --expire-time 300000 \
	"Lockdown in 5 minutes" "Inactivity lock initialized"'         &
	xsetroot -name fuck                                            &
	compton -b                                                     &
	redshift                                                       &
	unclutter -idle 5 -jitter 10 -root                             &
	hsetroot -fill ~/Media/Images/wallpapers/botanist.jpg          &
	mpd ~/.mpd/mpd.conf                                            &
	~/bin/yeahconsole                                              &
	~/.config/bspwm/bspwmrc                                        &
	exec bspwm
}

i3s() {
	xrdb -load ~/.Xresources                                       &&
	xrdb -merge ~/.urxvt/colors/monokai                            &
	xset b 0                                                       &
	xset r rate 300 40                                             &
	xset s 2530 2530                                               &
	xset dpms 2530 2530 2530                                       &
	setxkbmap -option terminate:ctrl_alt_bksp                      &
	xautolock -time 45 -locker ~/bin/suppressed-lock -notify 300 \
	-notifier 'notify-send --urgency normal --expire-time 300000 \
	"Lockdown in 5 minutes" "Inactivity lock initialized"'         &
	compton -b                                                     &
	redshift                                                       &
	unclutter -idle 5 -jitter 10 -root                             &
	hsetroot -fill ~/Media/Images/wallpapers/lake.jpg              &
	# ~/tmp/git/clipmenu/clipmenud                                   &
	mpd ~/.mpd/mpd.conf                                            &
	# fcitx  > ~/.local/fcitx.log 2>&1                               &
	exec i3
}

mwms() {
	mwm
}

i3s
