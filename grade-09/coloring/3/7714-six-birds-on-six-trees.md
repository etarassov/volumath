---
id: "7714"
title: "Six oiseaux sur six arbres"
grade: 9
theme: coloring
difficulty: 3
duration_min: 30
tags: [coloriage, invariant, parite, hexagone]
adapted_from: null
see_also: ["7930"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : stratégies de base », mardi 19 matin (François Lo Jacomo), exercice 10"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Six arbres sont plantés aux six sommets d'un hexagone régulier. Un oiseau se pose sur chaque arbre, soit six oiseaux en tout.

Toutes les minutes, **deux** oiseaux s'envolent en même temps, et chacun des deux se pose sur l'un des deux arbres voisins du sien (les deux oiseaux choisissent indépendamment l'un de l'autre, et ils peuvent partir du même arbre ou d'arbres différents).

Peut-on, au bout d'un certain nombre de minutes, avoir les six oiseaux réunis sur un même arbre ?

## Hints

1. Numérote les arbres de $1$ à $6$ en tournant autour de l'hexagone, puis colorie-les en deux couleurs, en alternant.
2. Quand un oiseau change d'arbre, il va sur un arbre voisin. De quelle couleur est ce nouvel arbre ?
3. Compte les oiseaux posés sur les arbres d'une seule des deux couleurs. De combien ce nombre peut-il varier en une minute ?
4. Combien vaut ce nombre au départ ? Et combien vaudrait-il si tous les oiseaux étaient sur un même arbre ?

## Solution

**Non, c'est impossible.**

**L'idée : on colorie les arbres en deux couleurs alternées, et on compte les oiseaux d'une seule couleur.**

**Le coloriage.** Numérotons les arbres de $1$ à $6$ en tournant autour de l'hexagone, et colorions-les en alternance :

- les arbres $1$, $3$, $5$ en **noir** ;
- les arbres $2$, $4$, $6$ en **blanc**.

Dans un hexagone, les voisins de l'arbre $1$ sont les arbres $2$ et $6$, les voisins de l'arbre $2$ sont les arbres $1$ et $3$, et ainsi de suite. Autrement dit, **chaque arbre noir n'a que des voisins blancs, et chaque arbre blanc n'a que des voisins noirs.**

**Ce que fait un déplacement.** Quand un oiseau passe d'un arbre à un arbre voisin, il change donc forcément de couleur : un oiseau qui était sur un arbre noir se retrouve sur un arbre blanc, et réciproquement.

Notons $n$ le nombre d'oiseaux posés sur les arbres **noirs**. En une minute, deux oiseaux se déplacent, et chacun change de couleur. Il y a trois cas :

- les deux partaient d'arbres noirs : ils passent au blanc, donc $n$ diminue de $2$ ;
- les deux partaient d'arbres blancs : ils passent au noir, donc $n$ augmente de $2$ ;
- l'un partait du noir et l'autre du blanc : l'un s'en va, l'autre arrive, donc $n$ ne change pas.

Dans tous les cas, $n$ varie de $-2$, de $0$ ou de $+2$. **La parité de $n$ ne change jamais.**

**On applique.** Au départ, il y a un oiseau sur chacun des six arbres, donc un oiseau sur l'arbre $1$, un sur l'arbre $3$ et un sur l'arbre $5$ :

$$n = 3, \qquad \text{qui est impair}.$$

Donc $n$ restera impair pour toujours.

Or si les six oiseaux étaient réunis sur un même arbre :

- si cet arbre est noir, alors $n = 6$ ;
- s'il est blanc, alors $n = 0$.

Dans les deux cas $n$ serait **pair**, ce qui est impossible.

**Conclusion : les six oiseaux ne pourront jamais se retrouver tous sur le même arbre.**

## Going further

Avec **sept** arbres en heptagone, le coloriage en deux couleurs alternées ne marche plus : en faisant le tour, on retombe sur un conflit. Et de fait, avec un nombre impair d'arbres, le rassemblement devient possible. C'est un bon exemple de problème où la réponse change du tout au tout selon la parité.
