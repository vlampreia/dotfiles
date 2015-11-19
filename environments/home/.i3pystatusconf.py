import subprocess

from i3pystatus import Status

status = Status(standalone=True)

status.register("clock",format="%a %Y-%m-%d %H:%M:%S")

status.register("battery",
        format="0 {status} {percentage:.2f}% \[{percentage_design:.2f}%\]{remaining:%E %h:%M}",
        alert=True,
        alert_percentage=5,
        battery_ident='BAT0',
        status={
            "DIS": "↓",
            "CHR": "↑",
            "FULL": "-",
        },)
status.register("battery",
        format="1 {status} {percentage:.2f}% \[{percentage_design:.2f}%\]{remaining:%E %h:%M}",
        alert=True,
        alert_percentage=5,
        battery_ident='BAT1',
        status={
            "DIS": "↓",
            "CHR": "↑",
            "FULL": "-",
        },)

status.register("battery", format="⚡ {consumption:.2f}W")

status.register("network", interface="enp0s25", format_up="enp0s25 {v4cidr}", format_down="enp0s25")
status.register("network", interface="wlp3s0", format_up="wlp3s0 {v4cidr} {essid} {quality:03.0f}%", format_down="wlp3s0")

status.register("alsa", card=2, format="♪ {volume}")

status.register("mpd",
        format="{status} {title} \[{song_elapsed}\] {album}",
        status={
            "pause": "▷",
            "play": "▶",
            "stop": "◾",
        },)

status.run()
