#!/bin/bash
echo "installing Gotty"
curl -s -L -o "$HOME/gotty_linux_amd64.tar.gz" "https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_amd64.tar.gz"
tar zvxf "$HOME/gotty_linux_amd64.tar.gz" -C "$HOME"
chmod 755 "$HOME/gotty"


# Install AWS-CLI & PGCLI
echo "installing aws-cli"
curl -O https://bootstrap.pypa.io/get-pip.py
python get-pip.py --user
export PATH=~/.local/bin:$PATH
pip install awscli --upgrade --user




#install couchbase-cli
echo "installing couchbase-cli"
mkdir /home/vcap/couchbase
curl -O https://packages.couchbase.com/releases/6.0.0/couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb
dpkg-deb -x couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb /home/vcap/couchbase
export PATH="$PATH:/home/vcap/couchbase/opt/couchbase/bin"


# Cleaning

rm $HOME/gotty_linux_amd64.tar.gz
rm $HOME/apt.yml
rm $HOME/multi-buildpack.yml
rm $HOME/couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb
rm $HOME/get-pip.py

