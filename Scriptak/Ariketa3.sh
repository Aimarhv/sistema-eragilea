#!/bin/bash

# 3 Ariketa

# Galdetu erabiltzaileari izena idazteko
echo "Mesedez, idatzi izen bat:"

read Izena1

# Galdetu erabiltzaileari izena idazteko
echo "Mesedez, idatzi beste izen bat"

read Izena2


if [ "$Izena1" = "$Izena2" ]; then 
    echo "Izena berdina zara"
else
    echo "Izena desberdina zara"
fi
