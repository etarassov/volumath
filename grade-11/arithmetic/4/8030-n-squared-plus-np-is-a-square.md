---
id: "8030"
title: "n² + np est un carré, pour un seul n"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [carre parfait, nombres premiers, difference de deux carres, unicite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, test de mi-parcours du dimanche 20 août, groupe C, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Soit $p$ un nombre premier impair.

Montrer qu'il existe un et un seul entier $n \geqslant 1$ tel que $n^2 + np$ soit le carré d'un
entier, et déterminer cet entier $n$.

## Hints

1. Fais le cas $p = 3$, puis $p = 5$, puis $p = 7$ à la main. Les réponses ont une tête bien
   reconnaissable.
2. Pose $n^2 + np = m^2$. Le membre de gauche n'est pas un carré parfait, mais il n'en est pas
   loin : complète-le en multipliant l'égalité par $4$.
3. Tu obtiens une différence de deux carrés égale à $p^2$. Factorise-la.
4. Un produit de deux entiers positifs vaut $p^2$ : combien de possibilités, si $p$ est
   premier ?

## Solution

**On complète le carré.** Supposons $n^2 + np = m^2$ avec $n \geqslant 1$ et $m \geqslant 0$
entiers. Multiplions par $4$ :

$$4n^2 + 4np = 4m^2 .$$

À gauche, $4n^2 + 4np = (2n + p)^2 - p^2$. L'égalité devient donc

$$(2n + p)^2 - (2m)^2 = p^2 ,$$

c'est-à-dire, en factorisant la différence de deux carrés,

$$(2n + p - 2m)\,(2n + p + 2m) = p^2 .$$

**Les deux facteurs sont des entiers positifs.** Notons $u = 2n + p - 2m$ et
$v = 2n + p + 2m$. Leur produit vaut $p^2 > 0$, et $v = 2n + p + 2m > 0$ puisque $n$, $p$ et
$m$ sont positifs. Donc $u > 0$ aussi, et $u \leqslant v$.

**Il n'y a que deux décompositions possibles.** Comme $p$ est premier, les diviseurs positifs
de $p^2$ sont $1$, $p$ et $p^2$. Les couples $(u, v)$ avec $uv = p^2$ et $u \leqslant v$ sont
donc

$$(u, v) = (1,\ p^2) \qquad \text{ou} \qquad (u, v) = (p,\ p).$$

**Le cas $(p, p)$ est impossible.** Si $u = v$, alors $4m = v - u = 0$, donc $m = 0$, donc
$n^2 + np = 0$, donc $n(n + p) = 0$. Comme $n + p > 0$, cela force $n = 0$, ce qui est exclu
par $n \geqslant 1$.

**Le cas $(1, p^2)$ donne la réponse.** On a alors

$$u + v = 2\,(2n + p) = 1 + p^2 ,$$

donc

$$4n + 2p = p^2 + 1, \qquad \text{d'où} \qquad 4n = p^2 - 2p + 1 = (p - 1)^2 ,$$

et finalement

$$n = \left(\frac{p-1}{2}\right)^2 .$$

C'est bien un entier, puisque $p$ est impair et donc $p - 1$ est pair.

**Vérification.** Pour cette valeur de $n$,

$$n + p = \frac{(p-1)^2}{4} + p = \frac{p^2 - 2p + 1 + 4p}{4} = \frac{(p+1)^2}{4} = \left(\frac{p+1}{2}\right)^2 ,$$

donc

$$n^2 + np = n\,(n + p) = \left(\frac{p-1}{2}\right)^2 \left(\frac{p+1}{2}\right)^2 = \left(\frac{p^2 - 1}{4}\right)^2 ,$$

qui est bien le carré d'un entier, car $p^2 - 1 = (p-1)(p+1)$ est un produit de deux entiers
pairs consécutifs, donc un multiple de $4$ (et même de $8$).

**L'unique entier qui convient est $n = \left(\dfrac{p-1}{2}\right)^2$.**

## Going further

Quelques valeurs : pour $p = 3$ on trouve $n = 1$ et $1 + 3 = 4 = 2^2$ ; pour $p = 5$,
$n = 4$ et $16 + 20 = 36 = 6^2$ ; pour $p = 7$, $n = 9$ et $81 + 63 = 144 = 12^2$.

C'est la **primalité** de $p$ qui donne l'unicité : elle limite à deux le nombre de façons
d'écrire $p^2$ comme produit de deux facteurs. Prenons $p = 9$, qui n'est pas premier : la
formule donne encore $n = 16$, avec $16 \times 25 = 400 = 20^2$, mais il y a en plus
$n = 3$, avec $3 \times 12 = 36 = 6^2$. L'unicité est perdue, exactement parce que $81$ a
cinq diviseurs au lieu de trois.
