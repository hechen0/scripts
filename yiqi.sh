#!/bin/sh

S="ubuntu@54.187.78.39"

function yiqi {
    ssh -t $S "$1"
}

if [ $# -eq 0 ]
then
    yiqi
    exit
fi

case "$1" in
    install)
        yiqi "sudo apt-get install $2"
        ;;
    update)
        yiqi "sudo apt-get update"
        ;;
    dl)
        yiqi "rm /home/ubuntu/a.mp4 && youtube-dl $2 -o /home/ubuntu/a.mp4"
        scp $S:/home/ubuntu/a.mp4 ~/Downloads/a.mp4
        open ~/Downloads/a.mp4
        ;;
    log)
        yiqi "tail -f /var/log/shadowsocks.log"
        ;;
    *)
        echo "not support option '$1' yet"
esac
