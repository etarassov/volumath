---
id: "10408"
title: "Une hypothèse sur les inverses, une conclusion sur les rapports"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, fractions, carres]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 4 (algèbre)"
  reference: "2017-10_ofm-2012-2013-envoi4.pdf, Exercices Olympiques, exercice 8 ; corrigé 2017-10_ofm-2012-2013-envoi4-corrige.pdf (qui utilise l'inégalité de Cauchy-Schwarz ; la solution ci-dessous la remplace par un lemme démontré en deux lignes)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi4.pdf"
---

## Statement

Soient $x$, $y$ et $z$ trois réels strictement positifs tels que

$$x + y + z \geqslant \frac{1}{x} + \frac{1}{y} + \frac{1}{z} .$$

Montrer que

$$\frac{x}{y} + \frac{y}{z} + \frac{z}{x} \geqslant \frac{1}{xy} + \frac{1}{yz} + \frac{1}{zx} .$$

## Hints

1. Multiplie l'inégalité à démontrer par $xyz$ pour faire disparaître les dénominateurs. Que faut-il alors montrer ?
2. Il reste à montrer $x^2 z + x y^2 + y z^2 \geqslant x + y + z$. L'hypothèse parle de $\frac{1}{x} + \frac{1}{y} + \frac{1}{z}$. Pour les faire apparaître, écris $x^2 z = \dfrac{x^2}{1/z}$, et de même pour les deux autres termes.
3. Démontre le lemme suivant : pour tous réels $a$, $b$ et tous $p, q > 0$, $\dfrac{a^2}{p} + \dfrac{b^2}{q} \geqslant \dfrac{(a + b)^2}{p + q}$. (Multiplie par $pq(p+q)$ et cherche un carré.)
4. Applique le lemme deux fois pour trois fractions, puis utilise l'hypothèse.

## Solution

**Étape 1 : chasser les dénominateurs.** Multiplions l'inégalité à démontrer par $xyz > 0$. Comme $\frac{x}{y} \times xyz = x^2 z$, $\frac{y}{z} \times xyz = x y^2$, $\frac{z}{x} \times xyz = y z^2$, et $\frac{1}{xy} \times xyz = z$, $\frac{1}{yz} \times xyz = x$, $\frac{1}{zx} \times xyz = y$, il suffit de montrer

$$x^2 z + x y^2 + y z^2 \geqslant x + y + z . \qquad (1)$$

**Étape 2 : un lemme sur les fractions.** Pour tous réels $a$, $b$ et tous réels $p > 0$, $q > 0$,

$$\frac{a^2}{p} + \frac{b^2}{q} \geqslant \frac{(a + b)^2}{p + q} .$$

En effet, multiplions par $pq(p + q) > 0$. L'inégalité devient

$$a^2 q (p + q) + b^2 p (p + q) \geqslant (a + b)^2 pq ,$$

c'est-à-dire, après développement,

$$a^2 pq + a^2 q^2 + b^2 p^2 + b^2 pq \geqslant a^2 pq + 2ab\,pq + b^2 pq .$$

En simplifiant, il reste $a^2 q^2 - 2ab\,pq + b^2 p^2 \geqslant 0$, soit $(aq - bp)^2 \geqslant 0$, ce qui est vrai.

En appliquant le lemme deux fois, on obtient la version à trois fractions : pour tous réels $a, b, c$ et tous $p, q, r > 0$,

$$\frac{a^2}{p} + \frac{b^2}{q} + \frac{c^2}{r} \geqslant \frac{(a + b)^2}{p + q} + \frac{c^2}{r} \geqslant \frac{(a + b + c)^2}{p + q + r} .$$

**Étape 3 : appliquer le lemme.** Écrivons les trois termes du membre de gauche de $(1)$ comme des fractions :

$$x^2 z = \frac{x^2}{1/z}, \qquad y^2 x = \frac{y^2}{1/x}, \qquad z^2 y = \frac{z^2}{1/y} .$$

Le lemme à trois fractions, avec $a = x$, $b = y$, $c = z$, $p = \frac{1}{z}$, $q = \frac{1}{x}$, $r = \frac{1}{y}$, donne

$$x^2 z + x y^2 + y z^2 \geqslant \frac{(x + y + z)^2}{\frac{1}{x} + \frac{1}{y} + \frac{1}{z}} .$$

**Étape 4 : utiliser l'hypothèse.** Notons $s = x + y + z$ et $h = \frac{1}{x} + \frac{1}{y} + \frac{1}{z}$, qui sont strictement positifs. L'hypothèse dit que $h \leqslant s$. Diviser par un nombre plus petit donne un résultat plus grand, donc

$$\frac{s^2}{h} \geqslant \frac{s^2}{s} = s .$$

Ainsi $x^2 z + x y^2 + y z^2 \geqslant s = x + y + z$, ce qui est $(1)$.

**Conclusion.** Sous l'hypothèse $x + y + z \geqslant \frac{1}{x} + \frac{1}{y} + \frac{1}{z}$, on a bien

$$\frac{x}{y} + \frac{y}{z} + \frac{z}{x} \geqslant \frac{1}{xy} + \frac{1}{yz} + \frac{1}{zx} .$$

## Going further

1. Montrer que l'hypothèse est nécessaire : trouver $x, y, z > 0$ pour lesquels la conclusion est fausse.
2. Quand y a-t-il égalité dans le lemme de l'étape 2 ?
