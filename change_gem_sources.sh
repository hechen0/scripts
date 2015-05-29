#!/bin/sh
gem sources --remove https://rubygems.org/
gem sources -a https://ruby.taobao.org/
gem sources -l
echo "gem: --no-rdoc --no-ri" > ~/.gemrc
