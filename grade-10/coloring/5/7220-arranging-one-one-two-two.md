---
id: "7220"
title: "Ranger 1, 1, 2, 2, jusqu'à 50, 50"
grade: 10
theme: coloring
difficulty: 5
duration_min: 45
tags: [coloriage, parite, rangement, impossibilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Débutants », jeudi 26 matin (Yohann d'Anello), coloriages, exercice 21"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

On dispose des $100$ nombres
$$1,\ 1,\ 2,\ 2,\ 3,\ 3,\ \ldots,\ 50,\ 50$$
(chaque entier de $1$ à $50$ en deux exemplaires) et on veut les aligner sur une ligne de façon
que, pour chaque entier $k$, les deux exemplaires de $k$ soient séparés par exactement $k$ autres
nombres.

Par exemple, avec $1, 1, 2, 2, 3, 3$, le rangement
$$3,\ 1,\ 2,\ 1,\ 3,\ 2$$
convient : entre les deux $1$ il y a un nombre, entre les deux $2$ il y en a deux, entre les deux
$3$ il y en a trois.

Un tel rangement existe-t-il pour $1, 1, 2, 2, \ldots, 50, 50$ ?

## Hints

1. Numérote les $100$ places de $1$ à $100$ et colorie-les alternativement en rouge et en bleu.
   Combien y a-t-il de places de chaque couleur ?
2. Si un exemplaire de $k$ est sur la place $i$, sur quelle place est l'autre exemplaire ?
3. Pour quelles valeurs de $k$ les deux exemplaires occupent-ils deux places de la **même**
   couleur ? Et deux places de couleurs **différentes** ?
4. Compte combien de places rouges sont occupées par des nombres impairs. Ce compte peut-il
   tomber juste ?

## Solution

**Le coloriage.**

Alignons $100$ places, numérotées de $1$ à $100$, et colorions-les en alternance : places
impaires en rouge, places paires en bleu. Il y a donc
$$50 \text{ places rouges} \qquad \text{et} \qquad 50 \text{ places bleues.}$$

**Où tombent les deux exemplaires d'un même nombre ?**

Si un exemplaire de $k$ est sur la place $i$, il y a exactement $k$ nombres entre les deux
exemplaires, donc l'autre exemplaire est sur la place
$$i + k + 1 .$$

Les deux places $i$ et $i+k+1$ ont la même couleur si et seulement si $i$ et $i+k+1$ ont la même
parité, c'est-à-dire si et seulement si $k+1$ est pair, c'est-à-dire si et seulement si $k$ est
**impair**.

Autrement dit :

- si $k$ est **impair**, les deux exemplaires de $k$ occupent deux places **de la même couleur** ;
- si $k$ est **pair**, les deux exemplaires de $k$ occupent **une place rouge et une place
  bleue**.

**Le comptage.**

Parmi $1, 2, \ldots, 50$, il y a $25$ entiers pairs et $25$ entiers impairs.

Les $25$ entiers pairs occupent en tout $25$ places rouges et $25$ places bleues (une de chaque,
par paire).

Il reste donc
$$50 - 25 = 25 \text{ places rouges} \qquad \text{et} \qquad 50 - 25 = 25 \text{ places bleues}$$
pour les $25$ entiers impairs.

Mais chaque entier impair occupe **deux places de la même couleur**, donc deux places rouges ou
deux places bleues. Si $a$ des entiers impairs prennent deux places rouges et $b$ en prennent deux
bleues, alors
$$2a = 25 \qquad \text{et} \qquad 2b = 25 .$$

Or $25$ est impair : il ne peut pas être le double d'un entier.

**Conclusion.**

Il y a contradiction : un tel rangement n'existe pas.

**Non, il est impossible de ranger $1, 1, 2, 2, \ldots, 50, 50$ de cette façon.**

## Going further

Ces rangements s'appellent des **suites de Langford**. Le même argument montre qu'il n'y a pas de
solution pour $n = 50$, ni pour $n = 1$, $2$, $5$, $6$, $9$, $10$, etc.

En fait, le comptage ci-dessus fonctionne exactement lorsque le nombre d'entiers impairs entre $1$
et $n$ est impair. On démontre ainsi qu'un rangement ne peut exister que si $n$ est de la forme
$4m$ ou $4m + 3$. Et réciproquement, pour tous ces $n$ il en existe bien un, mais c'est nettement
plus difficile à établir. L'exemple de l'énoncé correspond à $n = 3 = 4 \times 0 + 3$.
