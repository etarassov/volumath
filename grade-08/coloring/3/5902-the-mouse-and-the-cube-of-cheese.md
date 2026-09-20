---
id: "5902"
title: "La souris et le cube de fromage"
grade: 8
theme: coloring
difficulty: 3
duration_min: 25
tags: [coloriage, parite, cube, espace, demonstration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Coloring (Tom Davis)"
  reference: "Coloring_Tom_Davis_Facilitator_Guide.pdf, « Problems », problème 5 (« The Cheese Cube »)"
  url: "https://mathcircles.org/activity/coloring/"
  original_language: "en"
  local_copy: "sources/originals/namc/Coloring_Tom_Davis_Facilitator_Guide.pdf"
---

## Statement

Un gros cube de fromage est découpé en $27$ petits cubes, comme un Rubik's cube : trois petits cubes de long, trois de large, trois de haut.

Une souris commence à manger par un petit cube d'un coin. Elle mange chaque petit cube entièrement avant de passer au suivant, et elle ne peut passer que d'un petit cube à un petit cube **voisin par une face** (pas par une arête, pas par un coin).

La souris peut-elle manger les $27$ petits cubes en terminant par celui du centre ?

## Hints

1. Sur un damier plat, on colorie les cases en noir et blanc pour que deux cases voisines soient de couleurs différentes. Peux-tu faire la même chose dans l'espace, avec les $27$ petits cubes ?
2. Dis que le petit cube de coordonnées $(x, y, z)$, avec $x$, $y$, $z$ valant $1$, $2$ ou $3$, est noir si $x + y + z$ est pair, et blanc sinon. Deux cubes voisins par une face ont-ils la même couleur ?
3. Compte les cubes noirs et les cubes blancs. Il n'y en a pas autant des deux !
4. De quelle couleur est un cube de coin ? Et le cube du centre ?
5. Si la souris part d'un cube noir, de quelle couleur est le deuxième cube qu'elle mange ? Le troisième ? Le vingt-septième ?

## Solution

**Réponse : non, c'est impossible.**

### Étape 1. On colorie le cube en damier de l'espace

Repérons chaque petit cube par trois nombres $(x, y, z)$, chacun valant $1$, $2$ ou $3$. Colorions-le :

- en **noir** si $x + y + z$ est pair ;
- en **blanc** si $x + y + z$ est impair.

Passer d'un petit cube à un petit cube voisin par une face, c'est changer une seule des trois coordonnées de $1$. La somme $x + y + z$ change donc de $1$, et sa parité change. Autrement dit :

> **Deux petits cubes voisins par une face sont toujours de couleurs différentes.**

C'est exactement le damier noir et blanc habituel, transporté dans l'espace.

### Étape 2. On compte

Parmi les nombres $1$, $2$, $3$, il y en a deux impairs ($1$ et $3$) et un pair ($2$).

La somme $x + y + z$ est paire lorsque les trois coordonnées sont paires, ou lorsqu'une seule l'est :

- trois coordonnées paires : $1$ possibilité, le cube $(2,2,2)$, c'est-à-dire le centre ;
- exactement une coordonnée paire : on choisit laquelle ($3$ façons), elle vaut $2$, et les deux autres sont impaires ($2$ choix chacune), soit $3 \times 2 \times 2 = 12$ possibilités.

Il y a donc $1 + 12 = 13$ cubes noirs, et $27 - 13 = 14$ cubes blancs.

Attention : ce sont les cubes **blancs** qui sont les plus nombreux. Regardons qui est qui :

- un cube de coin a ses trois coordonnées impaires, par exemple $(1,1,1)$ : la somme vaut $3$, elle est impaire, le coin est **blanc** ;
- le cube du centre est $(2,2,2)$ : la somme vaut $6$, elle est paire, le centre est **noir**.

### Étape 3. Le trajet de la souris

La souris mange les $27$ cubes l'un après l'autre, en passant à chaque fois sur un voisin par une face. Les couleurs alternent donc : blanc, noir, blanc, noir, et ainsi de suite.

Elle part d'un coin, qui est blanc. Donc le $1^{\text{er}}$ cube est blanc, le $2^{\text{e}}$ est noir, le $3^{\text{e}}$ est blanc… : les cubes de rang impair sont blancs, ceux de rang pair sont noirs.

Le $27^{\text{e}}$ cube a un rang impair : **le dernier cube mangé est forcément blanc**.

(On retrouve au passage le comptage : la souris mange $14$ cubes blancs, aux rangs $1, 3, 5, \ldots, 27$, et $13$ cubes noirs. C'est exactement ce qu'il y a.)

### Conclusion

Le cube du centre est noir. Le dernier cube mangé est blanc. La souris ne peut donc pas finir par le centre.

## Going further

1. Et si la souris part du cube du centre ? Peut-elle manger les $27$ cubes ?
2. Par quels cubes la souris peut-elle finir si elle part d'un coin ? (Elle finit forcément sur un cube blanc : reste à voir si tous les cubes blancs sont atteignables.)
3. Même question avec un cube découpé en $2 \times 2 \times 2 = 8$ petits cubes, puis en $4 \times 4 \times 4 = 64$. Qu'est-ce qui change quand le nombre de petits cubes est pair ?
