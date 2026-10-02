---
id: "13606"
title: "Quatre moyennes et leurs écarts"
grade: 10
theme: algebra
difficulty: 4
duration_min: 45
tags: [inegalite, moyenne, racine-carree, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2009 (test de sélection du stage olympique de Grésillon, 4 juin 2009)"
  reference: "2017-09_coupe_printemps_2009_1.pdf, épreuve de première, exercice 6 ; corrigé 2017-09_coupe_printemps_2009_corrige.pdf, exercice 6"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_printemps_2009_1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_printemps_2009_1.pdf"
---

## Statement

Soient $x$ et $y$ deux nombres réels tels que $0 < x < y$. On pose

$$H = \frac{2xy}{x+y}, \qquad G = \sqrt{xy}, \qquad A = \frac{x+y}{2}, \qquad Q = \sqrt{\frac{x^2+y^2}{2}} .$$

Montrer que :

a) $0 < G - H$ ;

b) $Q + G < 2A$ ;

c) $G - H < Q - A$.

En déduire que $0 < G - H < Q - A < A - G$.

## Hints

1. Fais d'abord un essai avec $x = 1$ et $y = 4$ : calcule $H$, $G$, $A$, $Q$ et les trois écarts.
2. Calcule $A^2 - G^2$ et $Q^2 - A^2$ en fonction de $x$ et $y$. Que remarques-tu ? Calcule aussi $Q^2 + G^2$.
3. Vérifie que $H = \dfrac{G^2}{A}$. Cela permet d'écrire $G - H$ et $A - H$ avec seulement $A$ et $G$.
4. Pour comparer des nombres positifs qui contiennent des racines, compare leurs carrés. Pour une différence de racines, utilise $Q - G = \dfrac{Q^2 - G^2}{Q + G}$, puis le résultat de b).

## Solution

Les quatre nombres $H$, $G$, $A$, $Q$ sont strictement positifs. On utilisera souvent le fait suivant : pour deux nombres positifs $u$ et $v$, on a $u < v$ si et seulement si $u^2 < v^2$.

**Trois calculs préliminaires.**

$$A^2 - G^2 = \frac{(x+y)^2}{4} - xy = \frac{x^2 + 2xy + y^2 - 4xy}{4} = \frac{(x-y)^2}{4} ,$$

$$Q^2 - G^2 = \frac{x^2+y^2}{2} - xy = \frac{(x-y)^2}{2} ,$$

$$Q^2 + G^2 = \frac{x^2+y^2}{2} + xy = \frac{(x+y)^2}{2} = 2A^2 .$$

Comme $x \neq y$, le nombre $(x-y)^2$ est strictement positif. Donc $A^2 > G^2$ et $Q^2 > G^2$, d'où $A > G$ et $Q > G$.

Enfin, $H = \dfrac{2xy}{x+y} = \dfrac{xy}{A} = \dfrac{G^2}{A}$.

**a)** On a

$$G - H = G - \frac{G^2}{A} = \frac{G(A - G)}{A} .$$

Les nombres $G$ et $A$ sont positifs et $A - G > 0$, donc $G - H > 0$.

**b)** Les deux membres sont positifs, il suffit de comparer leurs carrés. D'après le troisième calcul, $4A^2 = 2(Q^2 + G^2)$. Donc

$$4A^2 - (Q+G)^2 = 2Q^2 + 2G^2 - Q^2 - 2QG - G^2 = Q^2 - 2QG + G^2 = (Q - G)^2 .$$

Comme $Q \neq G$, ce nombre est strictement positif. Donc $(Q+G)^2 < (2A)^2$ et, les nombres étant positifs, $Q + G < 2A$.

**c)** L'inégalité $G - H < Q - A$ revient à $A - H < Q - G$ (on a ajouté $A - G$ aux deux membres). Calculons chacun des deux membres.

D'une part,

$$A - H = A - \frac{G^2}{A} = \frac{A^2 - G^2}{A} = \frac{(x-y)^2}{4A} .$$

D'autre part,

$$Q - G = \frac{(Q - G)(Q + G)}{Q + G} = \frac{Q^2 - G^2}{Q + G} = \frac{(x-y)^2}{2(Q + G)} .$$

D'après b), $0 < Q + G < 2A$, donc $2(Q + G) < 4A$. Une fraction de numérateur positif fixé est d'autant plus grande que son dénominateur est petit, donc

$$Q - G = \frac{(x-y)^2}{2(Q+G)} > \frac{(x-y)^2}{4A} = A - H .$$

C'est bien $A - H < Q - G$, c'est-à-dire $G - H < Q - A$.

**Conclusion.** Le résultat b) s'écrit $Q - A < A - G$. En mettant bout à bout a), c) et b) :

$$0 < G - H < Q - A < A - G .$$

Avec $x = 1$ et $y = 4$, on trouve $H = \text{1,6}$, $G = 2$, $A = \text{2,5}$ et $Q = \sqrt{\text{8,5}} \approx \text{2,915}$ : les trois écarts valent $\text{0,4}$, environ $\text{0,415}$ et $\text{0,5}$, dans le bon ordre.

## Going further

Les nombres $H$, $G$, $A$, $Q$ s'appellent les moyennes harmonique, géométrique, arithmétique et quadratique de $x$ et $y$. L'exercice montre en particulier $H < G < A < Q$. Que deviennent ces inégalités quand $x = y$ ?
