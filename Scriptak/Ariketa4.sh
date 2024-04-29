#!/bin/bash

# 4 Ariketa

# Eragiketa bat aukeratu
echo "Aukeratu eragiketa bat:"
echo "+"
echo "-"
echo "*"
echo "/"

# Galdetu erabiltzaileari zenbaki bat aukeratzeko
echo "Mesedez, idatzi zenbaki bat"
read Zenbaki1

# Galdetu erabiltzaileari zenbaki bat aukeratzeko
echo "Mesedez, idatzi beste zenbaki bat"
read Zenbakia2

# Galdetu erabiltzaileari eragiketa bat aukeratzeko
echo "Mesedez, idatzi eragiketa bat"
read eragiketa

echo "Emaitza"
if [ "$eragiketa" = "*" ]; then
    expr $Zenbaki1 \* $Zenbakia2
else 
    expr $Zenbaki1 $eragiketa $Zenbakia2
fi

