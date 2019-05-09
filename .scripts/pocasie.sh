#!/bin/bash

urxvt -e bash -c 'curl sk.wttr.in/YOUR; \
echo -e "\n\e[1;33mPress ENTER to exit:\e[0m"; read'
