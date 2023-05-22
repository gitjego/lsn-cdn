#!/bin/bash

# Remove the lsn and cdn functions from .bashrc
sed -i '/^lsn() {/,/^}$/d' ~/.bashrc
sed -i '/^cdn() {/,/^}$/d' ~/.bashrc

sed -i '/^$/N;/^\n$/D' ~/.bashrc

# reload .bashrc
source ~/.bashrc

echo "Uninstallation complete."
