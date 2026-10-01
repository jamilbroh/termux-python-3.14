cat > README.md <<'EOF'
# Python 3.14.8 for Termux ARM64

Python 3.14.8 built from source for Termux on Android ARM64 (aarch64).

## Requirements

- Android device
- Termux
- ARM64 / aarch64
- At least 150 MB free storage

Check architecture:

uname -m

Expected:

aarch64

## Installation

Download the latest release:

https://github.com/jamilbroh/termux-python-3.14/releases/latest

### TAR.XZ installation

Download:

python-3.14.8-termux-aarch64.tar.xz

Extract:

tar -xJf python-3.14.8-termux-aarch64.tar.xz

Install:

mkdir -p $PREFIX/local
cp -r python-3.14/* $PREFIX/local/

Add Python to PATH:

echo 'export PATH="$PREFIX/local/python-3.14/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

Check:

python3 --version

Expected:

Python 3.14.8

## DEB installation

Download:

python3.14-custom_3.14.8_arm64.deb

Install:

dpkg -i python3.14-custom_3.14.8_arm64.deb

Then add Python to PATH:

echo 'export PATH="$PREFIX/local/python-3.14/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

Check:

python3 --version

## pip

Check pip:

pip3 --version

Install packages:

pip3 install requests

## Build Information

Python version: 3.14.8
Architecture: ARM64 / aarch64
Platform: Termux Android
Build type: CPython
GIL: Standard CPython build
Build source: Python 3.14.8

## Known Limitations

This is a custom Termux build and is not an official Termux package.

Some Python modules may not be available because of Android/Termux platform limitations.

Build summary:

- 114 modules checked
- 36 built-in
- 75 shared
- 1 not available on linux-aarch64
- 2 missing: _posixshmem, _tkinter

## Verify

Run:

python3 -c "import sys; print(sys.version)"
python3 -c "import platform; print(platform.machine())"

## License

Python is distributed under the Python Software Foundation License.

This custom Termux build is provided as-is.

## Author

Jamil Hasan

GitHub:
https://github.com/jamilbroh
EOF
