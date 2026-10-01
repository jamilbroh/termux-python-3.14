#!/data/data/com.termux/files/usr/bin/bash

set -e

echo "Removing Python 3.14.8..."

rm -rf "$PREFIX/local/python-3.14"

sed -i '/local\/python-3.14\/bin/d' "$HOME/.bashrc"

echo
echo "Python 3.14.8 removed."
echo "Restart Termux to apply the changes."
