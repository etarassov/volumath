---
id: "10807"
title: "Pour quels k l'équation x(x + k) = y(y + 1) a-t-elle une solution ?"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [equation, encadrement, entiers, disjonction-de-cas, construction]
adapted_from: null
see_also: ["10803"]
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 3 (arithmétique)"
  reference: "2017-10_ofm-2012-2013-envoi3.pdf, Exercices Olympiques, exercice 8 ; corrigé 2017-10_ofm-2012-2013-envoi3-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi3.pdf"
---

## Statement

Trouver tous les entiers $k \geqslant 1$ pour lesquels l'équation

$$x(x + k) = y(y + 1)$$

admet au moins une solution en entiers $x$ et $y$ strictement positifs.

## Hints

1. Le cas $k = 1$ est immédiat. Pour $k = 2$ et $k = 3$, cherche un peu : tu ne trouveras rien. Pour $k = 4$ et $k = 5$, tu devrais trouver des solutions avec de petits nombres.
2. Pour montrer qu'il n'y a pas de solution quand $k = 2$ ou $k = 3$, compare $x(x+k)$ avec $x(x+1)$ et avec $(x+1)(x+2)$.
3. Pour $k \geqslant 4$, il faut construire une solution. Comme $y$ est forcément plus grand que $x$, pose $y = x + m$ et développe. Tu obtiens une équation du premier degré en $x$.
4. Tu dois trouver $(k - 2m - 1)\,x = m(m+1)$. Choisis $m$ pour que le coefficient $k - 2m - 1$ soit le plus petit possible, en séparant $k$ pair et $k$ impair.

## Solution

**Réponse : $k = 1$ et tous les entiers $k \geqslant 4$.**

### Le cas $k = 1$

L'équation devient $x(x+1) = y(y+1)$ : il suffit de prendre $y = x$, par exemple $x = y = 1$.

### Les cas $k = 2$ et $k = 3$ : aucune solution

Soit $x \geqslant 1$, et $k = 2$ ou $k = 3$.

- D'un côté, $x(x + k) > x(x + 1)$, car $k > 1$.
- De l'autre, $x(x + k) \leqslant x(x + 3) = x^2 + 3x$, et $(x+1)(x+2) = x^2 + 3x + 2$. Donc $x(x+k) < (x+1)(x+2)$.

Ainsi
$$x(x+1) \;<\; x(x+k) \;<\; (x+1)(x+2) .$$

Or le produit $y(y+1)$ augmente avec $y$. Si $y \leqslant x$, il vaut au plus $x(x+1)$ ; si $y \geqslant x+1$, il vaut au moins $(x+1)(x+2)$. Il ne peut donc jamais être égal à $x(x+k)$, qui est coincé strictement entre les deux. **Pas de solution pour $k = 2$ ni pour $k = 3$.**

### Les cas $k \geqslant 4$ : on construit une solution

Une solution doit vérifier $y > x$ (sinon $y(y+1) \leqslant x(x+1) < x(x+k)$). Cherchons donc $y$ sous la forme $y = x + m$ avec $m \geqslant 1$. L'équation devient
$$x^2 + kx = (x + m)(x + m + 1) = x^2 + (2m + 1)\,x + m(m + 1),$$
c'est-à-dire, après simplification par $x^2$,
$$(k - 2m - 1)\,x = m(m + 1) .$$
Il suffit de choisir $m$ de sorte que $k - 2m - 1$ soit un petit entier positif qui divise $m(m+1)$.

**Si $k$ est pair**, $k = 2a$ avec $a \geqslant 2$. On prend $m = a - 1 \geqslant 1$. Alors $k - 2m - 1 = 2a - 2a + 2 - 1 = 1$, et l'équation donne
$$x = (a - 1)\,a, \qquad y = x + m = (a-1)\,a + (a - 1) = (a - 1)(a + 1) .$$
Ce sont bien des entiers strictement positifs, puisque $a \geqslant 2$.

*Vérification pour $k = 4$ ($a = 2$) :* $x = 2$, $y = 3$, et $2 \times 6 = 12 = 3 \times 4$.

**Si $k$ est impair**, $k = 2a + 1$ avec $a \geqslant 2$ (car $k \geqslant 5$). On prend encore $m = a - 1 \geqslant 1$. Alors $k - 2m - 1 = 2a + 1 - 2a + 2 - 1 = 2$, et l'équation donne
$$x = \frac{(a - 1)\,a}{2}, \qquad y = x + a - 1 .$$
Le produit $(a-1)\,a$ de deux entiers consécutifs est pair, donc $x$ est bien un entier, et il est strictement positif puisque $a \geqslant 2$.

*Vérification pour $k = 5$ ($a = 2$) :* $x = 1$, $y = 2$, et $1 \times 6 = 6 = 2 \times 3$. *Pour $k = 7$ ($a = 3$) :* $x = 3$, $y = 5$, et $3 \times 10 = 30 = 5 \times 6$.

### Conclusion

L'équation $x(x+k) = y(y+1)$ a des solutions en entiers strictement positifs **exactement pour $k = 1$ et pour tout $k \geqslant 4$**.

## Going further

1. Pour $k = 4$, trouve **toutes** les solutions. *Indication : avec $y = x + m$, l'équation devient $(3 - 2m)\,x = m(m+1)$. Quelles valeurs de $m$ sont possibles ?*
2. Le cas $k = 2$ seul, posé aux plus jeunes, est l'exercice 10803.
