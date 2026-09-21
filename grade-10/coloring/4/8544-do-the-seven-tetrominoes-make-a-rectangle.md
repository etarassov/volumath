---
id: "8544"
title: "Les sept tétraminos forment-ils un rectangle ?"
grade: 10
theme: coloring
difficulty: 4
duration_min: 40
tags: [coloriage-en-damier, pavage, parite, tetramino]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Entraînement de mi-parcours » du Groupe B, exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

On considère les sept tétraminos ci-dessous. Chacun est formé de quatre cases collées par
les côtés.

![Les sept tétraminos : I, O, T, S, Z, L, J](8544-figure-1.svg)

Émile possède $2023$ exemplaires de chacun de ces sept tétraminos, soit
$7 \times 2023$ pièces en tout.

En s'autorisant à tourner les pièces, peut-il les disposer toutes, sans chevauchement et sans
laisser de trou, de manière à former un rectangle plein ?

## Hints

1. Commence par le réflexe habituel : colorie le rectangle comme un échiquier, en noir et blanc.
2. Pour chaque tétramino, compte le nombre de cases noires qu'il recouvre. Six des sept pièces se comportent de la même façon ; une seule est différente.
3. Le total des cases noires recouvertes dépend donc du nombre de pièces de ce type particulier. Quelle est sa parité ?
4. Compare avec le nombre de cases noires que contient vraiment le rectangle.

## Solution

**Le coloriage.** Supposons qu'un tel rectangle existe, et colorions-le comme un échiquier :
deux cases voisines par un côté sont toujours de couleurs différentes.

**Ce que recouvre chaque pièce.** Regardons chacune des sept pièces, posée n'importe où et
tournée comme on veut.

- Les pièces $I$, $O$, $S$, $Z$, $L$ et $J$ recouvrent toujours **deux cases noires et deux
  cases blanches**. Pour $I$ (quatre cases alignées) et pour $O$ (un carré $2 \times 2$),
  c'est immédiat. Pour $S$, $Z$, $L$ et $J$, chaque pièce se décompose en deux dominos de
  deux cases voisines, et chaque domino recouvre une case de chaque couleur.
- La pièce $T$, elle, recouvre **trois cases d'une couleur et une seule de l'autre**. En
  effet, trois de ses cases sont alignées : de couleurs alternées, elles donnent deux d'une
  couleur et une de l'autre ; la quatrième case, collée au milieu de cette ligne, est de la
  couleur opposée à celle du milieu, donc de la même couleur que les deux extrémités.

Donc un $T$ recouvre un nombre **impair** de cases noires ($3$ ou $1$), tandis que chacune
des six autres pièces en recouvre un nombre **pair** (exactement $2$).

**Le compte total.** Le nombre total de cases noires recouvertes est la somme des
contributions de toutes les pièces. Les pièces autres que les $T$ apportent chacune un
nombre pair, donc n'influencent pas la parité. Les $2023$ pièces en $T$ apportent chacune un
nombre impair.

La parité du total est donc celle de $2023$, c'est-à-dire **impaire**.

**Ce que contient vraiment le rectangle.** Le rectangle est pavé par
$7 \times 2023 = 14\,161$ pièces de quatre cases, donc il a

$$4 \times 7 \times 2023 = 56\,644$$

cases. Ce nombre est pair. Or, dans un rectangle dont le nombre de cases est pair, il y a
exactement autant de cases noires que de cases blanches : chacune des deux couleurs occupe

$$\frac{56\,644}{2} = 28\,322$$

cases, ce qui est **pair**.

**La contradiction.** Le nombre de cases noires du rectangle devrait donc être à la fois
impair (d'après le compte par pièces) et pair (d'après le compte direct). C'est impossible.

**Réponse.** Non, Émile ne peut pas former un rectangle plein avec ces pièces.
