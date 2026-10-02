---
id: "12660"
title: "Les valeurs extrêmes de xy + yz − zx quand x² + y² + z² = 1"
grade: 10
theme: algebra
difficulty: 4
duration_min: 25
tags: [inegalite, identites-remarquables, somme-de-carres, minimum, maximum]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test du 18 mai 2022"
  reference: "2022-07_Enonce-Web-Test-5.pdf, exercice 3 (junior) ; corrigé 2022-06_Corrige-Web-Test-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/07/Énoncé-Web-Test-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-07_Enonce-Web-Test-5.pdf"
---

## Statement

Soient $x$, $y$ et $z$ trois nombres réels tels que $x^2 + y^2 + z^2 = 1$.

Trouver la plus petite et la plus grande valeur possible du nombre $xy + yz - zx$.

## Hints

1. Essaie quelques triplets simples, par exemple $(1, 0, 0)$, $\left(\frac{\sqrt 2}{2}, \frac{\sqrt 2}{2}, 0\right)$ et $\left(\frac{\sqrt 2}{2}, -\frac{\sqrt 2}{2}, 0\right)$. Lesquels donnent une grande valeur, lesquels une petite ?
2. Développe $(x - y + z)^2$. Que reconnais-tu dans le résultat ?
3. Écris $xy + yz - zx$ à l'aide de $(x - y + z)^2$. La plus grande valeur devient alors facile à trouver.
4. Pour la plus petite valeur, il faut majorer $(x - y + z)^2$. Calcule $3(x^2 + y^2 + z^2) - (x - y + z)^2$, et écris le résultat comme une somme de trois carrés.

## Solution

On va montrer que **la plus petite valeur est $-1$ et la plus grande est $\frac{1}{2}$.**

On note $E = xy + yz - zx$.

**Étape 1 : une identité.** En développant le carré d'une somme de trois termes, $x$, $-y$ et $z$, on obtient
$$(x - y + z)^2 = x^2 + y^2 + z^2 - 2xy - 2yz + 2zx = (x^2 + y^2 + z^2) - 2E.$$
Comme $x^2 + y^2 + z^2 = 1$, cela donne $(x - y + z)^2 = 1 - 2E$, c'est-à-dire
$$E = \frac{1 - (x - y + z)^2}{2}.$$
Le nombre $E$ est d'autant plus grand que $(x - y + z)^2$ est petit. Il suffit donc de trouver la plus petite et la plus grande valeur de ce carré.

**Étape 2 : la plus grande valeur.** Un carré est toujours positif ou nul, donc $(x - y + z)^2 \geqslant 0$ et
$$E \leqslant \frac{1 - 0}{2} = \frac{1}{2}.$$
Cette valeur est atteinte. Avec $x = y = \frac{\sqrt 2}{2}$ et $z = 0$, on a bien $x^2 + y^2 + z^2 = \frac{1}{2} + \frac{1}{2} + 0 = 1$, et
$$E = \frac{\sqrt 2}{2} \times \frac{\sqrt 2}{2} + 0 - 0 = \frac{1}{2}.$$

**Étape 3 : une majoration du carré.** On compare $(x - y + z)^2$ et $3(x^2 + y^2 + z^2)$. Avec l'étape 1,
$$3(x^2 + y^2 + z^2) - (x - y + z)^2 = 2x^2 + 2y^2 + 2z^2 + 2xy + 2yz - 2zx.$$
Le membre de droite est une somme de trois carrés. En effet, en développant,
$$(x + y)^2 + (y + z)^2 + (z - x)^2 = (x^2 + 2xy + y^2) + (y^2 + 2yz + z^2) + (z^2 - 2zx + x^2),$$
ce qui donne bien $2x^2 + 2y^2 + 2z^2 + 2xy + 2yz - 2zx$. Donc
$$3(x^2 + y^2 + z^2) - (x - y + z)^2 = (x + y)^2 + (y + z)^2 + (z - x)^2 \geqslant 0.$$
Comme $x^2 + y^2 + z^2 = 1$, on obtient $(x - y + z)^2 \leqslant 3$.

**Étape 4 : la plus petite valeur.** D'après les étapes 1 et 3,
$$E = \frac{1 - (x - y + z)^2}{2} \geqslant \frac{1 - 3}{2} = -1.$$
Cette valeur est atteinte quand la somme de carrés de l'étape 3 est nulle, c'est-à-dire quand $x + y = 0$, $y + z = 0$ et $z - x = 0$, soit $x = z = -y$. On prend $x = z = \frac{\sqrt 3}{3}$ et $y = -\frac{\sqrt 3}{3}$. Alors $x^2 + y^2 + z^2 = \frac{1}{3} + \frac{1}{3} + \frac{1}{3} = 1$, et
$$E = -\frac{1}{3} - \frac{1}{3} - \frac{1}{3} = -1.$$

**Conclusion.** Pour tous les réels $x$, $y$, $z$ tels que $x^2 + y^2 + z^2 = 1$, on a $-1 \leqslant xy + yz - zx \leqslant \frac{1}{2}$, et les deux bornes sont atteintes. **La plus petite valeur est $-1$, la plus grande est $\frac{1}{2}$.**

## Going further

- La plus grande valeur est atteinte dès que $x - y + z = 0$, donc pour une infinité de triplets, par exemple aussi $\left(\frac{\sqrt 2}{2}, 0, -\frac{\sqrt 2}{2}\right)$. La plus petite n'est atteinte que pour deux triplets, $\left(\frac{\sqrt 3}{3}, -\frac{\sqrt 3}{3}, \frac{\sqrt 3}{3}\right)$ et son opposé.
- Le corrigé officiel obtient la majoration de l'étape 3 avec l'**inégalité de Cauchy-Schwarz** : $(x - y + z)^2 \leqslant (x^2 + y^2 + z^2)(1^2 + (-1)^2 + 1^2) = 3$. La somme de trois carrés de l'étape 3 est exactement la preuve de cette inégalité dans ce cas particulier.
- Le commentaire des correcteurs note deux défauts fréquents. D'abord, des raisonnements qualitatifs du genre « il faut que $xy$ soit petit », qui oublient que les autres termes peuvent compenser : on attend des inégalités vraies pour tous les triplets. Ensuite, presque tous les élèves qui ont trouvé une borne ont oublié de montrer qu'elle était atteinte. Par exemple, on peut prouver que $E \leqslant 1$, ce qui est vrai, mais cela ne dit pas que $1$ est la plus grande valeur : elle ne vaut que $\frac{1}{2}$.
