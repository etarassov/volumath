---
id: "12405"
title: "Un produit de moyennes plus petit qu'une moyenne"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, produit, factorisation, recurrence]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 10 janvier 2018"
  reference: "2018-01_pofm-2017-2018-test-janvier.pdf, exercices du groupe B, exercice 2 ; corrigé 2018-01_pofm-2017-2018-test-janvier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/01/pofm-2017-2018-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2018-01_pofm-2017-2018-test-janvier.pdf"
---

## Statement

On fixe un entier $n \geqslant 2$. Déterminer tous les nombres réels $x \geqslant -1$ tels que,
pour tous réels $a_1, a_2, \ldots, a_n \geqslant 1$, on ait
$$\frac{a_1 + x}{2} \times \frac{a_2 + x}{2} \times \cdots \times \frac{a_n + x}{2} \leqslant \frac{a_1 a_2 \cdots a_n + x}{2}.$$

## Hints

1. Essaie d'abord le cas le plus simple : tous les $a_i$ égaux à $1$. Que dit l'inégalité sur
   $y = \dfrac{1 + x}{2}$ ?
2. Tu dois trouver que $x \leqslant 1$ est nécessaire. Pour montrer que cela suffit, commence par
   $n = 2$ : développe et range l'inégalité.
3. Pour $n = 2$, l'expression $ab - a - b + 1$ se factorise.
4. Pour passer de $n - 1$ nombres à $n$ nombres, regroupe $a_1 a_2 \cdots a_{n-1}$ en un seul
   nombre $A$, qui est lui aussi au moins égal à $1$.

## Solution

### Étape 1 : il faut $x \leqslant 1$

Prenons $a_1 = a_2 = \cdots = a_n = 1$, et posons $y = \dfrac{1 + x}{2}$. Comme $x \geqslant -1$,
on a $y \geqslant 0$. L'inégalité devient
$$y^n \leqslant y.$$
Si l'on avait $y > 1$, on aurait $y^n = y \times y^{n-1} > y$ puisque $y^{n-1} > 1$ (car
$n \geqslant 2$). C'est impossible, donc $y \leqslant 1$, c'est-à-dire $x \leqslant 1$.

### Étape 2 : le cas de deux nombres

Soit $x \in [-1, 1]$ et soient $a, b \geqslant 1$. Montrons que
$$\frac{a + x}{2} \times \frac{b + x}{2} \leqslant \frac{ab + x}{2}.$$
En multipliant par $4$ et en développant, cela s'écrit
$ab + (a + b)x + x^2 \leqslant 2ab + 2x$, c'est-à-dire
$$(a + b - 2)\,x + x^2 \leqslant ab.$$
Or $a + b - 2 \geqslant 0$ et $x \leqslant 1$, donc $(a + b - 2)\,x \leqslant a + b - 2$. De plus
$x^2 \leqslant 1$ car $-1 \leqslant x \leqslant 1$. Le membre de gauche est donc au plus
$a + b - 2 + 1 = a + b - 1$, et il suffit de montrer que $a + b - 1 \leqslant ab$. Or
$$ab - a - b + 1 = (a - 1)(b - 1) \geqslant 0,$$
puisque $a \geqslant 1$ et $b \geqslant 1$. Le cas de deux nombres est démontré.

### Étape 3 : de proche en proche jusqu'à $n$ nombres

Montrons par récurrence sur $k$ que, pour tous réels $a_1, \ldots, a_k \geqslant 1$,
$$\frac{a_1 + x}{2} \times \cdots \times \frac{a_k + x}{2} \leqslant \frac{a_1 \cdots a_k + x}{2}.$$

Pour $k = 1$, c'est une égalité. Supposons l'inégalité vraie pour $k - 1$ nombres, et posons
$A = a_1 a_2 \cdots a_{k-1}$, qui vérifie $A \geqslant 1$. Le dernier facteur
$\dfrac{a_k + x}{2}$ est positif ou nul (car $a_k \geqslant 1$ et $x \geqslant -1$). On peut donc
multiplier l'hypothèse de récurrence par ce facteur :
$$\frac{a_1 + x}{2} \times \cdots \times \frac{a_{k-1} + x}{2} \times \frac{a_k + x}{2}
\leqslant \frac{A + x}{2} \times \frac{a_k + x}{2}
\leqslant \frac{A\,a_k + x}{2},$$
la dernière inégalité étant l'étape 2 appliquée à $a = A$ et $b = a_k$. Comme
$A\,a_k = a_1 a_2 \cdots a_k$, l'inégalité est vraie pour $k$ nombres.

### Conclusion

Les réels $x \geqslant -1$ qui conviennent sont **exactement ceux de l'intervalle $[-1, 1]$**.
