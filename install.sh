#!/bin/bash

# add lsn function for indexing folder contents
cat << EOF >> ~/.bashrc

lsn() {
    dir_color=\$(dircolors -p | awk '/^DIR/{print \$2}')
    start_color=\$(echo -e "\033[\${dir_color}m")
    end_color=\$(echo -e "\033[0m")
    files_and_dirs=(*/)
    files_and_dirs+=(*)
    for i in "\${!files_and_dirs[@]}"; do
        item_name=\${files_and_dirs[i]%/}
        if [ -d "\$item_name" ]; then
            echo "\$((i+1))) \${start_color}\${item_name}\${end_color}"
        else
            echo "\$((i+1))) \${item_name}"
        fi
    done
}
EOF

# add cdn function for changing directory based on index number of lsn output
cat << EOF >> ~/.bashrc

cdn() {
    dirs=(*/)
    cd "\${dirs[\$1-1]}"
}
EOF

# Source the updated .bashrc
source ~/.bashrc

echo "The lsn and cdn functions were successfully installed and are now available for use. Example usage: lsn <enter>, then cdn 1"
