---
id: "13627"
title: "n points sur un cercle de périmètre n"
grade: 10
theme: logic-reasoning
difficulty: 5
duration_min: 50
tags: [cercle, arcs, inegalite, principe-extremal, decalage]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2015 (2 juin 2015)"
  reference: "2017-09_coupe_printemps_2015.pdf, énoncés lycée, exercice 7 ; corrigé 2017-09_coupe_printemps_2015_corrige.pdf, exercice 7, où l'inégalité tirée du premier arc est écrite dans le mauvais sens (elle donne b_k − b_ℓ < 1, pas b_ℓ − b_k < 1) ; la conclusion n'en est pas affectée, l'autre arc donnant l'autre inégalité"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_printemps_2015.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_printemps_2015.pdf"
---

## Statement

On place $n$ points sur un cercle de diamètre $\frac{n}{\pi}$. On suppose que, pour deux quelconques de ces points, chacun des deux arcs qui les joignent a une longueur strictement plus grande que le nombre de points placés sur cet arc, sans compter les deux extrémités.

Montrer qu'on peut découper le cercle en $n$ arcs de même longueur, qui contiennent chacun exactement un des points.

## Hints

1. Quel est le périmètre du cercle ? Quelle sera la longueur de chacun des $n$ arcs ?
2. Choisis un des points comme origine et repère chaque point par la longueur de l'arc qui va de l'origine à ce point, en tournant toujours dans le même sens. Numérote les points $0, 1, \ldots, n - 1$ dans cet ordre, et note $a_k$ la position du point numéro $k$.
3. On cherche un nombre $x$ tel que le point $k$ soit dans l'arc qui va de $x + k$ à $x + k + 1$, pour tout $k$. Pose $b_k = a_k - k$ et traduis ce qu'on cherche à l'aide des $b_k$.
4. Montre que deux nombres $b_k$ et $b_\ell$ diffèrent toujours de moins de $1$, en regardant les deux arcs qui joignent les points $k$ et $\ell$.

## Solution

**Le périmètre.** Le cercle a pour diamètre $\frac{n}{\pi}$, donc pour périmètre $\pi \times \frac{n}{\pi} = n$. Les $n$ arcs cherchés auront donc chacun une longueur $1$.

**Repérer les points.** On choisit un des points comme origine, et on parcourt le cercle toujours dans le même sens. La **position** d'un point est la longueur de l'arc parcouru depuis l'origine pour l'atteindre : c'est un nombre de l'intervalle $[0, n[$. Faire un tour complet ajoute $n$ à la position, et revient au même point du cercle.

On numérote les points $0, 1, 2, \ldots, n - 1$ dans l'ordre où on les rencontre, en partant de l'origine, qui porte le numéro $0$. On note $a_k$ la position du point numéro $k$. Ainsi

$$0 = a_0 < a_1 < a_2 < \cdots < a_{n-1} < n .$$

**Ce qu'on cherche.** Pour un nombre $x$, on découpe le cercle en $n$ arcs de longueur $1$ : l'arc numéro $j$ va de la position $x + j$ à la position $x + j + 1$, pour $j = 0, 1, \ldots, n - 1$. Ces $n$ arcs mis bout à bout font exactement un tour.

Il suffit de trouver $x$ tel que, pour tout $k$,

$$x + k < a_k < x + k + 1 . \qquad (\star)$$

En effet, $(\star)$ dit que le point numéro $k$ est strictement à l'intérieur de l'arc numéro $k$. Comme les arcs ne se chevauchent pas, chaque point est dans un seul arc. L'arc numéro $j$ contient donc le point numéro $j$, et aucun autre : il contient exactement un point.

On pose $b_k = a_k - k$. En retirant $k$ dans $(\star)$, la condition devient

$$x < b_k < x + 1 \qquad \text{pour tout } k .$$

Il s'agit donc de trouver un intervalle ouvert de longueur $1$ qui contient tous les nombres $b_0, b_1, \ldots, b_{n-1}$.

**Deux $b$ diffèrent toujours de moins de $1$.** Soient $k < \ell$ deux numéros.

*L'arc qui va du point $k$ au point $\ell$*, dans le sens de parcours, a pour longueur $a_\ell - a_k$. Les points placés sur cet arc, sans compter les extrémités, sont les points $k + 1, \ldots, \ell - 1$ : il y en a $\ell - k - 1$. L'hypothèse donne

$$a_\ell - a_k > \ell - k - 1, \qquad \text{donc} \qquad (a_\ell - \ell) - (a_k - k) > -1, \qquad \text{c'est-à-dire} \qquad b_\ell - b_k > -1 .$$

*L'autre arc*, qui va du point $\ell$ au point $k$ en passant par l'origine, a pour longueur $n - (a_\ell - a_k)$. Les points placés sur cet arc, sans compter les extrémités, sont tous les autres : les $n$ points moins les $\ell - k + 1$ points numérotés de $k$ à $\ell$, soit $n - \ell + k - 1$ points. L'hypothèse donne

$$n - a_\ell + a_k > n - \ell + k - 1, \qquad \text{donc} \qquad (a_k - k) - (a_\ell - \ell) > -1, \qquad \text{c'est-à-dire} \qquad b_\ell - b_k < 1 .$$

Finalement, $-1 < b_\ell - b_k < 1$ : deux nombres $b$ quelconques diffèrent de moins de $1$.

**Le choix de $x$.** Soit $\beta$ le plus petit des nombres $b_k$, et $B$ le plus grand. D'après ce qui précède, $B - \beta < 1$, c'est-à-dire $B - 1 < \beta$. On peut donc choisir un nombre $x$ strictement compris entre $B - 1$ et $\beta$. Alors, pour tout $k$,

$$x < \beta \le b_k \le B < x + 1 .$$

C'est exactement ce qu'on voulait : avec ce $x$, la condition $(\star)$ est vraie pour tout $k$.

**Un exemple.** Avec $n = 3$, le cercle a pour périmètre $3$. Plaçons trois points aux positions $a_0 = 0$, $a_1 = \text{1,3}$ et $a_2 = \text{1,9}$. On vérifie l'hypothèse : les arcs entre deux points voisins ont pour longueurs $\text{1,3}$, $\text{0,6}$ et $\text{1,1}$, toutes positives, et les arcs qui contiennent un point ont pour longueurs $\text{1,9}$, $\text{1,7}$ et $\text{2,4}$, toutes plus grandes que $1$. On trouve $b_0 = 0$, $b_1 = \text{0,3}$ et $b_2 = -\text{0,1}$, donc $\beta = -\text{0,1}$ et $B = \text{0,3}$. On peut prendre $x = -\text{0,4}$. Les trois arcs vont de $-\text{0,4}$ à $\text{0,6}$, de $\text{0,6}$ à $\text{1,6}$ et de $\text{1,6}$ à $\text{2,6}$. Ils contiennent bien chacun un point : $0$, puis $\text{1,3}$, puis $\text{1,9}$.

**Conclusion.** Sous l'hypothèse de l'énoncé, il existe toujours un découpage du cercle en $n$ arcs de longueur $1$ qui contiennent chacun exactement un des points.

## Going further

1. Montrer la réciproque : si le cercle peut être découpé en $n$ arcs de même longueur contenant chacun exactement un point, strictement à l'intérieur, alors l'hypothèse de l'énoncé est vraie.
2. Avec $n = 4$, placer quatre points sur le cercle de façon que l'hypothèse soit fausse, et vérifier qu'aucun découpage ne convient.
