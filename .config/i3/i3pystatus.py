# -*- coding: utf-8 -*-

import subprocess
import os
import os.path
import requests

from i3pystatus import Status, IntervalModule
from i3pystatus.core.command import run_through_shell
from i3pystatus.updates import pacman, cower
from i3pystatus.mail import imap


#from i3pystatus.mail import imap

#from i3pystatus.updates import pacman, cower

class RestartReminder(IntervalModule):
    settings = required = ()

    def run(self):
        if os.path.exists("/lib/modules/" + os.uname().release):
            self.output = None
        else:
            self.output = {
                "full_text": ": ",
                "color": "#FF5353",
            }

#status = Status(standalone=True)

status = Status(
    logfile='/tmp/i3pystatus_$USER.log',
        )

status.register("text",
    hints = {"separator": True, "separator_block_width": 15},
    text = ",",
    color = "#222222")

status.register("clock",
    hints = {"separator": True, "separator_block_width": 15},
    color = "#FFFFFF",
    format = "  %H:%M:%S",
    interval = 1,)

status.register("clock",
    hints = {"separator": True, "separator_block_width": 15},
    color = "#BDCAFF",
    format = "  %a %-d %b",
    interval = 5,
    on_leftclick = "/usr/bin/gsimplecal",)

status.register("pulseaudio",
    hints = {"separator": True, "separator_block_width": 15},
    format = "  {volume}%",
    format_muted = "Muted: M",
    color_muted = "#FFA500",
    on_leftclick = "pavucontrol",)

status.register("network",
    hints = {"separator": True, "separator_block_width": 15},
    interface = "enp2s0",
    color_up = "#8AFB8A",
    color_down = "#C53232",
    format_up = "  {v4}",
    format_down = "",
    on_leftclick = "networkmanager_dmenu",)

#status.register("net_speed",
#    hints = {"separator": True, "separator_block_width": 15},
#    format = "↓{speed_down:.1f}{down_units} ↑{speed_up:.1f}{up_units}",)
##    format = "↓{speed_down:.1f}{down_units} ↑{speed_up:.1f}{up_units} ({hosting_provider})",)

status.register("load",
    hints = {"separator": True, "separator_block_width": 15},
    color = "#B0B0B0",
    interval = 300,
    format = "  {avg1}  tasks:  {tasks}",)

status.register("cpu_usage",
    hints = {"separator": True, "separator_block_width": 15},
#    format=": {usage_cpu0:02}% {usage_cpu1:02}% {usage_cpu2:02}% {usage_cpu3:02}%",
    format = "  {usage:03}%",)

status.register("temp",
    hints = {"separator": True, "separator_block_width": 15},
    file = "/sys/devices/platform/coretemp.0/hwmon/hwmon0/temp1_input",
    alert_temp = 60,
    color = "#FFDB98",
    alert_color = "#FF3B3B",
    format = "  {temp:.0f} °C",)

status.register("mem",
    hints = {"separator": True, "separator_block_width": 15},
    color = "#C0C0C0",
    warn_color = "#E5E500",
    alert_color = "#FF1919",
    format = "  {used_mem:.0f} MiB",
    on_leftclick = "urxvt -e htop",)

status.register("disk",
    hints = {"separator": True, "separator_block_width": 15},
    path = "/",
    color = "#FFACAC",
    format = "  {avail} GB",)

status.register("disk",
    hints = {"separator": True, "separator_block_width": 15},
    path = "/home",
    format = "  {avail} GB",
    on_leftclick = "thunar",)

status.register("uname",
    hints = {"separator": True, "separator_block_width": 15},
    format = "  {sysname}",
    on_leftclick = "sh ~/.scripts/i3pystatus/urxvt-uname.sh",)

status.register("updates",
    hints = {"separator": True, "separator_block_width": 15},
    color = "#FF8181",
    color_no_updates = "#6E6E6E",
    format = "  updates  {count}",
    format_no_updates = "",
    format_working = "",
    interval = 30,
    on_leftclick = "sh ~/.scripts/i3pystatus/urxvt-updates.sh",
    backends = [pacman.Pacman(), cower.Cower()],)

status.register("mail",
    hints = {"separator": True, "separator_block_width": 15},
    color_unread = "#FF2D2D",
    format_plural = "{unread} new emails",
    on_leftclick = "firefox -new-window https://mail.google.com/mail/u/1/#inbox",
    backends=[
        imap.IMAP(
             # port and ssl are the defaults
             host="imap.googlemail.com", port=993, ssl=True,
             username="lubomir.pecena@gmail.com", password="oficialnejsie"
            )
    ])

status.register("uptime",
    hints = {"separator": True, "separator_block_width": 15},
    color = "#FFE5B5",
    interval = 5,
    format = "  {days}d  {hours}h  {mins}m",)

#status.register("mpd",
#    hints = {"separator": True, "separator_block_width": 15},
#    color = "#7F7F7F",
#    format = "{album}   {status}   {title}",
#    on_rightclick = ["mpd_command", "stop"],
#    status = {
#        "pause": "",
#        "play": "",
#        "stop": "",
#    },)

status.register(RestartReminder())

# To use the below, first invoke ssh -N -T -L 11111:the-santos-lab.auburn.edu:993 AU_Gate

#status.register("mail",
#    email_client="/usr/local/bin/mutt",
#    format=": {unread}",
#    format_plural=": {unread}",
#    color_unread="#00FFFF",
#    backends=[
#        imap.IMAP(
             # port and ssl are the defaults
#             host="localhost", port=11111, username="srsantos", password="XXXXXXXXXXXX"
#            )
#])

# status.register("mpd",
    # hints = {"separator": True, "separator_block_width": 15},
    # host='localhost',
    # port='6600',
    # format="MPD:  {status}",
    # on_leftclick="switch_playpause",
    # on_rightclick=["mpd_command", "stop"],
    # on_middleclick=["mpd_command", "shuffle"],
    # on_upscroll=["mpd_command", "next_song"],
    # on_downscroll=["mpd_command", "previous_song"],
    # status={
        # "pause": " ",
        # "play": " ",
        # "stop": " ",
    # },)

status.run()
