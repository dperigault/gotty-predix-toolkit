#!/bin/bash
echo "installing Gotty"
curl -s -L -o "$HOME/gotty_linux_amd64.tar.gz" "https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_amd64.tar.gz"
tar zvxf "$HOME/gotty_linux_amd64.tar.gz" -C "$HOME"
chmod 755 "$HOME/gotty"
