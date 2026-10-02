---
id: "11241"
title: "Le fabricant de jouets"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [tiroirs, sommes partielles, jours consecutifs]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 4 (combinatoire)"
  reference: "2017-10_ofm-2016-2017-envoi-4.pdf, Exercices communs, exercice 7 ; corrigé 2017-10_ofm-2016-2017-envoi-4-solutions.pdf (énoncé précisé : le fabricant travaille sans s'arrêter et une année compte 365 jours ; le corrigé écrit « plus grand que 2n » là où il faut « au moins 2n »)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-4.pdf"
---

## Statement

Un fabricant de jouets travaille tous les jours, sans jamais s'arrêter, à partir du $1^{\text{er}}$
janvier d'une certaine année. Chaque jour, il fabrique au moins un jouet. Pendant chaque année
(une année compte $365$ jours), il fabrique au plus $725$ jouets.

Montrer que, pour tout entier $n \geqslant 1$, il existe une période de jours consécutifs pendant
laquelle il a fabriqué exactement $n$ jouets.

## Hints

1. Note $S_i$ le nombre total de jouets fabriqués pendant les $i$ premiers jours, avec $S_0 = 0$.
   Que veut dire « pendant les jours $i + 1$ à $j$, il a fabriqué exactement $n$ jouets » en termes
   des nombres $S_i$ ?
2. On cherche donc deux indices $i < j$ avec $S_j = S_i + n$. Regarde ensemble les nombres $S_i$ et
   les nombres $S_i + n$ : si deux d'entre eux sont égaux, de quels nombres peut-il s'agir ?
3. Pendant une seule année, il n'y a pas assez de nombres pour conclure si $n$ est grand. Regarde
   plutôt $k$ années de suite, et compare le nombre de valeurs prises avec la taille de
   l'intervalle qui les contient.
4. Remarque que $725 = 2 \times 365 - 5$.

## Solution

Numérotons les jours $1$, $2$, $3$, … à partir du $1^{\text{er}}$ janvier de la première année.
Pour tout entier $i \geqslant 0$, notons $S_i$ le nombre total de jouets fabriqués pendant les $i$
premiers jours, avec $S_0 = 0$.

**Ce que l'on cherche.** Pour $0 \leqslant i < j$, le nombre de jouets fabriqués du jour $i + 1$
au jour $j$ est $S_j - S_i$. Il suffit donc de trouver deux indices $i < j$ tels que
$$S_j = S_i + n .$$

**Deux propriétés des nombres $S_i$.**

- Comme il fabrique au moins un jouet chaque jour, $S_0 < S_1 < S_2 < \cdots$ : les $S_i$ sont des
  entiers **tous différents**, et ils augmentent.
- Soit $k \geqslant 1$ un entier. Les $365k$ premiers jours forment exactement $k$ années, et il
  fabrique au plus $725$ jouets par année, donc $S_{365k} \leqslant 725k$.

**L'argument des tiroirs.** Fixons un entier $k \geqslant 1$, que l'on choisira plus tard, et posons
$N = 365k$. Considérons les deux listes de nombres entiers
$$S_0,\ S_1,\ \ldots,\ S_N \qquad \text{et} \qquad S_0 + n,\ S_1 + n,\ \ldots,\ S_N + n .$$

Chaque liste contient $N + 1$ nombres, cela fait $2N + 2 = 730k + 2$ nombres en tout. Ils sont tous
compris entre $0$ et $S_N + n$, donc entre $0$ et $725k + n$. Il y a $725k + n + 1$ entiers dans cet
intervalle.

Choisissons $k = n$. Alors
$$730k + 2 - (725k + n + 1) = 5n + 2 - n - 1 = 4n + 1 > 0 ,$$
donc il y a plus de nombres que d'entiers possibles : deux des nombres des deux listes sont égaux.

Ces deux nombres ne peuvent pas être dans la même liste. En effet, les $S_i$ sont tous différents,
et les $S_i + n$ aussi. Il existe donc deux indices $i$ et $j$ avec
$$S_j = S_i + n .$$
Comme $n \geqslant 1$, on a $S_j > S_i$, donc $j > i$, car les $S_i$ augmentent.

Ainsi, du jour $i + 1$ au jour $j$, le fabricant a fabriqué $S_j - S_i = n$ jouets.

**Conclusion : pour tout entier $n \geqslant 1$, il existe des jours consécutifs (du jour $i + 1$
au jour $j$) pendant lesquels le fabricant a fabriqué exactement $n$ jouets.**

**Pourquoi regarder plusieurs années.** Avec une seule année ($k = 1$), on a $732$ nombres
dans un intervalle de $726 + n$ entiers, ce qui ne suffit que si $n \leqslant 5$. C'est la marge de
$5$ jouets par an (car $725 = 2 \times 365 - 5$) qui, accumulée sur $n$ années, fait marcher
l'argument pour tout $n$.

## Going further

- Le nombre $725$ ne peut pas être remplacé par $730$. Si le fabricant fabrique exactement $2$ jouets
  chaque jour, il en fabrique $730$ par an, et toute période de jours consécutifs donne un nombre
  pair de jouets : on n'obtient jamais exactement $1$ jouet.
- On peut aussi raisonner avec les restes dans la division par $n$ : parmi $S_0, \ldots, S_n$, deux
  ont le même reste, ce qui donne une période dont le nombre de jouets est un multiple de $n$.
  Le cas « exactement $n$ » demande plus de travail, et c'est ce que fait l'argument ci-dessus.
