#!/bin/bash
echo "installing Gotty"
curl -s -L -o "$HOME/gotty_linux_amd64.tar.gz" "https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_amd64.tar.gz"
tar zvxf "$HOME/gotty_linux_amd64.tar.gz" -C "$HOME"
chmod 755 "$HOME/gotty"


# Install AWS-CLI & PGCLI
#export PYTHONHOME="${DEPS_DIR}/0/apt/usr"
#export CPATH="${DEPS_DIR}/0/apt/usr/include/python2.7:${DEPS_DIR}/0/apt/usr/include"
#export PYTHONIOENCODING=utf8
echo "installing aws-cli"
#pip install awscli
curl -O https://bootstrap.pypa.io/get-pip.py
python get-pip.py --user
export PATH=~/.local/bin:$PATH
pip install awscli --upgrade --user
#./home/vcap/aws/awscli-bundle/install




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


