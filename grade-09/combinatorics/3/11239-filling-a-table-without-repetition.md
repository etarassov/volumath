---
id: "11239"
title: "Remplir un tableau sans répétition"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 35
tags: [denombrement, tableaux, carres latins, symetrie, cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 4 (combinatoire)"
  reference: "2017-10_ofm-2016-2017-envoi-4.pdf, Exercices communs, exercice 4 ; corrigé 2017-10_ofm-2016-2017-envoi-4-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-4.pdf"
---

## Statement

1. Combien de tableaux de $3 \times 3$ cases peut-on remplir avec les nombres $1$, $2$ et $3$, de
   telle façon que le même nombre n'apparaisse jamais deux fois dans une même ligne, ni deux fois
   dans une même colonne ?
2. Même question pour les tableaux de $4 \times 4$ cases remplis avec les nombres $1$, $2$, $3$
   et $4$.

## Hints

1. Dans un tel tableau de $4 \times 4$, chaque ligne contient chacun des nombres $1$, $2$, $3$ et
   $4$ exactement une fois. Pourquoi ? Et chaque colonne ?
2. Commence par compter les tableaux dont la première ligne est $1\ 2\ 3\ 4$ et dont la première
   colonne, lue de haut en bas, est aussi $1\ 2\ 3\ 4$. Il n'y en a pas beaucoup.
3. Pour ces tableaux-là, regarde la case de la deuxième ligne et de la deuxième colonne : quels
   nombres peut-elle contenir ? Sépare les cas.
4. Si on échange partout deux nombres dans un bon tableau, par exemple tous les $1$ avec tous les
   $2$, obtient-on encore un bon tableau ? Et si on échange deux lignes ?

## Solution

Appelons **bon tableau** un tableau rempli comme le demande l'énoncé. Dans un bon tableau de
$4 \times 4$, une ligne a quatre cases et contient quatre nombres tous différents choisis parmi
$1$, $2$, $3$ et $4$ : elle contient donc chacun de ces nombres exactement une fois. Il en va de
même pour chaque colonne. C'est pareil pour les tableaux de $3 \times 3$.

On fait le calcul pour les tableaux de $4 \times 4$, puis on refait le même raisonnement pour ceux
de $3 \times 3$.

### Étape 1. Les tableaux « rangés »

Disons qu'un bon tableau est **rangé** si sa première ligne est $1\ 2\ 3\ 4$ et si sa première
colonne, lue de haut en bas, est aussi $1\ 2\ 3\ 4$. Comptons les tableaux rangés. Ils commencent
ainsi :

| | | | |
|---|---|---|---|
| 1 | 2 | 3 | 4 |
| 2 | ? | | |
| 3 | | | |
| 4 | | | |

La case marquée « ? » est dans la deuxième ligne, qui contient déjà un $2$, et dans la deuxième
colonne, qui contient aussi un $2$. Elle contient donc $1$, $3$ ou $4$.

**Cas 1 : la case « ? » contient $1$.** La deuxième ligne doit encore recevoir $3$ et $4$ dans ses
deux dernières cases. La troisième colonne contient déjà un $3$ en haut, donc la deuxième ligne est
$2\ 1\ 4\ 3$. Dans la deuxième colonne, il manque $3$ et $4$ ; la troisième ligne commence par
$3$, donc elle reçoit le $4$, et la quatrième ligne reçoit le $3$. La troisième ligne commence donc
par $3\ 4$ et il lui manque $1$ et $2$, dans un ordre ou dans l'autre :

- si la troisième ligne est $3\ 4\ 1\ 2$, la quatrième ligne est forcément $4\ 3\ 2\ 1$ (chaque
  colonne reçoit le nombre qui lui manque), et le tableau obtenu est bon ;
- si la troisième ligne est $3\ 4\ 2\ 1$, la quatrième ligne est forcément $4\ 3\ 1\ 2$, et le
  tableau obtenu est bon aussi.

Ce cas donne $2$ tableaux rangés.

**Cas 2 : la case « ? » contient $3$.** La deuxième ligne doit encore recevoir $1$ et $4$. La
quatrième colonne contient déjà un $4$ en haut, donc la deuxième ligne est $2\ 3\ 4\ 1$. Dans la
deuxième colonne, il manque $1$ et $4$ ; la quatrième ligne commence par $4$, donc elle reçoit le
$1$, et la troisième ligne reçoit le $4$. La troisième ligne commence par $3\ 4$ et il lui manque
$1$ et $2$ ; la quatrième colonne contient déjà un $1$, donc la troisième ligne est $3\ 4\ 1\ 2$.
La quatrième ligne est alors forcément $4\ 1\ 2\ 3$, et le tableau est bon. Ce cas donne $1$ tableau
rangé.

**Cas 3 : la case « ? » contient $4$.** La deuxième ligne doit encore recevoir $1$ et $3$. La
troisième colonne contient déjà un $3$, donc la deuxième ligne est $2\ 4\ 1\ 3$. Dans la deuxième
colonne, il manque $1$ et $3$ ; la troisième ligne commence par $3$, donc elle reçoit le $1$, et la
quatrième ligne reçoit le $3$. La troisième ligne commence par $3\ 1$ et il lui manque $2$ et $4$ ;
la quatrième colonne contient déjà un $4$, donc la troisième ligne est $3\ 1\ 4\ 2$. La quatrième
ligne est alors forcément $4\ 3\ 2\ 1$, et le tableau est bon. Ce cas donne $1$ tableau rangé.

Il y a donc $2 + 1 + 1 = 4$ tableaux rangés de $4 \times 4$.

### Étape 2. Ranger un bon tableau

Deux transformations gardent un bon tableau bon :

- **renommer les nombres**, c'est-à-dire remplacer partout chaque nombre par un autre, deux nombres
  différents étant remplacés par deux nombres différents (par exemple, échanger tous les $1$ avec
  tous les $2$) : deux cases qui avaient des nombres différents gardent des nombres différents ;
- **changer l'ordre des lignes** : chaque ligne reste la même, et chaque colonne contient encore les
  mêmes nombres, seulement dans un autre ordre.

Partons d'un bon tableau quelconque. Il y a **une seule** façon de renommer les nombres pour que la
première ligne devienne $1\ 2\ 3\ 4$ : le nombre de la première case doit devenir $1$, celui de la
deuxième case doit devenir $2$, et ainsi de suite. Après ce renommage, la première colonne commence
par $1$ et contient ensuite $2$, $3$ et $4$ dans un certain ordre. Il y a **une seule** façon de
changer l'ordre des lignes $2$, $3$ et $4$ pour que cette colonne devienne $1\ 2\ 3\ 4$. On obtient
alors un tableau rangé.

Inversement, partons d'un tableau rangé, et faisons les deux opérations à l'envers : on change
l'ordre des lignes $2$, $3$ et $4$, puis on renomme les nombres.

- Pour l'ordre des lignes $2$, $3$ et $4$, il y a $3 \times 2 \times 1 = 6$ possibilités.
- Pour le renommage, il y a $4 \times 3 \times 2 \times 1 = 24$ possibilités : $4$ choix pour le
  nouveau nom du $1$, puis $3$ choix pour celui du $2$, et ainsi de suite.

Chaque bon tableau s'obtient ainsi d'une seule façon : le tableau rangé de départ, le renommage et
l'ordre des lignes se retrouvent à partir du bon tableau, par la méthode du paragraphe précédent. En
effet, la première ligne du bon tableau indique le renommage, puis la première colonne indique
l'ordre des lignes.

Le nombre de bons tableaux de $4 \times 4$ est donc
$$4 \times 6 \times 24 = 576 .$$

### Étape 3. Les tableaux de $3 \times 3$

On fait exactement de même. Un tableau rangé de $3 \times 3$ a pour première ligne $1\ 2\ 3$ et pour
première colonne $1\ 2\ 3$. La case de la deuxième ligne et de la deuxième colonne contient $1$
ou $3$.

- Si elle contient $1$, la deuxième ligne est $2\ 1\ 3$, mais la troisième colonne contient alors
  deux fois le $3$ : c'est impossible.
- Si elle contient $3$, la deuxième ligne est $2\ 3\ 1$, puis la troisième ligne est forcément
  $3\ 1\ 2$, et le tableau est bon.

Il y a donc un seul tableau rangé de $3 \times 3$. Il y a $2 \times 1 = 2$ façons d'ordonner les
lignes $2$ et $3$, et $3 \times 2 \times 1 = 6$ façons de renommer les nombres. Le nombre de bons
tableaux de $3 \times 3$ est donc $1 \times 2 \times 6 = 12$.

**Conclusion : il y a $12$ bons tableaux de $3 \times 3$ et $576$ bons tableaux de $4 \times 4$.**

## Going further

Ces tableaux s'appellent des **carrés latins**. On connaît leur nombre pour les petites tailles, mais
il grandit très vite : il y a $161\,280$ carrés latins de $5 \times 5$. Avec la même méthode, il
suffit de trouver les $56$ carrés latins rangés de $5 \times 5$, car
$56 \times (4 \times 3 \times 2 \times 1) \times (5 \times 4 \times 3 \times 2 \times 1) = 161\,280$.
