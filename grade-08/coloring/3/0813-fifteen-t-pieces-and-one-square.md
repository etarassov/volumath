---
id: "0813"
title: "Quinze T et un carré"
grade: 8
theme: coloring
difficulty: 3
duration_min: 20
tags: [coloriage, pavage, echiquier, tetraminos, parite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers. Démonstrations par coloriage »"
  reference: "Moscou.Coloriage.pdf, exercice 16, d'après Arthur Engel, « Solutions d'expert »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Moscou.Coloriage.pdf"
---

## Statement

On dispose de deux sortes de pièces de quatre cases : le **tétramino en T**, formé de trois cases alignées et d'une quatrième collée au milieu, et le **tétramino carré**, formé de quatre cases en carré.

![Un tétramino en T et un tétramino carré](0813-figure-1.svg)

Montrer qu'un échiquier $8 \times 8$ ne peut pas être entièrement recouvert par $15$ tétraminos en T et $1$ tétramino carré.

Les pièces peuvent être tournées dans tous les sens ; elles suivent le quadrillage, ne se chevauchent pas et ne dépassent pas de l'échiquier.

## Hints

1. Vérifie le compte des cases : $16$ pièces de $4$ cases, et un échiquier de $64$ cases. Le compte tombe juste, l'obstacle est ailleurs.
2. Combien de cases de chaque couleur l'échiquier $8 \times 8$ contient-il ?
3. Combien de cases noires un tétramino carré recouvre-t-il ? Et un tétramino en T ? Compare les deux comportements.
4. Appelle $k$ le nombre de tétraminos en T qui recouvrent trois cases noires, et compte les cases noires de l'échiquier de deux façons.

## Solution

**Étape 1. Le compte des cases tombe juste.**

L'échiquier a $8 \times 8 = 64$ cases, et $16$ pièces de $4$ cases en recouvrent $16 \times 4 = 64$. Rien à signaler de ce côté.

**Étape 2. Les couleurs.**

Sur un échiquier $8 \times 8$, il y a
$$32 \text{ cases noires} \qquad \text{et} \qquad 32 \text{ cases blanches}.$$

**Étape 3. Ce que recouvre chaque sorte de pièce.**

*Le tétramino carré* occupe deux cases sur une ligne et deux cases juste en dessous. Sur une ligne, deux cases voisines sont de couleurs différentes : il recouvre donc $2$ cases noires et $2$ cases blanches, où qu'on le pose.

*Le tétramino en T* : ses trois cases alignées ont des couleurs qui alternent, donc deux d'une couleur et une de l'autre, la case du milieu étant de la couleur minoritaire. La quatrième case touche la case du milieu par un côté, donc elle est de la couleur majoritaire. Un tétramino en T recouvre donc toujours **$3$ cases d'une couleur et $1$ de l'autre**.

**Étape 4. Compter les cases noires de deux façons.**

Supposons qu'un recouvrement existe. Parmi les $15$ tétraminos en T, appelons $k$ le nombre de ceux qui recouvrent $3$ cases noires ; les $15 - k$ autres en recouvrent $1$. Le tétramino carré en recouvre $2$.

Le nombre total de cases noires vaut donc
$$2 + 3k + 1 \times (15 - k) = 2k + 17.$$

Ce nombre est impair, quel que soit $k$. Or l'échiquier contient $32$ cases noires, un nombre pair.

**Conclusion.** Ce recouvrement est impossible.

*Ce que l'argument dit vraiment.* Le tétramino carré est « neutre » : comme il recouvre autant de cases de chaque couleur, il ne change pas la parité. Ce qui bloque, c'est le nombre **impair** de tétraminos en T.

## Going further

1. Remplace le tétramino carré par un seizième tétramino en T. Le comptage interdit-il encore le recouvrement ? Essaie ensuite de construire un tel pavage en découpant l'échiquier en quatre carrés $4 \times 4$.
2. Remplace le tétramino carré par un tétramino droit (quatre cases alignées). La conclusion change-t-elle ?
