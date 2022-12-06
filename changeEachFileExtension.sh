#webp to png
find . -name "*.webp" -exec sh -c 'mv "$1" "${1%.webp}.png"' _ {} \;
