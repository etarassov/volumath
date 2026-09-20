---
id: "5903"
title: "Combien de tétraminos en S sur un damier 9 × 9 ?"
grade: 10
theme: coloring
difficulty: 5
duration_min: 45
tags: [coloriage, pavage, tetramino, damier, optimisation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Coloring (Tom Davis), d'après BAMO 2008"
  reference: "Coloring_Tom_Davis_Facilitator_Guide.pdf, « Problems », problème 4 (Bay Area Mathematical Olympiad 2008)"
  url: "https://mathcircles.org/activity/coloring/"
  original_language: "en"
  local_copy: "sources/originals/namc/Coloring_Tom_Davis_Facilitator_Guide.pdf"
---

## Statement

On considère un damier $9 \times 9$ et des pièces de quatre cases, toutes de la forme suivante : deux cases côte à côte, et deux autres cases côte à côte juste en dessous, décalées d'une case vers la droite.

![La pièce de quatre cases : deux cases en haut, deux cases en bas décalées d'une case vers la droite](5903-figure-1.svg)

Les pièces peuvent être tournées d'un quart de tour et retournées. Elles suivent le quadrillage, ne se chevauchent pas et ne dépassent pas du damier. On ne cherche pas à recouvrir tout le damier, seulement à en poser le plus possible.

Quel est le nombre maximum de pièces que l'on peut poser ?

## Hints

1. Commence par poser des pièces au hasard. Combien arrives-tu à en placer ? Il est facile d'arriver à $14$ ou $15$, plus difficile d'arriver à $16$.
2. Compter les cases ne suffira pas : $81 = 4 \times 20 + 1$, ce qui autoriserait $20$ pièces. Il faut trouver une meilleure raison.
3. Numérote les lignes et les colonnes de $1$ à $9$. Marque d'un point les cases dont le numéro de ligne **et** le numéro de colonne sont tous les deux pairs. Combien y a-t-il de points ?
4. Prends une pièce, pose-la n'importe où, dans n'importe quel sens. Combien de points recouvre-t-elle ? Essaie plusieurs positions avant de te prononcer.
5. Si chaque pièce recouvre exactement un point, et qu'il n'y a que $16$ points, que peut-on dire du nombre de pièces ?
6. Il reste à montrer qu'on atteint vraiment ce nombre : construis un rangement de $16$ pièces.

## Solution

**Réponse : $16$ pièces au maximum.**

### Étape 1. Un marquage bien choisi

Numérotons les lignes de $1$ à $9$ du haut vers le bas et les colonnes de $1$ à $9$ de la gauche vers la droite. Marquons d'un point les cases dont le numéro de ligne et le numéro de colonne sont **tous les deux pairs** : les lignes $2$, $4$, $6$, $8$ et les colonnes $2$, $4$, $6$, $8$.

Cela fait $4 \times 4 = 16$ points.

### Étape 2. Chaque pièce recouvre exactement un point

Regardons d'abord la pièce posée « à plat », comme sur la figure : elle occupe les cases
$$(i, j), \quad (i, j+1), \quad (i+1, j+1), \quad (i+1, j+2).$$

Elle s'étend sur deux lignes consécutives $i$ et $i+1$. **Une seule des deux est paire.**

- Si c'est la ligne $i$, les cases de la pièce sur cette ligne sont $(i,j)$ et $(i,j+1)$, deux colonnes consécutives : une seule des deux est paire. La pièce recouvre donc exactement un point.
- Si c'est la ligne $i+1$, les cases de la pièce sur cette ligne sont $(i+1,j+1)$ et $(i+1,j+2)$, encore deux colonnes consécutives : là aussi exactement un point.

Pour la pièce retournée (deux cases en haut, deux cases en bas décalées vers la **gauche**), le raisonnement est identique : sur chaque ligne la pièce occupe deux colonnes consécutives.

Pour la pièce posée debout, elle occupe les cases
$$(i, j), \quad (i+1, j), \quad (i+1, j+1), \quad (i+2, j+1),$$
donc deux colonnes consécutives $j$ et $j+1$, dont une seule est paire. On échange alors les rôles des lignes et des colonnes : sur la colonne paire, la pièce occupe deux lignes consécutives, dont une seule est paire. Encore un point exactement.

Dans tous les cas :

> **Où qu'on la pose et dans quelque sens que ce soit, une pièce recouvre exactement un point.**

### Étape 3. La majoration

Les pièces ne se chevauchent pas, donc deux pièces ne recouvrent jamais le même point. Chaque pièce consomme un point, et il n'y a que $16$ points. On ne peut donc pas poser plus de $16$ pièces.

### Étape 4. Seize pièces, c'est possible

Voici un rangement de $16$ pièces. Chaque lettre désigne une pièce, un point désigne une case libre. On vérifie que les quatre cases portant une même lettre forment bien la pièce demandée.

| | | | | | | | | |
|---|---|---|---|---|---|---|---|---|
| . | A | I | I | O | O | C | C | . |
| A | A | K | I | I | O | O | C | C |
| A | . | K | K | . | G | G | M | M |
| . | E | E | K | G | G | M | M | . |
| . | . | E | E | . | F | F | . | . |
| . | N | N | H | H | L | F | F | . |
| N | N | H | H | . | L | L | . | B |
| D | D | P | P | J | J | L | B | B |
| . | D | D | P | P | J | J | B | . |

Il y a bien $16$ lettres, donc $16$ pièces, qui occupent $64$ cases ; les $17$ cases restantes sont libres.

**Conclusion.** Le nombre maximum de pièces est $16$.

## Going further

1. Ce rangement est invariant par un demi-tour autour de la case centrale du damier. Repère les huit paires de pièces qui s'échangent.
2. Sur un damier $8 \times 8$, combien de points ce marquage donne-t-il, et combien de pièces peut-on poser au maximum ? Atteint-on la majoration ?
3. Même question pour un damier $n \times n$. Que vaut le nombre de points selon que $n$ est pair ou impair ?
4. La pièce de quatre cases en carré recouvre elle aussi exactement un point à chaque fois. Le même argument s'applique donc. Combien de carrés $2 \times 2$ peut-on poser sur le damier $9 \times 9$ ?
