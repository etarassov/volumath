---
id: "1422"
title: "Un produit qui fait 224"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [decomposition-en-facteurs-premiers, diviseurs, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2, Winter Competition « Game »"
  reference: "Handout-3916-3573.pdf, partie 1 « Numbers », problème 4 (réponse dans Handout-3917-3573.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3916-3573.pdf"
---

## Statement

On a multiplié entre eux plusieurs entiers, tous supérieurs ou égaux à $2$, et l'on a obtenu $224$.

Le plus petit de ces entiers est exactement égal à la moitié du plus grand.

Combien d'entiers a-t-on multipliés ?

## Hints

1. Commencer par décomposer $224$ en produit de facteurs premiers.
2. Le nombre $7$ apparaît dans cette décomposition. Dans quel facteur peut-il se trouver ?
3. En déduire que le plus grand des entiers est au moins $7$.
4. Notons $m$ le plus petit et $2m$ le plus grand. Quelles valeurs de $m$ sont possibles, sachant que $m$ et $2m$ divisent tous les deux $224$ ?
5. Pour chaque valeur de $m$ retenue, regarder ce que doivent valoir les autres facteurs, tous compris entre $m$ et $2m$.

## Solution

**Décomposer 224.**

$$224 = 2 \times 112 = 2 \times 2 \times 56 = 2^5 \times 7 .$$

**Où se cache le 7 ?**

Le produit des entiers choisis vaut $224$, qui est divisible par $7$. Comme $7$ est premier, l'un au moins de ces entiers est divisible par $7$. Or les diviseurs de $224$ divisibles par $7$ sont

$$7, \quad 14, \quad 28, \quad 56, \quad 112, \quad 224 .$$

En particulier, le plus grand des entiers choisis, appelons-le $M$, vérifie $M \geqslant 7$.

**Utiliser la condition.**

Notons $m$ le plus petit des entiers choisis. L'énoncé dit $M = 2m$, donc $2m \geqslant 7$, c'est-à-dire $m \geqslant 4$ (car $m$ est entier). De plus $m$ et $2m$ sont des diviseurs de $224$.

Le produit de **tous** les entiers vaut $224$, et ce produit contient au moins les deux facteurs $m$ et $2m$. Les autres facteurs valant au moins $1$, on a donc

$$m \times 2m \leqslant 224, \qquad \text{soit } 2m^2 \leqslant 224, \qquad \text{soit } m^2 \leqslant 112 .$$

Comme $10^2 = 100 \leqslant 112 < 121 = 11^2$, on obtient $m \leqslant 10$. Avec la minoration précédente, il reste

$$4 \leqslant m \leqslant 10 .$$

Or $m$ divise $224 = 2^5 \times 7$, et les diviseurs de $224$ sont

$$1, 2, 4, 7, 8, 14, 16, 28, 32, 56, 112, 224 .$$

Les seuls diviseurs compris entre $4$ et $10$ sont $4$, $7$ et $8$. Il ne reste donc que trois candidats : $m = 4$, $m = 7$ et $m = 8$.

**Examiner les trois cas.**

*Cas $m = 8$, $M = 16$.* Tous les entiers choisis sont compris entre $8$ et $16$, et leur produit vaut $224$. Mais $8 \times 16 = 128$ et le produit doit valoir $224$ : il faudrait donc au moins un troisième facteur, ce qui porterait le produit à au moins $128 \times 8 = 1024 > 224$. Et avec seulement les deux facteurs $8$ et $16$, le produit vaut $128 \neq 224$. Impossible.

*Cas $m = 7$, $M = 14$.* Tous les facteurs sont entre $7$ et $14$ et leur produit vaut $224$. Déjà $7 \times 14 = 98$, et $224 : 98$ n'est pas entier, donc il faut d'autres facteurs ; mais $98 \times 7 = 686 > 224$. Impossible.

*Cas $m = 4$, $M = 8$.* Tous les facteurs sont entre $4$ et $8$, et le produit de $4$ et $8$ vaut $32$. Il reste à obtenir $224 : 32 = 7$ avec les autres facteurs. Un seul facteur supplémentaire égal à $7$ convient, et $7$ est bien compris entre $4$ et $8$. On obtient

$$4 \times 7 \times 8 = 224 ,$$

avec plus petit $4$, plus grand $8$, et $8 = 2 \times 4$. Tout est vérifié.

Pourrait-il y avoir, dans ce cas, plus de trois facteurs ? Les facteurs supplémentaires seraient tous $\geqslant 4$, et leur produit devrait valoir $7$ ; or $7$ est premier et ne peut pas s'écrire comme produit de deux entiers supérieurs ou égaux à $4$. Non.

**Conclusion.** Le seul choix possible est $4 \times 7 \times 8$ : on a multiplié $\boxed{3}$ entiers.

## Going further

1. Refaire l'exercice en remplaçant $224$ par $120$. Y a-t-il encore une réponse, et est-elle unique ?
2. Que se passe-t-il si l'on autorise le facteur $1$ ? La condition « le plus petit est la moitié du plus grand » devient-elle satisfiable ?
3. Trouver tous les entiers $N$ inférieurs à $1000$ qui s'écrivent comme produit de trois entiers $m$, $k$, $2m$ avec $m \leqslant k \leqslant 2m$.
