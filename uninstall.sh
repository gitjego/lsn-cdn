#!/bin/bash

# remove the lsn and cdn function from .bashrc
sed -i '/lsn() {/,/}/d' ~/.bashrc
sed -i '/cdn() {/,/}/d' ~/.bashrc

# reload .bashrc
source ~/.bashrc

echo "Uninstallation complete."
