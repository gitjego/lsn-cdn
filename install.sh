#!/bin/bash

# add the lsn function to .bashrc
echo "
lsn() {
    # Get the LS_COLORS string for directories
    dir_color=\$(dircolors -p | awk '/^DIR/{print \$2}')
    # Start color escape sequence
    start_color=\$(echo -e \"\033[\${dir_color}m\")
    # End color escape sequence
    end_color=\$(echo -e \"\033[0m\")
    files_and_dirs=(*/)
    files_and_dirs+=(*)
    for i in \"\${!files_and_dirs[@]}\"; do
        # Remove the trailing slash
        item_name=\${files_and_dirs[i]%/}
        # If the item is a directory, color it
        if [ -d \"\$item_name\" ]; then
            echo \"\$((i+1))) \${start_color}\${item_name}\${end_color}\"
        else
            echo \"\$((i+1))) \${item_name}\"
        fi
    done
}" >> ~/.bashrc

# add the cdn function to .bashrc
echo "
cdn() {
    files_and_dirs=(*/)
    files_and_dirs+=(*)
    # Verify the chosen index is a directory before trying to cd into it
    if [ -d \"\${files_and_dirs[\$1-1]}\" ]; then
        cd \"\${files_and_dirs[\$1-1]}\"
    else
        echo \"Error: Not a directory\"
    fi
}" >> ~/.bashrc

# reload .bashrc
source ~/.bashrc

echo "Installation complete."

echo "The lsn and cdn functions were successfully installed and are now available for use. It may be necessery to open a new terminal, or alternatively, manually run 'source ~/.bashrc' in this terminal. Example usage: lsn <enter>, then cdn 1"
