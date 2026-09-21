---
id: "8442"
title: "Deux fractions dont le produit vaut 3/2"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [equation-en-entiers, fraction, encadrement, symetrie, cas-a-traiter]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Entraînement de fin de parcours », exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Déterminer tous les couples $(x, y)$ d'entiers strictement positifs tels que

$$\left(1 + \frac{1}{x}\right)\left(1 + \frac{1}{y}\right) = \frac{3}{2}.$$

## Hints

1. L'équation ne change pas si l'on échange $x$ et $y$. On peut donc supposer $x \leqslant y$, quitte à remettre les solutions symétriques à la fin.
2. Une équation en nombres entiers avec une infinité de valeurs possibles se traite presque toujours en deux temps : d'abord **encadrer** l'une des inconnues, puis **tester** les valeurs restantes une par une.
3. Si $x \leqslant y$, alors $\frac{1}{y} \leqslant \frac{1}{x}$. Compare alors $\left(1+\frac{1}{x}\right)^2$ à $\frac{3}{2}$, et vois ce que cela interdit.
4. Pour la borne inférieure, remarque que $1 + \frac{1}{y}$ est strictement plus grand que $1$. Que cela impose-t-il à $1 + \frac{1}{x}$ ?

## Solution

L'équation est **symétrique** en $x$ et $y$ : si $(x,y)$ est solution, $(y,x)$ aussi. Cherchons donc les solutions vérifiant $x \leqslant y$, et nous ajouterons les symétriques à la fin.

### Étape 1. Encadrer $x$

**Borne supérieure.** Comme $1 \leqslant x \leqslant y$, on a $\dfrac{1}{y} \leqslant \dfrac{1}{x}$, donc $1 + \dfrac{1}{y} \leqslant 1 + \dfrac{1}{x}$, et par conséquent

$$\frac{3}{2} = \left(1+\frac{1}{x}\right)\left(1+\frac{1}{y}\right) \leqslant \left(1+\frac{1}{x}\right)^{\!2}.$$

Supposons $x \geqslant 5$. Alors $1 + \dfrac{1}{x} \leqslant \dfrac{6}{5}$, donc

$$\left(1+\frac{1}{x}\right)^{\!2} \leqslant \left(\frac{6}{5}\right)^{\!2} = \frac{36}{25}.$$

Or $\dfrac{36}{25} = \dfrac{72}{50} < \dfrac{75}{50} = \dfrac{3}{2}$. On aurait donc $\dfrac{3}{2} < \dfrac{3}{2}$, ce qui est absurde.

Donc $x \leqslant 4$.

**Borne inférieure.** Comme $y \geqslant 1$, on a $1 + \dfrac{1}{y} > 1$, donc

$$1 + \frac{1}{x} = \frac{3/2}{1 + \frac{1}{y}} < \frac{3}{2},$$

d'où $\dfrac{1}{x} < \dfrac{1}{2}$, c'est-à-dire $x > 2$.

Il ne reste donc que $x = 3$ et $x = 4$.

### Étape 2. Tester les deux valeurs

**Si $x = 3$ :** $1 + \frac{1}{3} = \frac{4}{3}$, donc

$$1 + \frac{1}{y} = \frac{3}{2} \times \frac{3}{4} = \frac{9}{8}, \qquad \text{donc} \qquad \frac{1}{y} = \frac{1}{8}, \qquad y = 8.$$

On a bien $3 \leqslant 8$. Le couple $(3, 8)$ convient.

**Si $x = 4$ :** $1 + \frac{1}{4} = \frac{5}{4}$, donc

$$1 + \frac{1}{y} = \frac{3}{2} \times \frac{4}{5} = \frac{6}{5}, \qquad \text{donc} \qquad \frac{1}{y} = \frac{1}{5}, \qquad y = 5.$$

On a bien $4 \leqslant 5$. Le couple $(4, 5)$ convient.

### Conclusion

Avec la condition $x \leqslant y$, les solutions sont $(3,8)$ et $(4,5)$. En ajoutant les symétriques, l'ensemble des solutions est

$$\boxed{(3, 8), \quad (8, 3), \quad (4, 5), \quad (5, 4)}.$$

**Vérifications :** $\dfrac{4}{3} \times \dfrac{9}{8} = \dfrac{36}{24} = \dfrac{3}{2}$ et $\dfrac{5}{4} \times \dfrac{6}{5} = \dfrac{30}{20} = \dfrac{3}{2}$.

## Going further

Cette façon de faire, **encadrer puis tester**, est la méthode de base pour les équations en nombres entiers où les inconnues apparaissent au dénominateur. Elle repose sur une observation très simple : quand $x$ grandit, $1 + \frac{1}{x}$ se rapproche de $1$ par au-dessus, donc le produit se rapproche de $1$ et ne peut plus atteindre $\frac{3}{2}$.

L'hypothèse $x \leqslant y$, qui ne coûte rien grâce à la symétrie, est ce qui rend l'encadrement possible : sans elle, $x$ pourrait être aussi grand qu'on veut, du moment que $y$ est petit.

En écrivant l'équation sans fractions, on obtient $2(x+1)(y+1) = 3xy$, puis $xy - 2x - 2y - 2 = 0$, et enfin $(x-2)(y-2) = 6$. On retrouve alors les solutions en listant les façons d'écrire $6$ comme produit de deux entiers positifs : $1 \times 6$ et $2 \times 3$, qui donnent $(3,8)$ et $(4,5)$.
