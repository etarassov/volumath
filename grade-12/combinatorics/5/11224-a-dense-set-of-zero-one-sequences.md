---
id: "11224"
title: "Un ensemble dense de suites de 0 et de 1"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [suites, denombrement, double-comptage, congruences, tiroirs, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 1 (combinatoire)"
  reference: "2017-10_ofm-2014-2015-envoi-1.pdf, Exercices du groupe A, exercice 10 ; corrigé 2017-10_ofm-2014-2015-envoi-1-solutions.pdf (en recopiant l'énoncé, le corrigé écrit la borne inférieure 1/(n² + 1) au lieu de 1/(2n² + 1) ; c'est bien 1/(2n² + 1) qu'il démontre, comme dans l'envoi)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-1.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. On note $S$ l'ensemble des suites de $2n$ chiffres formées de $n$
chiffres $0$ et de $n$ chiffres $1$. Par exemple, pour $n = 2$, l'ensemble $S$ contient les six
suites $0011$, $0101$, $0110$, $1001$, $1010$ et $1100$.

Deux suites différentes de $S$ sont **voisines** lorsqu'on passe de l'une à l'autre en déplaçant un
seul chiffre : on le retire de sa place, et on le remet à une autre place. Par exemple, $11100010$ et
$11000110$ sont voisines : on retire le premier chiffre $1$ de $11100010$, ce qui donne $1100010$,
puis on le remet entre le sixième et le septième chiffre, ce qui donne $11000110$.

Une partie $T$ de $S$ est dite **dense** si toute suite de $S$ qui n'est pas dans $T$ est voisine
d'au moins une suite de $T$.

Soit $T$ une partie dense de $S$ ayant le plus petit nombre d'éléments possible. On note $|A|$ le
nombre d'éléments d'un ensemble $A$. Montrer que
$$\frac{|S|}{2n^2 + 1} \leqslant |T| \leqslant \frac{|S|}{n + 1} .$$

## Hints

1. Pour l'inégalité de gauche : combien une suite de $S$ a-t-elle de voisines, au plus ? Quand on
   déplace un $0$, de quoi dépend le résultat ?
2. Si chaque suite a au plus $2n^2$ voisines, combien de suites une partie $T$ peut-elle « couvrir »,
   en comptant celles de $T$ ?
3. Pour l'inégalité de droite, il suffit de trouver une partie dense qui a au plus
   $\frac{|S|}{n + 1}$ éléments. Essaie de ranger les suites de $S$ en $n + 1$ familles qui sont
   toutes denses.
4. Les $n$ zéros découpent une suite en $n + 1$ paquets de $1$ (certains vides), numérotés de $0$ à
   $n$ de gauche à droite. Associe à la suite la somme des numéros des paquets de tous ses $1$, et
   regarde son reste dans la division par $n + 1$. Que devient ce reste quand on déplace un $1$ d'un
   paquet à un autre ?

## Solution

**Étape 1. Une suite a au plus $2n^2$ voisines.**

Soit $s$ une suite de $S$. Regardons d'abord les suites obtenues en déplaçant un $0$ de $s$.

Une fois le $0$ retiré, il reste une suite de $2n - 1$ chiffres, qui contient $n$ chiffres $1$. Quand
on remet le $0$, le résultat ne dépend que du nombre de $1$ placés à sa gauche. En effet, si on le
remet au milieu d'un groupe de $0$ qui se suivent, peu importe à quelle place dans ce groupe : on
obtient la même suite. Ce nombre de $1$ à gauche va de $0$ à $n$, ce qui fait $n + 1$ résultats
possibles. L'un d'eux est $s$ elle-même : on remet le $0$ là où il était. Il reste au plus $n$
voisines.

Comme $s$ contient $n$ zéros, en déplaçant un $0$ on obtient au plus $n \times n = n^2$ voisines. De
même, en déplaçant un $1$, on obtient au plus $n^2$ voisines. Au total, $s$ a au plus $2n^2$ voisines.

**Étape 2. L'inégalité de gauche.**

Soit $T$ une partie dense. Toute suite de $S$ est soit dans $T$, soit voisine d'une suite de $T$.
Chaque suite de $T$ « couvre » donc au plus $1 + 2n^2$ suites : elle-même et ses voisines. Pour
couvrir les $|S|$ suites, il faut
$$(2n^2 + 1) \times |T| \geqslant |S|, \qquad \text{c'est-à-dire} \qquad |T| \geqslant \frac{|S|}{2n^2 + 1} .$$
C'est vrai pour toute partie dense, donc en particulier pour celle qui a le moins d'éléments.

**Étape 3. On range les suites en $n + 1$ familles.**

Dans une suite de $S$, les $n$ zéros découpent la suite en $n + 1$ **paquets** de $1$ qui se suivent :
le paquet $0$ avant le premier zéro, le paquet $1$ entre le premier et le deuxième zéro, et ainsi de
suite jusqu'au paquet $n$ après le dernier zéro. Certains paquets peuvent être vides. Par exemple,
pour $11100010$, les paquets $0$, $1$, $2$, $3$, $4$ contiennent respectivement $3$, $0$, $0$, $1$
et $0$ chiffres $1$.

Notons $p_k$ le nombre de $1$ du paquet $k$, et posons
$$N(s) = 0 \times p_0 + 1 \times p_1 + 2 \times p_2 + \cdots + n \times p_n .$$
Autrement dit, $N(s)$ est la somme, sur tous les $1$ de la suite, du numéro de leur paquet. Pour
$11100010$, on trouve $N = 3 \times 0 + 1 \times 3 = 3$.

Appelons **famille** de $s$ le reste de $N(s)$ dans la division euclidienne par $n + 1$. Il y a $n + 1$
familles possibles, $0, 1, \ldots, n$. On note $F_r$ l'ensemble des suites de la famille $r$.

**Étape 4. Une suite a une voisine dans chacune des autres familles.**

Soit $s$ une suite de $S$. Elle contient au moins un $1$, situé dans un certain paquet $i$.
Retirons ce $1$ et remettons-le dans le paquet $j$, pour $j = 0, 1, \ldots, n$. Seuls $p_i$ et $p_j$
changent : $p_i$ diminue de $1$ et $p_j$ augmente de $1$. Donc $N$ change de $j - i$.

Quand $j$ va de $0$ à $n$, la différence $j - i$ prend $n + 1$ valeurs entières qui se suivent. Or
$n + 1$ entiers qui se suivent ont tous des restes différents dans la division par $n + 1$, donc ils
ont tous les restes possibles. Ainsi, les $n + 1$ suites obtenues sont dans les $n + 1$ familles,
une dans chaque. Pour $j = i$, on retrouve $s$ elle-même. Les $n$ autres suites sont des voisines de
$s$, et elles sont dans les $n$ familles autres que celle de $s$.

**Étape 5. Chaque famille est dense, et l'inégalité de droite.**

Fixons une famille $r$. Une suite $s$ qui n'est pas dans $F_r$ a, d'après l'étape 4, une voisine dans
$F_r$. Donc $F_r$ est une partie dense de $S$.

Les $n + 1$ familles $F_0, F_1, \ldots, F_n$ se partagent les $|S|$ suites. Elles ne peuvent pas
avoir toutes plus de $\frac{|S|}{n + 1}$ éléments, sinon elles en auraient plus de $|S|$ à elles
toutes. L'une d'elles a donc au plus $\frac{|S|}{n + 1}$ éléments, et elle est dense. Une partie
dense ayant le moins d'éléments possible en a donc au plus autant :
$$|T| \leqslant \frac{|S|}{n + 1} .$$

**Conclusion : pour une partie dense $T$ ayant le moins d'éléments possible, on a bien
$\frac{|S|}{2n^2 + 1} \leqslant |T| \leqslant \frac{|S|}{n + 1}$.**

## Going further

- Le nombre de suites de $S$ est $|S| = \binom{2n}{n}$ : il faut choisir les $n$ places des zéros
  parmi les $2n$ places.
- On peut montrer, mais c'est plus difficile, que les $n + 1$ familles ont toutes exactement le même
  nombre d'éléments, $\frac{1}{n + 1}\binom{2n}{n}$. Ce nombre s'appelle le $n$-ième nombre de
  Catalan : $1$, $2$, $5$, $14$, $42$, … pour $n = 1, 2, 3, 4, 5$.
