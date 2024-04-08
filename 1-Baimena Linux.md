# Baimenak Linux
- [Baimenak Linux](#baimenak-linux)
  - [Fitxategi eta direktorioen baimenak](#fitxategi-eta-direktorioen-baimenak)
    - [Baimen taldeak](#baimen-taldeak)
    - [Baimenak esleitzen modu sinbolikoan](#baimenak-esleitzen-modu-sinbolikoan)
    - [Baimenak modu oktalea](#baimenak-modu-oktalea)
  - [Sticky bit baimena](#sticky-bit-baimena)

## Fitxategi eta direktorioen baimenak

Fitxategi eta direktorioen baimenak hurrengo aginduarekin ikusi ditzakegu.

```bash
ls -a
```

![Aginduaren emaitza ls -a](image.png)

### Baimen taldeak

**- Jabea (user)** : Fitxategi bat sortzen dugunean, sortzailea jabea izango da defektuz.
**- Talde (group)** : Fitxategi baten jabetza talde bati ere bai dagokio.
**- Besteak (other)** : Jabeak edo taldekideak ez direnak.

![alt text](image-1.png)

### Baimenak esleitzen modu sinbolikoan

Linux-en baimen motak eta `chmod` aginduaren erabilera hainbat motatan azaltzen dira. Hemen daude batzuk:

1. **Baimen motak:** Linux-en, fitxategi edo direktorio bakoitzak hiru baimen mota izan ditzake: "owner" (jabea), "group" (taldea) eta "others" (besteak). Baimen hauek aldatu daitezke, erabiltzaileak eta taldeak fitxategi edo direktorioetan zer egin ahal izateko.

2. **`chmod` agindua:** `chmod` agindua baimenak aldatzeko erabiltzen da. Agindu hau erabiltzean, hiru baimen moten balioak aldatu daitezke: "read" (irakurri), "write" (idatzi) eta "execute" (exekutatu). 

3. **Fitxategi eta direktorioen baimenak aldatzea:** Adibidez, `chmod` agindua erabiliz, fitxategi bati exekutatzeko baimena eman dezakegu erabiltzaileari bakarrik (`chmod u+x fitxategia`), edo talde guztiei idazteko baimena kendu dezakegu (`chmod g-w fitxategia`).

4. **Simbolo eta zenbaki notazioa:** `chmod` agindua hiru hizkuntza notazioetan idaz daiteke: simbolikoa eta zenbakizkoa. Simbolikoak ("r", "w", "x") irakurri, idatzi eta exekutatu baimenak adierazten ditu, eta "u" (erabiltzailea), "g" (taldea) eta "o" (besteak) erabiltzaile, talde edo besteak diren baimenak aldatzeko erabiltzen dira. Zenbakizko notazioak baimenak 3 bitetan adierazten ditu: "read" (4), "write" (2) eta "execute" (1).

5. **Erabilienezko adibideak:** `chmod 755 fitxategia` fitxategiari irakurri, idatzi eta exekutatzeko baimena ematen dio erabiltzaileari eta taldeari, eta exekutatzeko baimena besteei. `chmod u=rw,go=r fitxategia` erabiltzeko, fitxategia irakurri eta idatzi baimenak ematen zaizkie jabeak, eta beste guztiei irakurri baimena.

`chmod` aginduaren erabilera hauen laguntzarekin, Linux sistema eragileetan baimenak nola kudeatu ikasten da, fitxategiak eta direktorioak seguruak eta egokiak mantentzeko.

Adibidez, jabeari (user) exekuzio baimena horrela eman ahal diegu
```bash
chmod u+x froga.txt
```

Horrela, taldeari eta besteei exekuzio eta idazteko baimenak emango dizkiegu.
```bash
chmod go+wx froga.txt
```

Besteei, irakurtzeko baimena horrela kendu ditzaiokegu.
```bash
chmod o-r froga.txt
```

### Baimenak modu oktalea

- 0 = 000 = --- = baimenarik gabe
- 1 = 001 = --x = exekuzioa
- 2 = 010 = -w- = idazteko
- 3 = 011 = -wx = idazteko eta exekutatzeko baimena
- 4 = 100 = r- = irakurtzeko baimena
- 5 = 101 = r-w = irakurtzeko eta exekutatzeko baimena
- 6 = 110 = rx- = irakurtzeko eta idazteko baimena
- 7 = 111 = rwx = baimena guztiak

Adibidez baimen guztiak kentzeko
```bash
chmod 000 froga.txt
```

Baimen guztiak gehitzeko
```bash
chmod 777 froga.txt
```

Erabiltzaileari baimen guztiak emateko eta besteei edo taldekidei irakurtzeko eta exekuzio baimena emateko 
```bash
chmod 755 froga.txt
```
## Sticky bit baimena

Sticky bita daukan fitxategia edo direktorioa bat bakarrik jabea edo rootek aldatu ahal dio izena edo ezabatu ahal du 

Sticky bita gehitzeko 
```bash
chmod +t froga.txt
```

![alt text](image-2.png)