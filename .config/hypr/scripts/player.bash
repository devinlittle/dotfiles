PLAYER=$(playerctl --list-all | grep -o "chromium.instance.*")
YTMUSIC=0

TITLE_FORMAT="{{ title }} - {{ artist }}"

if [ -n "$PLAYER" ]; then
	YTMUSIC=1
	STATUS=$(playerctl --player=$PLAYER status 2>/dev/null)
fi

if [ "$1" = "--playinfo" ]; then 
	if [[ $YTMUSIC == 1 && $STATUS == "Playing" ]]; then
		echo "  $(playerctl metadata --player=$PLAYER --format "$TITLE_FORMAT")"
	elif [[ $YTMUSIC == 1 && $STATUS == "Paused" ]]; then
		echo "󰏤  $(playerctl metadata --player=$PLAYER --format "$TITLE_FORMAT")"
	fi
fi
