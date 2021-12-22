#!/bin/bash
while [[ ! $(pidof firefox) ]]; do
        killall firefox
        Xvfb :1 &
        export DISPLAY=:1 && firefox > /dev/null
        exit
done
