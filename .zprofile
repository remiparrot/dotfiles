if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	echo "Press 'i' for i3, 'k' for KDE or 'n' for none - default: i3"
	read -t 3 wm 
	case $wm in
		'k') WM=kde startx;;
		'i') WM=i3 startx;;
		'n') ;;
		*) WM=i3 startx;;
	esac
fi
