#!/bin/bash

# remove yourself
rm $0

# install fira code
fonts_dir="${HOME}/.local/share/fonts"
if [ ! -d "${fonts_dir}" ]; then
    echo "mkdir -p $fonts_dir"
    mkdir -p "${fonts_dir}"
fi

for type in Bold Medium Regular Retina; do
    file_path="${HOME}/.local/share/fonts/FiraCode-${type}.ttf"
    file_url="https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-${type}.ttf?raw=true"
    echo "wget -O $file_path $file_url"
    wget -O "${file_path}" "${file_url}"
done

echo "fc-cache -f"
echo "this should take half a minute or so..."
fc-cache -f
