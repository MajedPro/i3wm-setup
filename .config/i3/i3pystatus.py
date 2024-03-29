# -*- coding: utf-8 -*-

import subprocess
import os
import os.path
import requests

from i3pystatus import Status, IntervalModule
from i3pystatus.core.util import internet
from i3pystatus.core.command import run_through_shell
from i3pystatus.updates import pacman, cower
from i3pystatus.mail import imap


class RestartReminder(IntervalModule):
    settings = required = ()

    def run(self):
        if os.path.exists("/lib/modules/" + os.uname().release):
            self.output = None
        else:
            self.output = {
                "full_text": "  ",
                "color": "#FF5353",
            }

#status = Status(standalone=True)

status = Status(
    logfile='/tmp/i3pystatus_$USER.log',
        )

status.register("text",
    hints = {"separator": True, "separator_block_width": 15},
    text = "",
    color = "#808080",)

# status.register("keyboard_locks",
#     hints = {"separator": True, "separator_block_width": 15},
#     format = "{caps}",
#     caps_on = "CAP",
#     caps_off = "___",
#     num_on = "NUM",
#     num_off = "___",
#     scroll_on = "SCR",
#     scroll_off = "___",
#     color = "#FF1C1A",)

status.register("clock",
    hints = {"separator": True, "separator_block_width": 15},
    color = "#FFFFFF",
    format = "  %H:%M",
    interval = 1,)

status.register("clock",
    hints = {"separator": True, "separator_block_width": 15},
    color = "#A5B7FF",
    format = "  %a %-d %b",
    interval = 5,
    on_leftclick = "/usr/bin/gsimplecal",)

status.register("pulseaudio",
    hints = {"separator": True, "separator_block_width": 15},
    format = "  {volume}%",
    format_muted = "Muted: M",
    color_muted = "#FFA500",
    on_leftclick = "pavucontrol",)

status.register("online",
    hints = {"separator": True, "separator_block_width": 15},
    color = '#1EDC04',
    color_offline = '#ff0000',
    format_online = '  online',
    format_offline = 'offline',
    interval = 5,
    on_leftclick = "networkmanager_dmenu",)

# status.register("network",
#     hints = {"separator": True, "separator_block_width": 15},
#     interface = "enp2s0",
#     color_up = "#1EDC04",
#     color_down = "#FF0000",
#     format_up = "  {v4}",
#     format_down = "  disconnected",
#     on_leftclick = "networkmanager_dmenu",)

status.register("external_ip",
    hints = {"separator": True, "separator_block_width": 15},
#    format = "{country_name} {country_code} {ip}",
    format = "ip: {ip}",
    format_hide = "{country_code}",
    format_down = "Timeout",

    ip_website = "https://api.ipify.org",
    timeout = 5,
    color = "#FFFFFF",
    color_hide = "#FFD232",
    color_down = "#FF0000",

    on_leftclick = "switch_hide",
    on_rightclick = "run",)

#status.register("net_speed",
#    hints = {"separator": True, "separator_block_width": 15},
#    format = "↓{speed_down:.1f}{down_units} ↑{speed_up:.1f}{up_units}",)
##    format = "↓{speed_down:.1f}{down_units} ↑{speed_up:.1f}{up_units} ({hosting_provider})",)

status.register("load",
    hints = {"separator": True, "separator_block_width": 15},
    color = "#B0B0B0",
    interval = 300,
    format = "  {avg1} tasks: {tasks}",)

status.register("temp",
    hints = {"separator": True, "separator_block_width": 15},
    file = "/sys/devices/platform/coretemp.0/hwmon/hwmon0/temp1_input",
    alert_temp = 60,
    color = "#FFCB59",
    alert_color = "#FF3B3B",
    format = "  {temp:.0f}°C",)

status.register("cpu_usage_graph",
    hints = {"separator": True, "separator_block_width": 15},
    graph_width = 10,
    graph_style = 'blocks',
    format = 'CPU: {usage:02}% {cpu_graph}',
    cpu = 'usage_cpu',
    direction = 'left-to-right',)

# status.register("cpu_usage_bar",
#     hints = {"separator": True, "separator_block_width": 15},
#     format = "CPU  {usage_bar}",
#     color = "#FFC550",
#     bar_type = "horizontal",
#     cpu = 'usage_cpu',)

# status.register("cpu_usage",
#     hints = {"separator": True, "separator_block_width": 15},
# #    format=": {usage_cpu0:02}% {usage_cpu1:02}% {usage_cpu2:02}% {usage_cpu3:02}%",
# #    format = "  {usage:03}%",
#     color = "#15FF00",
#     format = "CPU: {usage:02}%",)

status.register("mem",
    hints = {"separator": True, "separator_block_width": 15},
    color = "#C0C0C0",
    warn_color = "#E5E500",
    alert_color = "#FF1919",
    format = "  {percent_used_mem:02.0f}%",
    on_leftclick = "urxvt -e htop",)

# status.register("mem_bar",
#     hints = {"separator": True, "separator_block_width": 15},
#     color = "#00FF00",
#     warn_color = "#FFFF00",
#     alert_color = "#FF0000",
#     warn_percentage = 50,
#     alert_percentage = 80,
#     multi_colors = False,)

status.register("disk",
    hints = {"separator": True, "separator_block_width": 15},
    path = "/",
    color = "#FF7D7D",
    format = "  {avail} GB",)

status.register("disk",
    hints = {"separator": True, "separator_block_width": 15},
    path = "/home",
    format = "  {avail} GB",
    on_leftclick = "nautilus --new-window",)

# status.register("uname",
#     hints = {"separator": True, "separator_block_width": 15},
#     format = "  {sysname}",
#     on_leftclick = "sh ~/.scripts/i3pystatus/urxvt-uname.sh",)

status.register("updates",
    hints = {"separator": True, "separator_block_width": 15},
    color = "#FF8181",
    color_no_updates = "#6E6E6E",
    format = "  {count}",
    format_no_updates = "",
    format_working = "",
    interval = 30,
    on_leftclick = "sh ~/.scripts/updates-install.sh",
    backends = [pacman.Pacman(), cower.Cower()],)

status.register("mail",
    hints = {"separator": True, "separator_block_width": 15},
    color_unread = "#FF6A6A",
    format_plural = "{unread} new emails",
#    on_leftclick = "firefox -new-window https://mail.google.com/mail/u/1/#inbox",
    backends=[
        imap.IMAP(
             # port and ssl are the defaults
             host="imap.googlemail.com", port=993, ssl=True,
             username="your.mail@gmail.com", password="password"
            )
    ])

# status.register("redshift",
#     hints = {"separator": True, "separator_block_width": 15},
#     color = "#A1B4FF",
#     error_color = "#FF2F2F",
#     format = "{inhibit} {temperature}K",
#     format_inhibit = ["On", "Off"],
#     on_leftclick = "toggle_inhibit",
#     redshift_parameters = [],)

status.register("uptime",
    hints = {"separator": True, "separator_block_width": 15},
    color = "#A1B4FF",
    interval = 5,
    format = "  {days}d {hours}h {mins}m",)

status.register(RestartReminder())

status.run()
