# -*- coding: utf-8 -*-

import subprocess

from i3pystatus import Status

status = Status(standalone=True)

status.register("clock",format="%a %Y-%m-%d %H:%M:%S")

status.register("battery",
        #format="0 {status} {percentage:.2f}% \[{percentage_design:.2f}%\]{remaining:%E %h:%M}",
        format="0 {status} {percentage:.2f}% {remaining:%E %h:%M}",
        alert=True,
        alert_percentage=10,
        battery_ident='BAT0',
        color="#ffff00",
        status={
            "DPL": "-",
            "DIS": u'↓',
            "CHR": "↑",
            "FULL": "-",
        },)
status.register("battery",
        #format="1 {status} {percentage:.2f}% \[{percentage_design:.2f}%\]{remaining:%E %h:%M}",
        format="1 {status} {percentage:.2f}% {remaining:%E %h:%M}",
        alert=True,
        alert_percentage=10,
        battery_ident='BAT1',
        color="#ffff00",
        status={
            "DPL": "-",
            "DIS": "↓",
            "CHR": "↑",
            "FULL": "-",
        },)

status.register("battery", format="⚡ {consumption:.2f}W ({remaining:%E %h:%M})")

status.register("network", interface="enp0s25", format_up="{v4cidr}", format_down="enp0s25")
status.register("network", interface="wlp3s0", format_up="{v4cidr} {essid} {quality:03.0f}%", format_down="wlp3s0")

status.register("alsa", mixer="PCM", format="♪ {volume}")

status.register("mpd",
        format="{status} {title} \[{song_elapsed}\] {album}",
        status={
            "pause": "▷",
            "play": "▶",
            "stop": "◾",
        },)

status.run()
