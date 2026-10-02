---
id: "8822"
title: "p²(p³ − 1) = q(q + 1)"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [nombres-premiers, lemme-de-gauss, divisibilite, encadrement, equation-entiere]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Arithmétique : Nombres premiers » (Anatole et Martin), exercice 24, p. 60"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Trouver toutes les paires $(p, q)$ de nombres premiers telles que
$$p^2\left(p^3 - 1\right) = q\,(q+1) .$$

## Hints

1. Commence par écarter le cas $p = q$ : l'équation devient alors une égalité entre deux puissances de $p$ que l'on compare facilement.
2. Une fois $p \neq q$ acquis, $p$ et $q$ sont deux nombres premiers distincts, donc premiers entre eux, et $p^2$ est premier avec $q$.
3. Le lemme de Gauss appliqué deux fois donne deux divisibilités : l'une dit que $p^2$ divise $q+1$, l'autre que $q$ divise $p^3-1$. Écris-les.
4. Factorise $p^3 - 1$. Comme $q$ est premier, il divise l'un des deux facteurs. Traite les deux cas.
5. Dans chaque cas, compare les tailles : $q+1$ est un multiple de $p^2$, donc $q$ est grand, alors que la divisibilité obtenue le rend petit.

## Solution

### Étape 1 : $p \neq q$

Supposons $p = q$. L'équation devient
$$p^2(p^3-1) = p(p+1), \qquad \text{c'est-à-dire} \qquad p^5 - p^2 = p^2 + p .$$
En divisant par $p$ (non nul) : $p^4 - p = p + 1$, donc $p^4 = 2p + 1$. Or pour $p \geqslant 2$,
$$p^4 = p \cdot p^3 \geqslant 8p > 2p + 1 .$$
Il n'y a donc pas de solution avec $p = q$.

Ainsi $p$ et $q$ sont deux nombres premiers **distincts** : ils sont premiers entre eux, et $p^2$ est premier avec $q$.

### Étape 2 : deux divisibilités

L'équation dit que $q$ divise $p^2(p^3-1)$. Comme $q$ est premier avec $p^2$, le **lemme de Gauss** donne
$$q \mid p^3 - 1 . \qquad (1)$$

De même, $p^2$ divise $q(q+1)$, et $p^2$ est premier avec $q$, donc
$$p^2 \mid q+1 .$$
Il existe donc un entier $k \geqslant 1$ tel que
$$q + 1 = k p^2 . \qquad (2)$$

### Étape 3 : on exploite $(1)$

Factorisons :
$$p^3 - 1 = (p-1)\left(p^2+p+1\right).$$
Comme $q$ est premier et divise ce produit, le lemme d'Euclide donne
$$q \mid p - 1 \qquad \text{ou} \qquad q \mid p^2+p+1 .$$

**Premier cas : $q \mid p-1$.** Alors $q \leqslant p-1$. Mais d'après $(2)$, $q = kp^2 - 1 \geqslant p^2 - 1$. Il faudrait donc
$$p^2 - 1 \leqslant p - 1, \qquad \text{c'est-à-dire} \qquad p^2 \leqslant p ,$$
ce qui est faux pour $p \geqslant 2$. Ce cas est impossible.

**Second cas : $q \mid p^2+p+1$.** Alors $q \leqslant p^2+p+1$. Avec $(2)$ :
$$kp^2 - 1 \leqslant p^2 + p + 1, \qquad \text{donc} \qquad (k-1)\,p^2 \leqslant p + 2 . \qquad (3)$$

### Étape 4 : on épuise les possibilités

**Si $k = 1$ :** alors $q = p^2 - 1 = (p-1)(p+1)$. Pour que $q$ soit premier, il faut $p - 1 = 1$, donc $p = 2$ et $q = 3$. Vérifions dans l'équation de départ :
$$p^2(p^3-1) = 4 \times 7 = 28 \qquad \text{et} \qquad q(q+1) = 3 \times 4 = 12 .$$
Ce n'est pas une solution.

**Si $k \geqslant 2$ :** alors $(k-1)p^2 \geqslant p^2$, et $(3)$ donne $p^2 \leqslant p+2$. Pour $p \geqslant 3$, on a $p^2 \geqslant 3p = p + 2p > p+2$ : impossible. Il reste donc $p = 2$, et $(3)$ devient $4(k-1) \leqslant 4$, donc $k = 2$ et
$$q = kp^2 - 1 = 8 - 1 = 7 .$$
Vérifions : $p^2(p^3-1) = 4 \times 7 = 28$ tandis que $q(q+1) = 7 \times 8 = 56$. Ce n'est pas une solution non plus.

### Conclusion

Tous les cas ont été épuisés, et aucun ne fournit de solution.

$$\boxed{\text{L'équation } p^2(p^3-1) = q(q+1) \text{ n'a aucune solution en nombres premiers.}}$$

### Le ressort de la preuve

Une seule idée fait tout le travail : la divisibilité $p^2 \mid q+1$ force $q$ à être **grand** (au moins $p^2-1$), tandis que la divisibilité $q \mid p^3-1$, une fois $p^3-1$ factorisé, force $q$ à être **petit**. Les deux contraintes ne laissent qu'une poignée de cas, que l'on vérifie à la main.

## Going further

Reprendre la même méthode pour l'équation $p^2(p^2-1) = q(q+1)$ : cette fois il existe une solution, et une seule. La trouver, et montrer qu'il n'y en a pas d'autre.
