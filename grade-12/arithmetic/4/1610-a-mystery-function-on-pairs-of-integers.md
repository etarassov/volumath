---
id: "1610"
title: "Une fonction mystère sur les couples d'entiers"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [ppcm, pgcd, algorithme-deuclide, equation-fonctionnelle]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2B, Olympiad Style Problems 2"
  reference: "Handout-2015-1715.pdf, problème 4 (AIME 1988)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2015-1715.pdf"
---

## Statement

Une fonction $f$ associe à chaque couple $(x, y)$ d'entiers strictement positifs un nombre
$f(x,y)$, de façon que les trois règles suivantes soient toujours vérifiées :

$$f(x,x) = x, \qquad (1)$$
$$f(x,y) = f(y,x), \qquad (2)$$
$$(x+y)\,f(x,y) = y\,f(x,\,x+y). \qquad (3)$$

Montrer que ces trois règles suffisent à déterminer $f(14, 52)$, et calculer cette valeur.

## Hints

1. Commence par des petits couples. Avec $(1,1)$ tu connais la valeur ; utilise la règle (3) avec $x = y = 1$ pour obtenir $f(1,2)$, puis $f(1,3)$, et ainsi de suite.
2. La règle (3) fait grandir le deuxième argument. Retourne-la : exprime $f(x, y)$ en fonction de $f(x, y-x)$ quand $y > x$.
3. Cette relation, combinée à la règle (2), c'est exactement l'algorithme d'Euclide par soustractions. Applique-la à $(14, 52)$ et descends jusqu'à un couple $(x,x)$.
4. Une fois le résultat obtenu, compare-le à $\mathrm{PPCM}(14,52)$. Puis vérifie que $f(x,y) = \mathrm{PPCM}(x,y)$ satisfait bien les trois règles.

## Solution

**L'idée : la règle (3), lue à l'envers, est l'algorithme d'Euclide. Elle fait descendre
n'importe quel couple jusqu'à un couple $(x,x)$, où la règle (1) donne la réponse.**

**Étape 1. Retourner la règle (3).**

Soient $x < y$. Posons $y' = y - x$, de sorte que $y = x + y'$ avec $y' \ge 1$. La règle (3)
appliquée au couple $(x, y')$ s'écrit
$$(x + y')\,f(x,y') = y'\,f(x,\,x+y') , \qquad\text{c'est-à-dire}\qquad y\,f(x, y-x) = (y-x)\,f(x,y).$$

Donc, pour $y > x$,
$$f(x,y) = \frac{y}{\,y-x\,}\; f(x,\,y-x). \qquad (\star)$$

Cette formule remplace le couple $(x,y)$ par le couple $(x, y-x)$, dont la somme est plus
petite. En s'aidant de la règle (2) pour remettre le plus petit nombre en première position,
on finit toujours par tomber sur un couple $(x,x)$ : c'est l'algorithme d'Euclide, version
soustractions. La valeur de $f$ est donc entièrement déterminée par les trois règles.

**Étape 2. Descendre de $(14, 52)$.**

Appliquons $(\star)$ et la règle (2) :

$$f(2,2) = 2 \quad\text{par (1)}.$$
$$f(2,4) = \frac{4}{2}\,f(2,2) = 4 , \qquad\text{donc } f(4,2) = 4 .$$
$$f(4,6) = \frac{6}{2}\,f(4,2) = 3 \times 4 = 12 .$$
$$f(4,10) = \frac{10}{6}\,f(4,6) = \frac{10}{6} \times 12 = 20 , \qquad\text{donc } f(10,4) = 20 .$$
$$f(10,14) = \frac{14}{4}\,f(10,4) = \frac{14}{4} \times 20 = 70 , \qquad\text{donc } f(14,10) = 70 .$$
$$f(14,24) = \frac{24}{10}\,f(14,10) = \frac{24}{10} \times 70 = 168 .$$
$$f(14,38) = \frac{38}{24}\,f(14,24) = \frac{38}{24} \times 168 = 266 .$$
$$f(14,52) = \frac{52}{38}\,f(14,38) = \frac{52}{38} \times 266 = 364 .$$

(On a suivi la chaîne $52 \to 38 \to 24 \to 10$, puis $14 \to 4$, puis $10 \to 6 \to 2$.)

**Conclusion : $f(14,52) = 364$.**

**Étape 3. Reconnaître la fonction.**

$$\mathrm{PGCD}(14,52) = 2, \qquad \mathrm{PPCM}(14,52) = \frac{14 \times 52}{2} = 364 .$$

Ce n'est pas une coïncidence : $f$ est le PPCM. Vérifions les trois règles pour
$f(x,y) = \mathrm{PPCM}(x,y)$.

- (1) : $\mathrm{PPCM}(x,x) = x$. ✔
- (2) : le PPCM est symétrique. ✔
- (3) : notons $d = \mathrm{PGCD}(x,y)$. Tout diviseur commun de $x$ et $y$ divise $x+y$, et
  tout diviseur commun de $x$ et $x+y$ divise $(x+y)-x = y$ : donc
  $\mathrm{PGCD}(x, x+y) = d$ également. En utilisant $\mathrm{PPCM}(a,b) \times \mathrm{PGCD}(a,b) = ab$ :
  $$(x+y)\,\mathrm{PPCM}(x,y) = (x+y)\,\frac{xy}{d}
  \qquad\text{et}\qquad
  y\,\mathrm{PPCM}(x,x+y) = y\,\frac{x(x+y)}{d} .$$
  Les deux membres sont égaux. ✔

## Going further

La descente de l'étape 2 n'a jamais quitté les entiers, alors que les formules contiennent
des fractions : c'est normal, puisque chaque valeur intermédiaire est un PPCM.

Cette descente est l'algorithme d'Euclide *par soustractions*, qui est plus lent que la
version avec divisions. Pour $14$ et $52$, la version avec divisions ne demande que quatre
lignes :
$$52 = 3 \times 14 + 10, \qquad 14 = 1 \times 10 + 4, \qquad 10 = 2 \times 4 + 2, \qquad 4 = 2 \times 2 ,$$
et donne directement $\mathrm{PGCD}(14,52) = 2$, donc $\mathrm{PPCM}(14,52) = \dfrac{14 \times 52}{2} = 364$.
