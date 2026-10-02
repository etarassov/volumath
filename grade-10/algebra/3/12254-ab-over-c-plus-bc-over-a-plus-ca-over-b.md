---
id: "12254"
title: "ab/c + bc/a + ca/b ≥ 3 quand a² + b² + c² = 3"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, changement-de-variable, carres, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de mai 2016"
  reference: "2017-10_ofm-2015-2016-test-mai.pdf, test du 11 mai 2016, exercice 2 (groupe B) ; pas de corrigé publié, solution rédigée et vérifiée pour cette base"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-test-mai.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2015-2016-test-mai.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois nombres réels strictement positifs tels que $a^2 + b^2 + c^2 = 3$. Montrer que
$$\frac{ab}{c} + \frac{bc}{a} + \frac{ca}{b} \geqslant 3.$$

## Hints

1. Donne un nom à chacun des trois termes : $x = \frac{ab}{c}$, $y = \frac{bc}{a}$ et $z = \frac{ca}{b}$. Calcule les produits $xy$, $yz$ et $zx$.
2. Tu dois trouver $xy + yz + zx = 3$. Il suffit donc de comparer $(x + y + z)^2$ et $xy + yz + zx$.
3. Montre que $x^2 + y^2 + z^2 \geqslant xy + yz + zx$, en additionnant les trois carrés $(x - y)^2$, $(y - z)^2$ et $(z - x)^2$.

## Solution

**Étape 1. Trois nouvelles inconnues.**

On pose
$$x = \frac{ab}{c}, \qquad y = \frac{bc}{a}, \qquad z = \frac{ca}{b}.$$
Ce sont trois réels strictement positifs, et l'on veut montrer que $x + y + z \geqslant 3$. Leurs produits deux à deux sont très simples :
$$xy = \frac{ab}{c} \times \frac{bc}{a} = b^2, \qquad yz = \frac{bc}{a} \times \frac{ca}{b} = c^2, \qquad zx = \frac{ca}{b} \times \frac{ab}{c} = a^2.$$
Avec l'hypothèse, on obtient
$$xy + yz + zx = a^2 + b^2 + c^2 = 3.$$

**Étape 2. Une inégalité entre carrés et produits.**

Pour tous réels $x$, $y$, $z$, on a
$$(x - y)^2 + (y - z)^2 + (z - x)^2 \geqslant 0,$$
car c'est une somme de carrés. En développant, cela donne $2x^2 + 2y^2 + 2z^2 - 2xy - 2yz - 2zx \geqslant 0$, donc
$$x^2 + y^2 + z^2 \geqslant xy + yz + zx.$$

**Étape 3. On conclut.**

On développe le carré de la somme, puis on utilise l'étape 2 :
$$(x + y + z)^2 = x^2 + y^2 + z^2 + 2(xy + yz + zx) \geqslant 3(xy + yz + zx) = 3 \times 3 = 9.$$
Comme $x + y + z > 0$, on en déduit $x + y + z \geqslant 3$, c'est-à-dire
$$\frac{ab}{c} + \frac{bc}{a} + \frac{ca}{b} \geqslant 3.$$

**Le cas d'égalité.** Il y a égalité quand $x = y = z$, et alors $3x^2 = 3$, donc $x = y = z = 1$. Cela donne $a^2 = zx = 1$, et de même $b^2 = c^2 = 1$ : l'égalité a lieu pour $a = b = c = 1$.

## Going further

1. Montre de la même façon que, si $a$, $b$, $c$ sont strictement positifs avec $a^2 + b^2 + c^2 = 12$, alors $\frac{ab}{c} + \frac{bc}{a} + \frac{ca}{b} \geqslant 6$.
2. Sans hypothèse sur $a^2 + b^2 + c^2$, montre que $\left(\frac{ab}{c} + \frac{bc}{a} + \frac{ca}{b}\right)^2 \geqslant 3(a^2 + b^2 + c^2)$.
