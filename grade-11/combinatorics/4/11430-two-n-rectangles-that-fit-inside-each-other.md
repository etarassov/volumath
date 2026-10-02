---
id: "11430"
title: "2n rectangles qui rentrent les uns dans les autres"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [rectangle, construction, somme, grille]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 4 (combinatoire)"
  reference: "2022-02_sujet-envoi-4.pdf, Exercices Seniors, exercice 14 ; corrigé 2022-04_corrige-envoi-4.pdf ; l'énoncé oublie de supposer n ⩾ 2 (pour n = 1 il n'y a qu'un rectangle)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-02_sujet-envoi-4.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier. Un carré est découpé en $n^2$ rectangles par $n - 1$ droites
horizontales et $n - 1$ droites verticales, placées n'importe comment.

On dit qu'un rectangle **rentre** dans un autre si l'on peut le poser sur l'autre, éventuellement
après l'avoir tourné d'un quart de tour, de façon qu'il soit entièrement recouvert.

Montrer qu'on peut choisir $2n$ de ces rectangles de sorte que, pour deux quelconques d'entre eux,
l'un des deux rentre dans l'autre.

## Hints

1. Les $n^2$ rectangles sont formés par $n$ colonnes et $n$ lignes. Range les colonnes de la moins
   large à la plus large, et les lignes de la moins haute à la plus haute.
2. On trouve facilement $2n - 1$ rectangles en « escalier » : le rectangle de la colonne $1$ et de
   la ligne $1$, puis colonne $1$ et ligne $2$, puis colonne $2$ et ligne $2$, et ainsi de suite.
3. Pour le dernier rectangle, il faut utiliser le fait que le découpage est fait dans un **carré** :
   la somme des largeurs des colonnes est égale à la somme des hauteurs des lignes.
4. Suppose que la colonne la moins large est moins large que la ligne la moins haute n'est haute.
   Cherche le premier rang $j$ où la $j$-ième colonne est au moins aussi large que la $j$-ième ligne
   est haute.

## Solution

### Mise en place

Les droites découpent le carré en $n$ colonnes et $n$ lignes, et chaque rectangle est à la rencontre
d'une colonne et d'une ligne. Numérotons les colonnes par largeurs croissantes,

$$a_1 \leqslant a_2 \leqslant \cdots \leqslant a_n ,$$

et les lignes par hauteurs croissantes,

$$b_1 \leqslant b_2 \leqslant \cdots \leqslant b_n .$$

Le rectangle de la colonne $i$ et de la ligne $j$, noté $R_{i,j}$, a pour largeur $a_i$ et pour
hauteur $b_j$. Ces numéros ne suivent pas forcément l'ordre des colonnes sur le dessin, mais cela n'a
aucune importance : tous les rectangles de largeur $a_i$ et de hauteur $b_j$ sont présents.

Un rectangle de largeur $p$ et de hauteur $q$ **rentre** dans un rectangle de largeur $p'$ et de
hauteur $q'$ dès que $p \leqslant p'$ et $q \leqslant q'$ : on pose les deux rectangles coin contre
coin. Il rentre aussi dès que $q \leqslant p'$ et $p \leqslant q'$ : on le tourne d'abord d'un quart
de tour.

Enfin, les colonnes ont pour largeur totale le côté du carré, et les lignes aussi :

$$a_1 + a_2 + \cdots + a_n = b_1 + b_2 + \cdots + b_n . \qquad (\star)$$

### Étape 1 : un escalier de $2n - 1$ rectangles

Prenons, dans cet ordre,

$$R_{1,1}, \; R_{1,2}, \; R_{2,2}, \; R_{2,3}, \; R_{3,3}, \; \ldots, \; R_{n-1,n}, \; R_{n,n} .$$

On passe d'un rectangle au suivant en augmentant de $1$ soit le numéro de ligne, soit le numéro de
colonne. La largeur ou la hauteur augmente ou reste la même, et l'autre ne change pas : chaque
rectangle rentre dans le suivant, donc dans tous ceux qui viennent après lui. Ces $n$ rectangles
$R_{j,j}$ et ces $n - 1$ rectangles $R_{j,j+1}$ forment $2n - 1$ rectangles qui conviennent.

### Étape 2 : trouver la bonne place pour le dernier

On peut supposer que $a_1 \leqslant b_1$. Sinon, on tourne toute la figure d'un quart de tour : les
colonnes deviennent des lignes et inversement, ce qui échange les $a$ et les $b$.

**Il existe un rang $j \geqslant 2$ tel que $a_j \geqslant b_j$.** Sinon, on aurait $a_j < b_j$ pour
tous les $j$ de $2$ à $n$, et $a_1 \leqslant b_1$. En additionnant, comme $n \geqslant 2$, on
obtiendrait $a_1 + \cdots + a_n < b_1 + \cdots + b_n$, ce qui contredit $(\star)$.

Prenons le **plus petit** tel rang, et écrivons-le $i + 1$, avec $i \geqslant 1$. Alors :

- $b_{i+1} \leqslant a_{i+1}$, par définition de ce rang ;
- $a_i \leqslant b_i$ : si $i = 1$, c'est notre hypothèse $a_1 \leqslant b_1$, et si $i \geqslant 2$,
  c'est parce que le rang $i$ est plus petit que le rang choisi, donc $a_i < b_i$.

Avec le rangement des $b$, on obtient

$$a_i \leqslant b_i \leqslant b_{i+1} \leqslant a_{i+1} .$$

### Étape 3 : le rectangle de plus

Ajoutons le rectangle $X = R_{i+1,\,i}$, de largeur $a_{i+1}$ et de hauteur $b_i$. Il ne fait pas
partie de l'escalier, dont les rectangles $R_{j,j}$ et $R_{j,j+1}$ ont tous un numéro de ligne au
moins égal à leur numéro de colonne. Voici par exemple la situation pour $n = 4$ et $i = 2$ : les
rectangles de l'escalier sont numérotés dans l'ordre, et $X$ est le rectangle ajouté.

| | colonne 1 | colonne 2 | colonne 3 | colonne 4 |
|---|---|---|---|---|
| **ligne 1** | 1 | | | |
| **ligne 2** | 2 | 3 | $X$ | |
| **ligne 3** | | 4 | 5 | |
| **ligne 4** | | | 6 | 7 |

Comparons $X$ à chaque rectangle de l'escalier.

- **Les rectangles $R_{j,j}$ et $R_{j,j+1}$ avec $j \geqslant i + 1$.** Leur largeur $a_j$ est au moins
  $a_{i+1}$, et leur hauteur $b_j$ ou $b_{j+1}$ est au moins $b_i$. Donc $X$ rentre dedans.
- **Les rectangles $R_{j,j}$ avec $j \leqslant i$.** Leur largeur $a_j$ est au plus $a_{i+1}$, et
  leur hauteur $b_j$ est au plus $b_i$. Ils rentrent dans $X$.
- **Les rectangles $R_{j,j+1}$ avec $j \leqslant i - 1$.** Leur largeur $a_j$ est au plus $a_{i+1}$,
  et leur hauteur $b_{j+1}$ est au plus $b_i$. Ils rentrent dans $X$.
- **Le rectangle $R_{i,i+1}$**, de largeur $a_i$ et de hauteur $b_{i+1}$. C'est le seul cas délicat,
  et c'est là que sert l'étape 2. Tournons-le d'un quart de tour : il a maintenant pour largeur
  $b_{i+1}$ et pour hauteur $a_i$. Or $b_{i+1} \leqslant a_{i+1}$ et $a_i \leqslant b_i$. Il rentre
  donc dans $X$.

**Conclusion.** Les $2n - 1$ rectangles de l'escalier et le rectangle $X$ forment $2n$ rectangles du
découpage, et pour deux quelconques d'entre eux, l'un rentre dans l'autre.

## Going further

**Le carré est indispensable.** Découpons un rectangle de $3$ sur $11$ (et non plus un carré) avec
$n = 2$ : deux colonnes de largeurs $1$ et $2$, deux lignes de hauteurs $5$ et $6$. On obtient quatre
rectangles, $1 \times 5$, $1 \times 6$, $2 \times 5$ et $2 \times 6$.

Le rectangle $1 \times 6$ ne rentre pas dans le rectangle $2 \times 5$ : sans le tourner, il faudrait
$6 \leqslant 5$, et en le tournant il faudrait $6 \leqslant 2$. Le rectangle $2 \times 5$ ne rentre pas
non plus dans le $1 \times 6$, puisque $2 > 1$ et $5 > 1$. Il est donc impossible de choisir
$2n = 4$ rectangles qui conviennent.

C'est exactement ce qui se passe à l'étape 2 : ici on a $a_1 \leqslant b_1$ et $a_2 < b_2$, et aucun rang
ne vérifie $a_j \geqslant b_j$.
