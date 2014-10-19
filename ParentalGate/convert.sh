#!/bin/bash

ffmpeg -i ParentalGate.mov %d.png; for i in *.png; do convert $i -resize 50% $i.gif; done; gifsicle -O3 -d5 -l0 $((ls ?.png.gif; ls ??.png.gif; ls ???.png.gif) | grep gif) > out5.gif