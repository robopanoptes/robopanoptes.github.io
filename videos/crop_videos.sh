#!/bin/bash

for INPUT_VIDEO in *.mp4; do
    OUTPUT_VIDEO="${INPUT_VIDEO%.mp4}_compressed.mp4"

    # Run FFmpeg command for lossless compression
    ffmpeg -i "$INPUT_VIDEO" -c:v libx264 -crf 18 -preset veryslow -c:a copy "$OUTPUT_VIDEO"

    echo "Finished processing $INPUT_VIDEO -> $OUTPUT_VIDEO"
done

echo "All videos processed!"
