# Changelog

## [3.14.8] - 2026-09-29

### Added
- Python 3.14.8 for Termux ARM64
- ARM64 / aarch64 build
- pip 26.2.1
- TAR.XZ distribution
- DEB package
- Installation script
- Uninstallation script

### Build
- Built from CPython 3.14.8 source
- Configured for Termux Android
- Android-specific unavailable functions disabled during configuration

### Known limitations
- `_posixshmem` is unavailable
- `_tkinter` is unavailable
- This is a custom build and is not an official Termux package
