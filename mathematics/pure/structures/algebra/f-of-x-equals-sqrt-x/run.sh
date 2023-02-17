#!/bin/bash -e
# run.sh

echo " "
echo "************************************************************************"
echo "******************************************************* run.sh (START) *"
echo " "

echo "Create .dvi file"
echo "latex f-of-x-equals-sqrt-x.tex"
latex f-of-x-equals-sqrt-x.tex
echo " "

echo "Convert .dvi to .svg"
echo "    -n no fonts"
echo "    -a This option forces dvisvgm to vectorize everything"
dvisvgm -n -a f-of-x-equals-sqrt-x.dvi
echo " "

echo "cp f-of-x-equals-sqrt-x.svg ~my-cheat-sheets/other/mathematics/pure/structures/algebra-cheat-sheet/pgfplots-pics/."
cp f-of-x-equals-sqrt-x.svg ~cheatsheets/my-cheat-sheets/other/mathematics/pure/structures/algebra-cheat-sheet/pgfplots-pics/.
echo " "

echo "********************************************************* run.sh (END) *"
echo "************************************************************************"
echo " "

