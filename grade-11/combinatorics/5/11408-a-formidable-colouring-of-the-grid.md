---
id: "11408"
title: "Un coloriage formidable"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [coloriage, minimum, tiroirs, double-comptage, construction, grille]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 4 (combinatoire)"
  reference: "2020-01_EnvoiCombiFinal.pdf, Exercices Seniors, exercice 16 ; corrigé 2020-03_corrige-commente-envoi-4.pdf (le coloriage du corrigé n'est donné que par une figure ; la formule et sa vérification sont rédigées ici)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/EnvoiCombiFinal.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_EnvoiCombiFinal.pdf"
---

## Statement

On considère une grille de $2019 \times 2019$ cases. On numérote les colonnes de $1$ à $2019$ de
gauche à droite, les lignes de $1$ à $2019$ de haut en bas, et on note $C_{i,j}$ la case de la
colonne $i$ et de la ligne $j$. On colorie chaque case de la grille d'une couleur.

Le coloriage est dit **formidable** s'il n'existe pas d'entiers $i$, $j$, $k$, $\ell$ avec
$i < \ell$ et $j < k$ tels que les trois cases $C_{i,j}$, $C_{i,k}$ et $C_{\ell,j}$ soient de la
même couleur. Autrement dit, on ne doit jamais trouver une case, une case plus bas dans la même
colonne et une case plus à droite dans la même ligne, toutes les trois de la même couleur.

Quel est le plus petit nombre de couleurs avec lequel on peut faire un coloriage formidable ?

## Hints

1. Commence par une grille $3 \times 3$ : pourquoi une seule couleur ne suffit-elle pas ? Trouve
   un coloriage formidable avec deux couleurs.
2. Prends une colonne autre que la dernière. Si une couleur y apparaît plusieurs fois, quelles
   cases de la dernière colonne ne peuvent pas avoir cette couleur ?
3. Appelle « interdiction » un couple (case de la dernière colonne, couleur qu'elle ne peut pas
   avoir). Combien d'interdictions chaque colonne produit-elle au moins ? Deux colonnes
   différentes peuvent-elles produire la même interdiction ?
4. Pour la construction, colorie la case $C_{i,j}$ selon la différence $i - j$, en regroupant
   les valeurs deux par deux.

## Solution

On note $q$ le nombre de couleurs. On va montrer que la réponse est $1010$.

Une case, une case plus bas dans sa colonne et une case plus à droite dans sa ligne, toutes de la
même couleur, seront appelées un **coin interdit**.

**Avec $1009$ couleurs ou moins, c'est impossible.**

Supposons qu'il existe un coloriage formidable avec $q \leqslant 1009$ couleurs.

Appelons **interdiction** un couple formé d'une case de la dernière colonne (la colonne $2019$)
et d'une couleur que cette case ne peut pas avoir.

*Chaque colonne produit beaucoup d'interdictions.* Prenons une colonne $x$ avec
$1 \leqslant x \leqslant 2018$, et une couleur $c$ qui y apparaît $m$ fois, dans les lignes
$y_1 < y_2 < \cdots < y_m$. Chacune des cases $C_{x,y_1}, \ldots, C_{x,y_{m-1}}$ a, plus bas
dans la même colonne, la case $C_{x,y_m}$ de même couleur. Donc la case $C_{2019,y_1}$ ne peut
pas être de couleur $c$, sinon $C_{x,y_1}$, $C_{x,y_m}$ et $C_{2019,y_1}$ formeraient un coin
interdit. De même pour $C_{2019,y_2}, \ldots, C_{2019,y_{m-1}}$. La couleur $c$ donne ainsi
$m - 1$ interdictions.

En additionnant sur toutes les couleurs présentes dans la colonne $x$, on obtient $2019$ moins
le nombre de couleurs présentes dans la colonne. Cela fait donc au moins
$2019 - q \geqslant 2019 - 1009 = 1010$ interdictions. Elles sont toutes différentes : deux
d'entre elles portent soit sur deux couleurs différentes, soit sur deux lignes différentes.

*Deux colonnes ne produisent jamais la même interdiction.* Supposons que les colonnes $x < x'$
produisent toutes les deux l'interdiction ($C_{2019,y}$, couleur $c$). Pour la colonne $x$, cela
veut dire que $C_{x,y}$ est de couleur $c$ et qu'une case plus bas dans la colonne $x$ est aussi
de couleur $c$. Pour la colonne $x'$, cela veut dire en particulier que $C_{x',y}$ est de couleur
$c$. Mais alors $C_{x,y}$, la case plus bas et $C_{x',y}$, qui est plus à droite dans la même
ligne, forment un coin interdit. C'est impossible.

*Le compte.* Les $2018$ premières colonnes produisent donc au moins $2018 \times 1010$
interdictions toutes différentes. Or une interdiction porte sur une case $C_{2019,y}$ avec
$y \leqslant 2018$ (car $y_t < y_m \leqslant 2019$), donc sur l'une des $2018$ premières cases de
la dernière colonne, et sur l'une des $q$ couleurs. Il y a au plus
$2018 \times q \leqslant 2018 \times 1009$ interdictions possibles, ce qui est strictement moins
que $2018 \times 1010$. C'est une contradiction.

Il faut donc au moins $1010$ couleurs.

**Un coloriage formidable avec $1010$ couleurs.**

Pour chaque case $C_{i,j}$, on pose
$$r = i - j \ \text{ si } i \geqslant j, \qquad r = i - j + 2020 \ \text{ si } i < j .$$
Comme $i - j$ est compris entre $-2018$ et $2018$, le nombre $r$ est un entier entre $0$ et
$2019$. On regroupe ces entiers deux par deux :
$$\{0, 1\}, \ \{2, 3\}, \ \{4, 5\}, \ \ldots, \ \{2018, 2019\} .$$
Cela fait $1010$ paires, et on donne une couleur à chaque paire. La case $C_{i,j}$ prend la
couleur de la paire qui contient son nombre $r$.

*Comment $r$ change d'une case à l'autre.* Disposons les nombres $0, 1, \ldots, 2019$ sur un
cercle, dans l'ordre, comme les heures d'une horloge qui en aurait $2020$. Quand on descend d'une
case dans une colonne, $j$ augmente de $1$, donc $r$ diminue de $1$ (et passe de $0$ à $2019$ au
lieu de $-1$) : on recule d'un cran sur le cercle. Quand on avance d'une case vers la droite dans
une ligne, $i$ augmente de $1$, donc $r$ augmente de $1$ (et passe de $2019$ à $0$) : on avance
d'un cran sur le cercle.

*Pas de coin interdit.* Prenons une case $C_{i,j}$ de nombre $r$. Les cases situées plus bas dans
sa colonne s'obtiennent en reculant de $1$, $2$, …, au plus $2018$ crans. Les cases situées plus à
droite dans sa ligne s'obtiennent en avançant de $1$, $2$, …, au plus $2018$ crans.

Sur le cercle, le seul autre nombre de la même couleur que $r$ est son partenaire dans la paire :

- si $r$ est pair, c'est $r + 1$, à un cran **en avant** ; pour l'atteindre en reculant, il
  faudrait reculer de $2019$ crans, ce qui est trop ;
- si $r$ est impair, c'est $r - 1$, à un cran **en arrière** ; pour l'atteindre en avançant, il
  faudrait avancer de $2019$ crans, ce qui est trop aussi.

Le nombre $r$ lui-même n'est jamais atteint non plus, car il faudrait $2020$ crans. Donc si $r$
est pair, aucune case plus bas n'a la couleur de $C_{i,j}$, et si $r$ est impair, aucune case plus
à droite n'a sa couleur. Dans les deux cas, $C_{i,j}$ n'est le coin d'aucun coin interdit : le
coloriage est formidable.

Voici le même coloriage sur une grille $7 \times 7$, avec $8$ au lieu de $2020$ et les quatre
couleurs $A$, $B$, $C$, $D$ pour les paires $\{0,1\}$, $\{2,3\}$, $\{4,5\}$, $\{6,7\}$ :

| | col. 1 | col. 2 | col. 3 | col. 4 | col. 5 | col. 6 | col. 7 |
|---|---|---|---|---|---|---|---|
| ligne 1 | A | A | B | B | C | C | D |
| ligne 2 | D | A | A | B | B | C | C |
| ligne 3 | D | D | A | A | B | B | C |
| ligne 4 | C | D | D | A | A | B | B |
| ligne 5 | C | C | D | D | A | A | B |
| ligne 6 | B | C | C | D | D | A | A |
| ligne 7 | B | B | C | C | D | D | A |

**Conclusion.**

**Le plus petit nombre de couleurs d'un coloriage formidable est $1010$.** Le même raisonnement
montre que, sur une grille $n \times n$ avec $n$ impair, il en faut exactement $\frac{n+1}{2}$.
