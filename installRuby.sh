#!/bin/bash

apt update -y && apt upgrade -y && apt install htop curl git build-essential libssl-dev zlib1g-dev -y

git clone https://github.com/rbenv/rbenv.git /root/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /root/.bashrc
echo 'eval "$(rbenv init -)"' >> /root/.bashrc
#exec $SHELL
#source /root/.profile

git clone https://github.com/rbenv/ruby-build.git /root/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> /root/.bashrc
#exec $SHELL
source /root/.profile

rbenv install 3.1.2 && rbenv global 3.1.2

ruby -v
