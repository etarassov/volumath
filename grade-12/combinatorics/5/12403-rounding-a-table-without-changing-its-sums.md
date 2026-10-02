---
id: "12403"
title: "Arrondir un tableau sans changer ses sommes"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [tableau, partie-entiere, cycle, monovariant, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 29 novembre 2017"
  reference: "2017-12_pofm-2017-2018-test-novembre.pdf, exercice 3 ; corrigé 2017-12_pofm-2017-2018-test-novembre-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/12/pofm-2017-2018-test-novembre.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-12_pofm-2017-2018-test-novembre.pdf"
---

## Statement

Dans les cases d'un tableau rectangulaire à $n$ lignes et $m$ colonnes, on a écrit des nombres
réels. On suppose que, pour chaque ligne et pour chaque colonne, la somme des nombres écrits sur
cette ligne ou cette colonne est un entier.

Montrer qu'on peut remplacer chaque réel $x$ du tableau par l'un des deux entiers
$\lfloor x \rfloor$ ou $\lceil x \rceil$, de sorte que la somme de chaque ligne et de chaque
colonne reste la même.

*Rappel : $\lfloor x \rfloor$ est l'unique entier tel que
$\lfloor x \rfloor \leqslant x < \lfloor x \rfloor + 1$, et $\lceil x \rceil$ est l'unique entier
tel que $\lceil x \rceil - 1 < x \leqslant \lceil x \rceil$. Si $x$ est entier, ces deux nombres
valent $x$.*

## Hints

1. Commence par retirer à chaque nombre sa partie entière. Les sommes restent entières, et tous
   les nombres sont maintenant dans $[0, 1[$. Il faut alors remplacer chacun par $0$ ou $1$.
2. Appelle « fractionnaire » une case dont le nombre n'est pas entier. Si une ligne contient une
   case fractionnaire, combien en contient-elle au moins ?
3. Cherche un circuit de cases fractionnaires $c_1, c_2, \ldots, c_{2k}$ où l'on passe de l'une à
   la suivante alternativement en restant sur la même ligne, puis sur la même colonne. Ajoute
   $\varepsilon$ aux cases de rang impair et retire $\varepsilon$ aux cases de rang pair : que
   deviennent les sommes ?
4. Choisis $\varepsilon$ aussi grand que possible sans sortir de $[0, 1]$. Que devient le nombre
   de cases fractionnaires ?

## Solution

### Étape 1 : on se ramène à des nombres entre 0 et 1

Retirons à chaque nombre $x$ du tableau sa partie entière $\lfloor x \rfloor$. On retire ainsi
des entiers, donc les sommes de lignes et de colonnes restent entières. Tous les nombres sont
maintenant dans $[0, 1[$.

Il suffit alors de montrer qu'on peut remplacer chaque nombre $y$ de ce nouveau tableau par $0$ ou
par $1$, en gardant les sommes, et **sans toucher aux nombres déjà égaux à $0$**. En rajoutant
ensuite les parties entières, un nombre non entier $x$ devient $\lfloor x \rfloor$ ou
$\lfloor x \rfloor + 1 = \lceil x \rceil$, et un nombre entier ne change pas : c'est exactement ce
qu'on veut.

On va faire mieux : on va modifier le tableau petit à petit, en gardant toujours les sommes, en
gardant tous les nombres dans $[0, 1]$, et sans jamais modifier une case qui contient déjà $0$
ou $1$.

Appelons **fractionnaire** une case dont le nombre est strictement entre $0$ et $1$.

### Étape 2 : une ligne n'a jamais une seule case fractionnaire

Supposons qu'une ligne contienne exactement une case fractionnaire. Toutes les autres cases de la
ligne contiennent $0$ ou $1$, donc leur somme est un entier, et en ajoutant le nombre non entier de
la case fractionnaire, on obtient une somme non entière. C'est impossible.

Donc chaque ligne contient $0$ ou au moins $2$ cases fractionnaires. C'est pareil pour chaque
colonne. Dans la suite, on appelle « rangée » une ligne ou une colonne.

### Étape 3 : on trouve un circuit de cases fractionnaires

Supposons qu'il reste au moins une case fractionnaire. On construit une promenade :

- on part d'une case fractionnaire $c_0$ ; on note $R_0$ sa ligne et $R_1$ sa colonne ;
- sur la rangée $R_1$, il y a une autre case fractionnaire $c_1 \neq c_0$ (étape 2) ; on note
  $R_2$ l'autre rangée qui passe par $c_1$ (c'est une ligne) ;
- sur $R_2$, il y a une autre case fractionnaire $c_2 \neq c_1$ ; on note $R_3$ l'autre rangée qui
  passe par $c_2$ (c'est une colonne) ;
- et ainsi de suite.

On obtient des rangées $R_0, R_1, R_2, \ldots$, alternativement des lignes et des colonnes, et
chaque case $c_s$ est le croisement de $R_s$ et $R_{s+1}$.

Il n'y a que $n + m$ rangées, donc une rangée finit par revenir. Considérons le premier moment où
cela arrive : $R_t = R_u$ avec $u < t$, et les rangées $R_u, R_{u+1}, \ldots, R_{t-1}$ toutes
différentes. Comme lignes et colonnes alternent, $t - u$ est pair. De plus $t - u \neq 2$ : sinon
$c_{u+1}$, croisement de $R_{u+1}$ et de $R_{u+2} = R_u$, serait la même case que $c_u$, alors
qu'on l'a choisie différente. Donc $t - u = 2k$ avec $k \geqslant 2$.

Les cases $c_u, c_{u+1}, \ldots, c_{t-1}$ forment un circuit fermé. Elles sont deux à deux
distinctes, car deux d'entre elles sont les croisements de deux paires de rangées différentes.
Surtout, chaque rangée du circuit contient **exactement deux** de ces cases, et ce sont deux cases
consécutives du circuit :

- la rangée $R_s$, pour $u < s < t$, contient $c_{s-1}$ et $c_s$ ;
- la rangée $R_u = R_t$ contient $c_u$ et $c_{t-1}$.

En effet, la case $c_r$ n'appartient qu'aux deux rangées $R_r$ et $R_{r+1}$, donc elle ne peut pas
être sur une autre rangée du circuit.

### Étape 4 : on décale les nombres le long du circuit

Soit $\varepsilon > 0$. Ajoutons $\varepsilon$ aux nombres des cases $c_u, c_{u+2}, c_{u+4}, \ldots$
et retirons $\varepsilon$ aux nombres des cases $c_{u+1}, c_{u+3}, \ldots, c_{t-1}$. Comme il y a
un nombre pair de cases, les signes alternent tout le long du circuit, y compris entre $c_{t-1}$
(signe $-$) et $c_u$ (signe $+$).

Chaque rangée du circuit contient deux cases consécutives, donc une case $+\varepsilon$ et une case
$-\varepsilon$ : sa somme ne change pas. Les autres rangées ne contiennent aucune case modifiée.
Toutes les sommes sont donc conservées.

Choisissons maintenant $\varepsilon$ le plus grand possible pour que tous les nombres modifiés
restent dans $[0, 1]$ : c'est le plus petit des nombres $1 - y$ pour les cases où l'on ajoute, et
$y$ pour les cases où l'on retire. Il est strictement positif, car toutes ces cases sont
fractionnaires. Avec ce choix, tous les nombres restent dans $[0, 1]$ et au moins une case du
circuit devient égale à $0$ ou à $1$.

On n'a modifié que des cases fractionnaires, et le nombre de cases fractionnaires a diminué d'au
moins $1$.

### Étape 5 : conclusion

On répète les étapes 3 et 4 tant qu'il reste une case fractionnaire. Comme leur nombre diminue à
chaque fois, le procédé s'arrête au bout d'au plus $nm$ étapes. À la fin, toutes les cases
contiennent $0$ ou $1$, les sommes n'ont pas changé, et les cases qui valaient $0$ au départ n'ont
jamais été touchées.

D'après l'étape 1, en rajoutant les parties entières, on obtient un tableau où chaque réel $x$ a
été remplacé par $\lfloor x \rfloor$ ou $\lceil x \rceil$, avec les mêmes sommes de lignes et de
colonnes. **Un tel remplacement est donc toujours possible.**

## Going further

On ne suppose plus rien sur les sommes. Montrer qu'on peut quand même remplacer chaque réel $x$
par $\lfloor x \rfloor$ ou $\lceil x \rceil$, de sorte que chaque somme de ligne et chaque somme
de colonne soit remplacée par sa partie entière ou par sa partie entière supérieure.
(Indication : ajouter au tableau une colonne et une ligne bien choisies, de nombres dans
$[0, 1[$, pour rendre toutes les sommes entières, puis appliquer l'exercice.)
