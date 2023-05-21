# lsn-cdn
Add 2 new commands to bash to make navigating folders in the terminal easier: lsn works like ls, but indexes the outputs with numbers.  cdn works like cd, but only requires the corresponding number from the lsn output. 

## Functions

## lsn
This function works similarly to the \`ls\` command but includes numbered lines in its output. It's especially useful in conjunction with the \`cdn\` function.

Usage:
```bash
lsn
```

### cdn
This function lets you change to a directory by specifying its index number as it appears in the output of the \`lsn\` function.

Usage:
```bash
cdn <index>
```

Replace `<index>` with the index number of the directory you want to change into. The index numbers are shown when running the \`lsn\` command.

## Installation

To install these functions, you need to download and run the \`installer.sh\` script. Open a terminal and run:

```bash
curl -O https://raw.githubusercontent.com/gitjego/lsn-cdn/main/install.sh
chmod +x install.sh
./install.sh
```

After running the script, the functions will be available in your current and future bash sessions.

## Compatibility

The script should be compatible with any Unix-like operating system that uses the Bash shell, e.g. Ubuntu, Debian, Fedora, CentOS, RHEL, Arch Linux, Manjaro, openSUSE, Alpine Linux, PopOS,  macOS and Windows Subsystem for Linux (WSL), etc.
