---
id: "11222"
title: "Les jetons qui s'écartent"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [processus, invariant, monovariant, somme-de-carres, terminaison]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 1 (combinatoire)"
  reference: "2017-10_ofm-2014-2015-envoi-1.pdf, Exercices du groupe A, exercice 8 ; corrigé 2017-10_ofm-2014-2015-envoi-1-solutions.pdf (le corrigé conclut avec le produit des numéros, après les avoir rendus positifs ; on utilise ici la somme des carrés)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-1.pdf"
---

## Statement

On dispose de $n$ jetons, qui portent chacun un numéro entier (éventuellement négatif).

Tant que deux jetons portent le même numéro $m$, on peut faire un **changement** : on retire ces
deux jetons, et on les remplace par un jeton portant le numéro $m - 1$ et un jeton portant le numéro
$m + 1$.

Montrer que, quelle que soit la façon de choisir les changements, on arrive au bout d'un nombre fini
de changements à une situation où tous les jetons portent des numéros différents.

## Hints

1. Que devient la somme des numéros lors d'un changement ? Et la somme des carrés des numéros ?
2. Si les numéros restent toujours dans un intervalle fixé à l'avance, pourquoi le processus
   s'arrête-t-il forcément ?
3. Soit $m_0$ le plus petit numéro au départ. Un jeton peut-il descendre très loin en dessous de
   $m_0$ ?
4. Regarde les entiers compris entre le plus petit numéro et $m_0$. Montre qu'on n'y trouve jamais
   deux entiers qui se suivent et qui ne sont portés par aucun jeton.

## Solution

**Étape 1. Ce que fait un changement.**

Lors d'un changement, deux numéros $m$ sont remplacés par $m - 1$ et $m + 1$.

- La **somme** des numéros ne change pas, car $(m - 1) + (m + 1) = m + m$. Notons $S$ cette somme.
- La **somme des carrés** des numéros augmente exactement de $2$, car
  $$(m - 1)^2 + (m + 1)^2 = 2m^2 + 2 .$$

Le processus s'arrête quand plus aucun changement n'est possible, c'est-à-dire quand tous les
numéros sont différents. Il suffit donc de montrer qu'on ne peut pas faire une infinité de
changements.

**Étape 2. Les numéros ne descendent jamais très bas.**

Soit $m_0$ le plus petit numéro au départ. À chaque instant, appelons $P$ l'ensemble formé de
l'entier $m_0$ et de tous les numéros inférieurs ou égaux à $m_0$ portés par des jetons. Montrons
la propriété suivante :

> **(H)** Entre le plus petit élément de $P$ et $m_0$, il n'y a jamais deux entiers qui se suivent
> et qui sont tous les deux absents de $P$.

Au départ, aucun jeton n'est en dessous de $m_0$, donc $P = \{m_0\}$ et (H) est vraie. Montrons que
si (H) est vraie avant un changement, elle l'est encore après. Le changement porte sur deux jetons de
numéro $m$.

- Si $m \geqslant m_0 + 1$, les nouveaux numéros $m - 1$ et $m + 1$ sont au moins $m_0$. Les numéros
  plus petits que $m_0$ ne changent pas, et $m_0$ reste dans $P$. L'ensemble $P$ ne change pas.
- Si $m = m_0$, le numéro $m_0 - 1$ entre dans $P$, et $m_0$ y reste. On ajoute à $P$ un entier
  voisin d'un de ses éléments, et (H) reste vraie.
- Si $m < m_0$, alors $m$ était dans $P$, et $m + 1 \leqslant m_0$. Après le changement, $m - 1$ et
  $m + 1$ sont dans $P$, et le seul élément qui peut disparaître de $P$ est $m$. Mais ses deux
  voisins $m - 1$ et $m + 1$ sont présents : l'absence de $m$ ne crée donc pas deux absents qui se
  suivent. Enfin, si $m - 1$ est plus petit que tous les anciens éléments de $P$, la zone à
  surveiller s'agrandit d'un seul entier vers le bas, $m - 1$ lui-même, qui est présent.

Ainsi (H) est vraie à chaque instant.

Conséquence. À chaque instant, rangeons les éléments de $P$ par ordre décroissant. Par (H), deux
éléments qui se suivent dans ce rangement diffèrent d'au plus $2$. Or $P$ contient au plus $n + 1$
éléments : $m_0$ et au plus $n$ numéros de jetons. En descendant de $m_0$ au plus petit élément de
$P$, on fait donc au plus $n$ pas, chacun d'au plus $2$. Le plus petit élément de $P$ est au moins
$m_0 - 2n$.

Tout jeton a un numéro au moins $m_0$, ou bien un numéro dans $P$. Dans les deux cas, **chaque jeton
porte toujours un numéro au moins égal à $L = m_0 - 2n$.**

**Étape 3. Les numéros ne montent jamais très haut.**

La somme des numéros vaut toujours $S$. Si un jeton porte le numéro $x$, les $n - 1$ autres jetons
portent des numéros au moins égaux à $L$, donc
$$x = S - (\text{somme des autres numéros}) \leqslant S - (n - 1)L .$$
Notons $U = S - (n - 1)L$. Tous les numéros restent toujours entre $L$ et $U$.

**Étape 4. Le processus s'arrête.**

Soit $K$ le plus grand des deux nombres $|L|$ et $|U|$. Chaque numéro $x$ vérifie $x^2 \leqslant K^2$,
donc la somme des carrés des numéros est toujours au plus $nK^2$. Elle part d'une certaine valeur
$Q_0$ et augmente de $2$ à chaque changement. Après $c$ changements, elle vaut $Q_0 + 2c$, donc
$Q_0 + 2c \leqslant nK^2$, et
$$c \leqslant \frac{nK^2 - Q_0}{2} .$$
On ne peut donc faire qu'un nombre fini de changements.

**Conclusion : quels que soient les changements choisis, le processus s'arrête au bout d'un nombre
fini de changements, et à ce moment tous les jetons portent des numéros différents.**

## Going further

Par exemple, avec trois jetons portant tous le numéro $0$ : on obtient $-1, 1, 0$, et c'est fini
après un seul changement. Avec quatre jetons de numéro $0$, essaie de trouver la situation finale : on
arrive toujours à $-2, -1, 1, 2$. Plus généralement, la situation finale ne dépend pas de l'ordre
des changements, mais c'est plus difficile à démontrer.
