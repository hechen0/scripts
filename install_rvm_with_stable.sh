#!/bin/bash


sudo apt-get install curl

command_exists(){
    type "$1" &> /dev/null
}

echo_line(){
    echo "******************"
    echo $1
    echo "******************"
}

if command_exists rvm; then
    echo_line "rvm installed"
else
    echo_line "rvm installing"
    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
    curl -sSL https://get.rvm.io | bash -s stable
    source ~/.rvm/scripts/rvm
    source ~/.profile
    echo_line "rvm installed"
fi

rvm install ruby-2.2
rvm use ruby-2.2 --default
