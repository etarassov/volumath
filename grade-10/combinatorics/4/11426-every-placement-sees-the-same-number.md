---
id: "11426"
title: "Tous les placements de tours voient autant de cases coloriées"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [grille, denombrement, coloriage, permutations, absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 4 (combinatoire)"
  reference: "2022-02_sujet-envoi-4.pdf, Exercices Juniors, exercice 6 ; corrigé 2022-04_corrige-envoi-4.pdf ; la fin de la preuve est simplifiée ici"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-02_sujet-envoi-4.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. On considère une grille de $n$ lignes et $n$ colonnes.

Un **placement** est un ensemble de $n$ cases de la grille qui contient exactement une case de chaque
ligne et une case de chaque colonne. C'est la position de $n$ tours d'échecs qui ne se menacent pas.

On colorie certaines cases de la grille, éventuellement aucune ou toutes. De combien de façons
peut-on le faire pour que **tous les placements contiennent le même nombre de cases coloriées** ?

## Hints

1. Commence par $n = 2$ : il y a seulement deux placements. Écris la condition, puis compte.
2. Trouve des coloriages qui marchent pour tout $n$. Que se passe-t-il si l'on colorie une ligne
   entière ?
3. Dans un placement qui contient les cases $(a, b)$ et $(a', c)$, on peut les remplacer par
   $(a, c)$ et $(a', b)$. Obtient-on encore un placement ? Qu'en déduit-on sur ces quatre cases ?
4. Suppose qu'une ligne contienne à la fois une case coloriée et une case non coloriée. Montre qu'alors
   chaque colonne est entièrement coloriée ou entièrement vide.

## Solution

On note $(i, j)$ la case de la ligne $i$ et de la colonne $j$. Disons qu'un coloriage est **bon**
quand tous les placements contiennent le même nombre de cases coloriées.

**Réponse : il y a $2^{n+1} - 2$ bons coloriages.**

### Étape 1 : des coloriages qui marchent

Colorions entièrement certaines lignes, et rien d'autre. Un placement contient exactement une case de
chaque ligne, donc il contient exactement autant de cases coloriées que de lignes coloriées. Ce
nombre est le même pour tous les placements : le coloriage est bon.

De même, colorier entièrement certaines colonnes, et rien d'autre, donne un bon coloriage.

On va montrer qu'il n'y en a **pas d'autres**.

### Étape 2 : l'échange de deux tours

Prenons un placement qui contient deux cases $(a, b)$ et $(a', c)$ avec $a \neq a'$ et $b \neq c$.
Remplaçons-les par $(a, c)$ et $(a', b)$. Les lignes $a$ et $a'$ ont toujours une case chacune, les
colonnes $b$ et $c$ aussi, et rien d'autre n'a changé : on obtient encore un placement.

Dans un bon coloriage, les deux placements ont autant de cases coloriées. Comme ils ne diffèrent que
par ces cases-là, il y a autant de cases coloriées parmi $(a, b)$, $(a', c)$ que parmi $(a, c)$,
$(a', b)$.

D'ailleurs, un tel placement existe toujours : on met une tour en $(a, b)$, une en $(a', c)$, et on
associe les $n - 2$ lignes restantes aux $n - 2$ colonnes restantes, dans n'importe quel ordre.

### Étape 3 : une ligne mélangée force les colonnes

Prenons un bon coloriage. Supposons que la ligne $a$ contienne une case coloriée $(a, b)$ et une case
non coloriée $(a, c)$. Soit $a'$ une autre ligne. D'après l'étape 2, appliquée à un placement qui
contient $(a, b)$ et $(a', c)$ :

$$\text{(nombre de cases coloriées parmi } (a, b), (a', c)\text{)} = \text{(nombre parmi } (a, c), (a', b)\text{)} .$$

À gauche, $(a, b)$ est coloriée, donc on trouve au moins $1$. À droite, $(a, c)$ ne l'est pas, donc
on trouve au plus $1$. Les deux valent donc exactement $1$ :

- à droite, c'est $(a', b)$ qui est coloriée ;
- à gauche, $(a', c)$ n'est pas coloriée.

Ceci vaut pour toutes les lignes $a' \neq a$. Ainsi la colonne $b$ est **entièrement coloriée** et la
colonne $c$ est **entièrement vide**.

### Étape 4 : il n'y a pas d'autres bons coloriages

Prenons un bon coloriage qui n'est pas formé de lignes entières. Il existe donc une ligne $a$ qui
n'est ni entièrement coloriée ni entièrement vide : elle a au moins une case coloriée et au moins une
case non coloriée. Regardons une colonne $j$ quelconque.

- Si $(a, j)$ est coloriée, on applique l'étape 3 avec $b = j$ et avec pour $c$ une case non
  coloriée de la ligne $a$ : la colonne $j$ est entièrement coloriée.
- Si $(a, j)$ n'est pas coloriée, on applique l'étape 3 avec $c = j$ et avec pour $b$ une case
  coloriée de la ligne $a$ : la colonne $j$ est entièrement vide.

Chaque colonne est donc entièrement coloriée ou entièrement vide : le coloriage est formé de colonnes
entières.

Les bons coloriages sont donc exactement ceux qui sont formés de **lignes entières**, et ceux qui sont
formés de **colonnes entières**.

### Étape 5 : compter

Pour chacune des $n$ lignes, on décide de la colorier ou non : cela fait $2^n$ coloriages formés de
lignes entières. De même, $2^n$ coloriages sont formés de colonnes entières.

Certains coloriages ont été comptés deux fois. Si un coloriage formé de lignes entières contient au
moins une ligne coloriée, chaque colonne a une case coloriée ; s'il est aussi formé de colonnes
entières, toutes les colonnes sont coloriées, et toute la grille l'est. Les seuls coloriages comptés
deux fois sont donc la grille vide et la grille entièrement coloriée.

Le nombre de bons coloriages est donc

$$2^n + 2^n - 2 = \boxed{2^{n+1} - 2} .$$

**Vérification pour $n = 2$.** Les deux placements sont $\{(1, 1), (2, 2)\}$ et $\{(1, 2), (2, 1)\}$.
La condition dit qu'il y a autant de cases coloriées sur une diagonale que sur l'autre : $0$ et $0$
($1$ façon), $1$ et $1$ ($2 \times 2 = 4$ façons), ou $2$ et $2$ ($1$ façon). Cela fait $6$, et
$2^3 - 2 = 6$.
