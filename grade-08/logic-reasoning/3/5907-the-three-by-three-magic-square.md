---
id: "5907"
title: "Le carré magique 3 × 3"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [carre-magique, somme, denombrement, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Magic Squares (San Francisco Math Circle)"
  reference: "Magic-Squares.pdf, énoncé principal et « Challenges » 1"
  url: "https://mathcircles.org/"
  original_language: "en"
  local_copy: "sources/originals/namc/Magic-Squares.pdf"
---

## Statement

On veut ranger les neuf nombres $1, 2, 3, 4, 5, 6, 7, 8, 9$ dans une grille $3 \times 3$, un nombre par case, de façon que

- les trois lignes,
- les trois colonnes,
- et les deux diagonales

aient toutes la **même somme**. Cette somme commune s'appelle le *nombre magique*.

1. Montrer que le nombre magique vaut forcément $15$.
2. Montrer que la case centrale contient forcément le $5$.
3. Montrer que le $1$ ne peut pas être dans un coin.
4. Construire un carré magique.

## Hints

1. Pour la question 1, additionne les trois lignes. Combien fait cette somme, de deux façons différentes ?
2. Pour la question 2, il y a exactement quatre lignes de la grille qui passent par le centre. Lesquelles ?
3. Additionne ces quatre lignes. Chaque case est comptée une fois… sauf une.
4. Pour la question 3, suppose le $1$ dans un coin et regarde les trois lignes qui passent par ce coin. Chacune doit être complétée par deux nombres dont la somme vaut $14$.
5. Fais la liste de toutes les paires de nombres entre $2$ et $9$ dont la somme vaut $14$. Il n'y en a pas beaucoup.

## Solution

### 1. Le nombre magique vaut 15

La somme de tous les nombres écrits dans la grille est
$$1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 = 45.$$

Les trois lignes se partagent exactement ces neuf cases. Si le nombre magique est $S$, la somme des trois lignes vaut $3S$, et elle vaut aussi $45$. Donc
$$3S = 45, \qquad S = 15.$$

### 2. Le centre contient le 5

Quatre lignes de la grille passent par la case centrale : la ligne du milieu, la colonne du milieu et les deux diagonales.

Additionnons les sommes de ces quatre lignes : le total vaut $4 \times 15 = 60$.

Regardons maintenant quelles cases ont été comptées, et combien de fois. Ces quatre lignes contiennent, à elles toutes, les neuf cases de la grille. Chaque case autre que le centre appartient à une seule de ces quatre lignes, donc elle est comptée une fois. La case centrale, elle, appartient aux quatre, donc elle est comptée quatre fois.

En notant $c$ le nombre du centre, on a donc
$$60 = 45 + 3c,$$
car le centre est compté trois fois de trop. D'où $3c = 15$, puis $c = 5$.

### 3. Le 1 n'est pas dans un coin

Supposons le $1$ placé dans un coin. Trois lignes passent par un coin : sa ligne, sa colonne et une diagonale. Chacune des trois doit être complétée par deux nombres dont la somme vaut $15 - 1 = 14$.

Les paires de nombres différents pris entre $2$ et $9$ dont la somme vaut $14$ sont :
$$(5, 9) \quad \text{et} \quad (6, 8).$$

Il n'y en a que deux, et il nous faudrait trois paires, distinctes deux à deux puisque les trois lignes ne partagent que la case du $1$. C'est impossible.

*(En réalité une des deux paires est déjà imposée : la diagonale passe par le centre, qui contient $5$, donc c'est la paire $(5,9)$. Il ne reste plus que $(6,8)$ pour deux lignes.)*

Donc le $1$ est sur un bord, au milieu d'un côté.

### 4. Un carré magique

| 2 | 7 | 6 |
|---|---|---|
| 9 | 5 | 1 |
| 4 | 3 | 8 |

Vérification :

- lignes : $2+7+6 = 15$, $9+5+1 = 15$, $4+3+8 = 15$ ;
- colonnes : $2+9+4 = 15$, $7+5+3 = 15$, $6+1+8 = 15$ ;
- diagonales : $2+5+8 = 15$, $6+5+4 = 15$.

Le $5$ est bien au centre et le $1$ bien au milieu d'un côté, comme les questions 2 et 3 l'annonçaient.

## Going further

1. Une remarque jolie : si $x$ et $y$ sont dans deux cases symétriques par rapport au centre, la ligne qui les joint passe par le centre, donc $x + 5 + y = 15$, c'est-à-dire $x + y = 10$. Les nombres se rangent donc par paires $(1,9)$, $(2,8)$, $(3,7)$, $(4,6)$ placées face à face.
2. Combien y a-t-il de carrés magiques différents avec $1, \ldots, 9$ ? Et si on décide que deux carrés qui se déduisent l'un de l'autre par une rotation ou un retournement sont les mêmes ?
3. Remplace la carte $1$ par une carte $10$ : peut-on faire un carré magique avec $2, 3, \ldots, 10$ ? Quel est le nombre magique ? Peux-tu le prévoir avant d'essayer ?
4. Même question avec les cartes $3, 4, \ldots, 11$, puis avec les nombres pairs $2, 4, 6, \ldots, 18$, puis avec $-4, -3, \ldots, 3, 4$.
5. Pour neuf entiers consécutifs $n, n+1, \ldots, n+8$, quel est le nombre magique, et que vaut la case centrale ?
