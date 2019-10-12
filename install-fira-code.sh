#!/bin/bash

# remove yourself
rm $0

# install fira code
fonts_dir="${HOME}/.local/share/fonts"
if [ ! -d "${fonts_dir}" ]; then
    mkdir -p "${fonts_dir}"
fi

for type in Bold Light Medium Regular Retina; do
    file_path="${HOME}/.local/share/fonts/FiraCode-${type}.ttf"
    file_url="https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-${type}.ttf?raw=true"
    wget -qO "${file_path}" "${file_url}"
done

echo "Updating the font cache. This should take half a minute or so..."
fc-cache -f
