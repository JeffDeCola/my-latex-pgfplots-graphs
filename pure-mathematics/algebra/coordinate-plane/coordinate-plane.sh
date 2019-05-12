#!/bin/bash -e
# coordinate-plane.sh

echo " "
echo "************************************************************************"
echo "****************************************** coordinate-plane.sh (START) *"
echo " "

echo "Create .dvi file"
echo "latex coordinate-plane.tex"
latex coordinate-plane.tex
echo " "

echo "Convert .dvi to .svg"
echo "    -n no fonts"
echo "    -a This option forces dvisvgm to vectorize everything"
dvisvgm -n -a coordinate-plane.dvi
echo " "

echo "******************************************** coordinate-plane.sh (END) *"
echo "************************************************************************"
echo " "
