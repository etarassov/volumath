---
id: "11234"
title: "Les sept nains en zigzag"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [denombrement, permutations, recurrence, cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 4 (combinatoire)"
  reference: "2017-10_ofm-2015-2016-envoi4.pdf, Exercices du groupe B, exercice 3 ; corrigé 2017-10_ofm-2015-2016-envoi-4-solutions.pdf (dans sa définition de u3, le corrigé écrit « le second, qui est plus grand que le troisième » au lieu de « plus petit »)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi4.pdf"
---

## Statement

Les sept nains ont des tailles toutes différentes. Ils se rendent à la mine en file indienne, dans un
ordre tel que :

- le nain en tête est plus grand que le deuxième ;
- le deuxième est plus petit que le troisième ;
- le troisième est plus grand que le quatrième ;
- et ainsi de suite jusqu'au septième : le cinquième est plus grand que le sixième, et le sixième
  est plus petit que le septième.

De combien de façons peut-on ranger les sept nains de cette manière ?

## Hints

1. Commence par des files plus courtes, qui suivent la même règle : $3$ nains, puis $5$ nains.
2. Où peut se trouver le plus petit des nains ? Il est plus petit que ses voisins.
3. Une fois le plus petit nain placé, regarde les nains qui sont devant lui et ceux qui sont derrière
   lui. Chacun de ces deux morceaux de la file suit-il encore la règle ?
4. Pour $7$ nains, quand le plus petit est au milieu, il faut d'abord choisir les $3$ nains qui
   marchent devant lui. De combien de façons ?

## Solution

Appelons **file en zigzag** une file de nains de tailles toutes différentes, en nombre impair, dans
laquelle le premier est plus grand que le deuxième, le deuxième plus petit que le troisième, et ainsi
de suite, en alternant, jusqu'au dernier. Dans une telle file, chaque nain en position **impaire**
($1$, $3$, $5$, …) est plus grand que ses voisins, et chaque nain en position **paire** ($2$, $4$, …)
est plus petit que ses voisins. Le dernier nain est en position impaire et il est plus grand que
l'avant-dernier.

Pour un nombre impair $m$, notons $u_m$ le nombre de files en zigzag que l'on peut former avec $m$
nains de tailles différentes donnés. On cherche $u_7$. Pour un seul nain, il n'y a aucune condition :
$u_1 = 1$.

**L'idée.** Le plus petit nain est plus petit que tous ses voisins, donc il ne peut pas être en
position impaire : il est en position paire. Inversement, si on place le plus petit nain en position
paire, les deux conditions qui le concernent (avec le nain devant lui et avec le nain derrière lui)
sont toujours vraies. Il reste seulement à vérifier les conditions entre les autres nains. Or :

- les nains placés devant lui forment une file qui commence en position $1$ et finit en position
  impaire : c'est une file en zigzag ;
- les nains placés derrière lui forment aussi une file en zigzag, car elle commence en position
  impaire, et c'est donc un nain « plus grand que ses voisins » qui la commence.

**Trois nains.** Le plus petit est en position $2$. Les deux autres se placent devant et derrière lui
dans n'importe quel ordre : $u_3 = 2$.

**Cinq nains.** Le plus petit est en position $2$ ou $4$.

- En position $2$ : on choisit le nain en tête, $4$ choix, puis on range les trois derniers en
  zigzag, $u_3$ façons. Cela fait $4u_3 = 8$ files.
- En position $4$ : de même, on choisit le dernier nain, $4$ choix, puis on range les trois premiers
  en zigzag, $u_3$ façons. Cela fait encore $8$ files.

Donc $u_5 = 8 + 8 = 16$.

**Sept nains.** Le plus petit est en position $2$, $4$ ou $6$.

- En position $2$ : on choisit le nain en tête, $6$ choix, puis on range les cinq derniers en
  zigzag, $u_5 = 16$ façons. Cela fait $6 \times 16 = 96$ files.
- En position $6$ : de même, $6$ choix pour le dernier nain et $u_5$ façons de ranger les cinq
  premiers. Cela fait encore $96$ files.
- En position $4$ : il faut d'abord choisir les $3$ nains qui marchent devant le plus petit, parmi les
  $6$ autres. Si on les choisit l'un après l'autre, il y a $6 \times 5 \times 4 = 120$ façons, mais
  chaque groupe de trois nains est alors compté $3 \times 2 \times 1 = 6$ fois (une fois pour chaque
  ordre de choix). Il y a donc $\frac{120}{6} = 20$ groupes possibles. Ensuite, on range les $3$ nains
  de devant en zigzag, $u_3 = 2$ façons, et les $3$ nains de derrière en zigzag, $u_3 = 2$ façons.
  Cela fait $20 \times 2 \times 2 = 80$ files.

Donc $u_7 = 96 + 96 + 80 = 272$.

**Conclusion : il y a $272$ façons de ranger les sept nains.**

## Going further

- La même méthode donne le nombre de files en zigzag de $9$ nains : le plus petit est en position
  $2$, $4$, $6$ ou $8$, et on trouve
  $$u_9 = 8 \times 272 + 56 \times 2 \times 16 + 56 \times 16 \times 2 + 8 \times 272 = 7936 .$$
  Retrouve les nombres $8$ et $56$.
- Avec un nombre pair de nains, la file finit par un nain plus petit que l'avant-dernier. Pour
  $4$ nains, il y a $5$ files de ce genre, et pour $6$ nains, il y en a $61$. Essaie de retrouver
  le nombre $5$ en écrivant toutes les files de $4$ nains.
