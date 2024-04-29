#!/bin/bash

# 1 Ariketa

```bash

 clear

echo "Nor zara"
 whoami

echo "Zein direktoriotan zaude"
pwd
```

#!/bin/bash
 
# 2 Ariketa

```bash

echo "Sartu urte bat"

read URTEA

echo "Sartu hilabete bat"

read HILABETEA

cal $HILABETEA $URTEA 
```

#!/bin/bash

# 3 Ariketa

```bash

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
```

#!/bin/bash

# 4 Ariketa

```bash

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
```

#!/bin/bash

# 5 Ariketa

```bash

# Fitxategiaren izena eskatu
read -p "Idatzi fitxategiaren izena: " fitxategia

# Fitxategiaren existentzia egiaztatu
if [ -e "$fitxategia" ]; then
    echo "$fitxategia existitzen da."
    # Irakurtzeko baimena egiaztatu
    if [ -r "$fitxategia" ]; then
        echo "$fitxategia irakurtzeko baimena dauka."
    else
        echo "$fitxategia ez dauka irakurtzeko baimenik."
    fi
    # Idazteko baimena egiaztatu
    if [ -w "$fitxategia" ]; then
        echo "$fitxategia idazteko baimena dauka."
    else
        echo "$fitxategia ez dauka idazteko baimenik."
    fi
    # Exekutatzeko baimena egiaztatu
    if [ -x "$fitxategia" ]; then
        echo "$fitxategia exekutatzeko baimena dauka."
    else
        echo "$fitxategia ez dauka exekutatzeko baimenik."
    fi
else
    echo "$fitxategia ez da existitzen."
fi
```

#!/bin/bash

# 6 Ariketa

```bash

echo "Fitxategiaren izena sartu: "
read izena

if [ -f "$izena" ]; then
    echo "Fitxategiaren edukia:"
    cat "$izena"
else
    echo "Fitxategia ez da existitzen."
fi
```

#!/bin/bash

# 7 Ariketa

```bash

# Menua erakutsi
function menua_erakutsi() {
    echo "------ MENUA ------"
    echo "1. Karpeta tamaina ikusi"
    echo "2. Fitxategiak listatu"
    echo "3. Fitxategi bat sortu"
    echo "4. Karpeta sortu"
    echo "5. Karpeta eta fitxategiak ezabatu"
    echo "6. Irten"
    echo "--------------------"
}

# Karpeta tamaina ikusi
function karpeta_tamaina() {
    du -sh .
}

# Fitxategiak listatu
function fitxategiak_listatu() {
    ls -l
}

# Fitxategi bat sortu
function fitxategi_sortu() {
    read -p "Idatzi fitxategiaren izena: " fitxategia
    touch $fitxategia
}

# Karpeta sortu
function karpeta_sortu() {
    read -p "Idatzi karpetaaren izena: " karpeta
    mkdir $karpeta
}

# Karpeta eta fitxategiak ezabatu
function karpeta_fitxategiak_ezabatu() {
    read -p "Idatzi karpeta edo fitxategiaren izena: " izena
    rm -rf $izena
}

# Menua erakutsi
while true; do
    menua_erakutsi
    read -p "Zure aukera aukeratu (1-6): " aukera
    case $aukera in
        1) karpeta_tamaina ;;
        2) fitxategiak_listatu ;;
        3) fitxategi_sortu ;;
        4) karpeta_sortu ;;
        5) karpeta_fitxategiak_ezabatu ;;
        6) break ;;
        *) echo "Aukera okerra. Mesedez, aukeratu 1 eta 6 arteko zenbaki bat." ;;
    esac
    read -p "Jarraitu ahal duzu [ENTER] sakatuz..." input
    clear
done
```