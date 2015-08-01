#!/bin/sh

S="ubuntu@54.187.78.39"

function server {
    ssh -t $S "$1"
}

if [ $# -eq 0 ]
then
    server
    exit
fi

case "$1" in
    install)
        server "sudo apt-get install $2"
        ;;
    update)
        server "sudo apt-get update"
        ;;
    dl)
        server "rm /home/ubuntu/a.mp4 && youtube-dl $2 -o /home/ubuntu/a.mp4"
        scp $S:/home/ubuntu/a.mp4 ~/Downloads/a.mp4
        open ~/Downloads/a.mp4
        ;;
    log)
        server "tail -f /var/log/shadowsocks.log"
        ;;
    *)
        echo "not support option '$1' yet"
esac
