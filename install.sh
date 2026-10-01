#!/data/data/com.termux/files/usr/bin/bash

set -e

PREFIX_DIR="$PREFIX/local/python-3.14"

echo "Installing Python 3.14.8..."

if [ ! -d "python-3.14" ]; then
    echo "Error: python-3.14 directory not found."
    exit 1
fi

mkdir -p "$PREFIX/local"
cp -r python-3.14 "$PREFIX/local/"

echo 'export PATH="$PREFIX/local/python-3.14/bin:$PATH"' >> "$HOME/.bashrc"

export PATH="$PREFIX/local/python-3.14/bin:$PATH"

echo
echo "Python 3.14.8 installation complete!"
echo

python3 --version
pip3 --version

echo
echo "Restart Termux or run:"
echo "source ~/.bashrc"
