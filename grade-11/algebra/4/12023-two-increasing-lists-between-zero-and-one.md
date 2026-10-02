---
id: "12023"
title: "Une inégalité entre deux listes croissantes"
grade: 11
theme: algebra
difficulty: 4
duration_min: 45
tags: [inegalites, sommes, somme telescopique, suites croissantes, minoration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test d'entraînement de janvier 2013"
  reference: "2017-10_ofm-2012-2013-test-janvier.pdf, exercice 5 (sujet olympique) ; corrigé 2017-10_ofm-2012-2013-test-janvier-corrige.pdf (le corrigé procède par récurrence sur n ; solution réécrite par une minoration directe, plus courte)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-janvier.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier, et soient des réels

$$0 \leqslant x_1 \leqslant x_2 \leqslant \cdots \leqslant x_n \leqslant 1 \qquad \text{et} \qquad 0 \leqslant y_1 \leqslant y_2 \leqslant \cdots \leqslant y_n \leqslant 1 .$$

On pose $x_{n+1} = 1$. Démontrer que

$$\sum_{i=1}^{n} (x_i - y_i) \; + \; n \sum_{i=1}^{n} (x_{i+1} - x_i)\, y_i \;\geqslant\; 0 .$$

## Hints

1. Notez $T = \displaystyle\sum_{i=1}^{n} (x_{i+1} - x_i)\, y_i$. Pourquoi tous les termes de $T$ sont-ils positifs ou nuls ?
2. Fixez un indice $j$. Montrez que $T \geqslant y_j\,(1 - x_j)$ : gardez seulement les termes de $T$ à partir de $i = j$, et remplacez chaque $y_i$ par le nombre $y_j$, qui est plus petit.
3. Vous avez ainsi $n$ inégalités, une pour chaque $j$. Ajoutez-les. Que reste-t-il à montrer ?

## Solution

Notons

$$T = \sum_{i=1}^{n} (x_{i+1} - x_i)\, y_i .$$

Pour chaque $i$ de $1$ à $n$, on a $x_{i+1} - x_i \geqslant 0$ (la liste des $x$ est croissante et $x_n \leqslant 1 = x_{n+1}$) et $y_i \geqslant 0$. Donc **chaque terme de $T$ est positif ou nul.**

**Étape 1 : pour chaque $j$, on a $T \geqslant y_j\,(1 - x_j)$.** Fixons un indice $j$ entre $1$ et $n$.

- En supprimant les termes d'indice $i < j$, qui sont positifs ou nuls, on obtient un nombre plus petit :
$$T \geqslant \sum_{i=j}^{n} (x_{i+1} - x_i)\, y_i .$$
- Pour $i \geqslant j$, on a $y_i \geqslant y_j$ et $x_{i+1} - x_i \geqslant 0$, donc $(x_{i+1} - x_i)\, y_i \geqslant (x_{i+1} - x_i)\, y_j$. Ainsi
$$T \geqslant y_j \sum_{i=j}^{n} (x_{i+1} - x_i) .$$
- La dernière somme se simplifie de proche en proche :
$$(x_{j+1} - x_j) + (x_{j+2} - x_{j+1}) + \cdots + (x_{n+1} - x_n) = x_{n+1} - x_j = 1 - x_j .$$

On a donc bien

$$T \geqslant y_j\,(1 - x_j) . \qquad (1)$$

**Étape 2 : ajouter ces inégalités.** L'inégalité $(1)$ est vraie pour chacun des $n$ indices $j = 1, 2, \ldots, n$. En les ajoutant, on obtient

$$n\,T \geqslant \sum_{j=1}^{n} y_j\,(1 - x_j) .$$

**Étape 3 : conclure.** Le nombre à étudier vaut donc

$$\sum_{j=1}^{n} (x_j - y_j) + n\,T \;\geqslant\; \sum_{j=1}^{n} \left(x_j - y_j + y_j - x_j y_j\right) = \sum_{j=1}^{n} x_j\,(1 - y_j) .$$

Chaque terme $x_j\,(1 - y_j)$ est positif ou nul, car $x_j \geqslant 0$ et $y_j \leqslant 1$.

**Conclusion.** On a bien $\displaystyle\sum_{i=1}^{n} (x_i - y_i) + n \sum_{i=1}^{n} (x_{i+1} - x_i)\, y_i \geqslant 0$.

## Going further

L'inégalité est la meilleure possible : si tous les $x_i$ sont nuls et tous les $y_i$ égaux à un même nombre $c$, le membre de gauche vaut $-nc + n \times (1 - 0) \times c = 0$. On ne peut donc pas remplacer le facteur $n$ par un nombre plus petit.

Le corrigé officiel démontre l'inégalité par récurrence sur $n$ : on isole les termes qui contiennent $x_1$ et $y_1$, et on applique l'hypothèse de récurrence aux listes $x_2, \ldots, x_{n+1}$ et $y_2, \ldots, y_{n+1}$. C'est un bon exercice de refaire ce calcul.
