---
id: "0355"
title: "Quatre lieux et quatre distances"
grade: 9
theme: geometry
difficulty: 3
duration_min: 15
tags: [inegalite-triangulaire, distance, alignement, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 8–9 класс, второе полугодие, часть II, пособие для преподавателей"
  reference: "AU2.pdf, листок 2, задача 5"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

Dans le village de Pierre :

- la maison de Pierre est à $200$ m de la boulangerie ;
- la boulangerie est à $300$ m du terrain de football ;
- le terrain de football est à $500$ m de l'école ;
- la maison de Pierre est à $1$ km de l'école.

Toutes ces distances sont mesurées en ligne droite, à vol d'oiseau.

À quelle distance la maison de Pierre est-elle du terrain de football ?

## Hints

1. Donne un nom à chaque lieu : $M$ la maison, $B$ la boulangerie, $F$ le terrain de football, $E$ l'école. Récris les quatre distances données avec ces lettres. Attention aux unités : $1$ km $= 1000$ m.
2. Rappelle-toi l'inégalité triangulaire : pour trois points $X$, $Y$, $Z$ quelconques, on a toujours $XZ \le XY + YZ$. Applique-la aux trois points $M$, $B$, $F$. Qu'obtiens-tu sur la distance cherchée ?
3. Applique-la maintenant aux trois points $M$, $F$, $E$. Cette fois, l'information va dans l'autre sens.
4. Tu as obtenu à la fois $MF \le \dots$ et $MF \ge \dots$. Compare les deux nombres.

## Solution

Notons $M$ la maison de Pierre, $B$ la boulangerie, $F$ le terrain de football et $E$ l'école. En mètres, les données sont

$$MB = 200, \qquad BF = 300, \qquad FE = 500, \qquad ME = 1000.$$

On cherche $MF$.

**L'idée : encadrer $MF$, une fois par le haut et une fois par le bas.**

On se sert uniquement de l'inégalité triangulaire : pour trois points $X$, $Y$, $Z$,

$$XZ \le XY + YZ.$$

**Majoration.** Pour aller de la maison au terrain, on peut passer par la boulangerie. L'inégalité triangulaire appliquée à $M$, $B$, $F$ donne

$$MF \le MB + BF = 200 + 300 = 500.$$

**Minoration.** Pour aller de la maison à l'école, on peut passer par le terrain. L'inégalité triangulaire appliquée à $M$, $F$, $E$ donne

$$ME \le MF + FE, \qquad \text{c'est-à-dire} \qquad 1000 \le MF + 500,$$

donc

$$MF \ge 500.$$

**On rassemble.** On a à la fois $MF \le 500$ et $MF \ge 500$, donc

$$MF = 500.$$

**Conclusion.** La maison de Pierre est à $500$ m du terrain de football.

**Ce que cela dit de la carte du village.**

Les deux inégalités écrites plus haut sont en réalité des égalités. Or $XZ \le XY + YZ$ devient une égalité exactement lorsque le point $Y$ se trouve sur le segment $[XZ]$.

- De $MF = MB + BF$ on déduit que $B$ est sur le segment $[MF]$ ;
- de $ME = MF + FE$ on déduit que $F$ est sur le segment $[ME]$.

Les quatre lieux sont donc alignés, dans l'ordre maison, boulangerie, terrain, école.

![Les quatre lieux du village sont alignés](0355-figure-1.svg)

Le village est construit le long d'une seule rue bien droite.

## Going further

1. On garde les trois premières distances ($200$ m, $300$ m et $500$ m). Quelle est la plus grande distance possible entre la maison et l'école ? Justifier.
2. Si la maison était à $1\,100$ m de l'école, les trois autres distances restant les mêmes, la situation serait-elle possible ?
