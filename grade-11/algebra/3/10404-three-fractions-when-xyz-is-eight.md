---
id: "10404"
title: "Trois fractions quand xyz = 8"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [inegalite, moyenne-geometrique, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 4 (algèbre)"
  reference: "2017-10_ofm-2012-2013-envoi4.pdf, Exercices Communs, exercice 4 ; corrigé 2017-10_ofm-2012-2013-envoi4-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi4.pdf"
---

## Statement

Soient $x$, $y$, $z$ trois réels strictement positifs tels que $xyz = 8$. Montrer que

$$\frac{x - 2}{x + 1} + \frac{y - 2}{y + 1} + \frac{z - 2}{z + 1} \leqslant 0 .$$

## Hints

1. Écris $x - 2 = (x + 1) - 3$. Que devient chaque fraction ? Que faut-il alors montrer sur $\frac{1}{x+1} + \frac{1}{y+1} + \frac{1}{z+1}$ ?
2. Réduis au même dénominateur et développe. En utilisant $xyz = 8$, beaucoup de termes disparaissent. Il doit rester une condition très simple sur $x + y + z$.
3. Pour prouver que $x + y + z \geqslant 6$, pose $x = a^3$, $y = b^3$, $z = c^3$ avec $a, b, c > 0$. Que vaut $abc$ ?
4. Développe $(a + b + c)(a^2 + b^2 + c^2 - ab - bc - ca)$. Le second facteur s'écrit avec des carrés.

## Solution

**Étape 1 : simplifier chaque fraction.** Comme $x - 2 = (x + 1) - 3$,

$$\frac{x - 2}{x + 1} = 1 - \frac{3}{x + 1} ,$$

et de même pour $y$ et $z$. La somme de l'énoncé vaut donc

$$3 - 3\left( \frac{1}{x+1} + \frac{1}{y+1} + \frac{1}{z+1} \right) .$$

Elle est négative ou nulle si et seulement si

$$\frac{1}{x+1} + \frac{1}{y+1} + \frac{1}{z+1} \geqslant 1 . \qquad (1)$$

**Étape 2 : réduire au même dénominateur.** Le dénominateur commun $(x+1)(y+1)(z+1)$ est positif. L'inégalité $(1)$ équivaut donc à

$$(y+1)(z+1) + (x+1)(z+1) + (x+1)(y+1) \geqslant (x+1)(y+1)(z+1) .$$

Développons. À gauche, on trouve

$$(xy + yz + zx) + 2(x + y + z) + 3 .$$

À droite, on trouve

$$xyz + (xy + yz + zx) + (x + y + z) + 1 = 9 + (xy + yz + zx) + (x + y + z),$$

puisque $xyz = 8$. En retirant $(xy + yz + zx) + (x + y + z) + 3$ des deux côtés, l'inégalité $(1)$ devient simplement

$$x + y + z \geqslant 6 . \qquad (2)$$

**Étape 3 : un lemme sur les cubes.** Pour tous réels $a$, $b$, $c$ positifs,

$$a^3 + b^3 + c^3 \geqslant 3abc .$$

En effet, on vérifie en développant que

$$(a + b + c)(a^2 + b^2 + c^2 - ab - bc - ca) = a^3 + b^3 + c^3 - 3abc ,$$

et que

$$a^2 + b^2 + c^2 - ab - bc - ca = \frac{1}{2}\left[ (a - b)^2 + (b - c)^2 + (c - a)^2 \right] .$$

Le premier facteur $a + b + c$ est positif et le second est une somme de carrés, donc positif. Leur produit $a^3 + b^3 + c^3 - 3abc$ est positif.

**Étape 4 : conclure.** Soient $a$, $b$, $c$ les racines cubiques de $x$, $y$, $z$ : ce sont les réels strictement positifs tels que $a^3 = x$, $b^3 = y$, $c^3 = z$. Alors $(abc)^3 = xyz = 8 = 2^3$, donc $abc = 2$. Le lemme donne

$$x + y + z = a^3 + b^3 + c^3 \geqslant 3abc = 6 .$$

C'est l'inégalité $(2)$. En remontant les équivalences, on obtient $(1)$, puis l'inégalité demandée.

**Conclusion.** Pour tous réels strictement positifs $x$, $y$, $z$ tels que $xyz = 8$,

$$\frac{x - 2}{x + 1} + \frac{y - 2}{y + 1} + \frac{z - 2}{z + 1} \leqslant 0 ,$$

avec égalité pour $x = y = z = 2$ (chaque fraction est alors nulle).

## Going further

1. Montrer que l'égalité n'a lieu que pour $x = y = z = 2$.
2. Le lemme de l'étape 3 dit que la moyenne de trois nombres positifs est au moins égale à leur **moyenne géométrique** : $\frac{x + y + z}{3} \geqslant \sqrt[3]{xyz}$. Démontrer la version à deux nombres, $\frac{x + y}{2} \geqslant \sqrt{xy}$, en une ligne.
