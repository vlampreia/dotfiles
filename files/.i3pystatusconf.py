import subprocess

from i3pystatus import Status

status = Status(standalone=True)

status.register("clock", format="%a %Y-%m-%d %X",)

status.register("battery",
        format="{status}/{consumption:.2f}W {percentage:.2f}% \[{percentage_design:.2f}%\] {remaining:%E%h:%M}",
        alert=True,
        alert_percentage=5,
        status={
            "DIS": "↓",
            "CHR": "↑",
            "FULL": "=",
        },)

status.register("network", interface="enp0s25", format_up="enp0s25 {v4cidr}",)
status.register("wireless", interface="wlp3s0", format_up="wlp3s0 {essid} {quality:03.0f}%",)

status.register("mpd",
        format="{status} {title} \[{song_elapsed}\] {album}",
        status={
            "pause": "▷",
            "play": "▶",
            "stop": "◾",
        },)

status.run()
