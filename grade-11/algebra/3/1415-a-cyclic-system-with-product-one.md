---
id: "1415"
title: "Trois nombres dont le produit vaut 1"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [systeme, substitution, fractions, calcul-litteral]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2, Winter Competition « Game »"
  reference: "Handout-3916-3573.pdf, partie 2 « Algebra », problème 4 (réponse dans Handout-3917-3573.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3916-3573.pdf"
---

## Statement

Soient $x$, $y$, $z$ trois nombres réels strictement positifs tels que

$$xyz = 1, \qquad x + \frac{1}{z} = 5, \qquad y + \frac{1}{x} = 29 .$$

Calculer la valeur de

$$z + \frac{1}{y}.$$

## Hints

1. La relation $xyz = 1$ permet de remplacer chaque inverse par un produit des deux autres inconnues. Que vaut $\dfrac{1}{z}$ en fonction de $x$ et $y$ ?
2. De même, que valent $\dfrac1x$ et $\dfrac1y$ ?
3. Les trois expressions se réécrivent alors sans aucune fraction : $x(1+y) = 5$, $y(1+z) = 29$, et la quantité cherchée devient $z(1+x)$.
4. Tirer $xy$ de la première équation, puis développer $xyz = 1$ en utilisant la deuxième pour éliminer $z$.

## Solution

**Se débarrasser des fractions.**

Comme $xyz = 1$ et que $x$, $y$, $z$ sont non nuls,

$$\frac{1}{z} = xy, \qquad \frac{1}{x} = yz, \qquad \frac{1}{y} = zx .$$

Les données deviennent

$$x + xy = 5, \qquad y + yz = 29,$$

et la quantité cherchée s'écrit

$$z + \frac1y = z + zx = z(1 + x).$$

**Trouver $x$.**

De la première équation, $xy = 5 - x$.

De la deuxième, $yz = 29 - y$. Multiplions cette dernière par $x$ :

$$xyz = x(29 - y) = 29x - xy .$$

Or $xyz = 1$ et $xy = 5 - x$, donc

$$1 = 29x - (5 - x) = 30x - 5 .$$

D'où $30x = 6$, c'est-à-dire

$$x = \frac15 .$$

**Trouver $y$ puis $z$.**

$xy = 5 - x = 5 - \dfrac15 = \dfrac{24}{5}$, donc

$$y = \frac{24/5}{1/5} = 24 .$$

Puis $xyz = 1$ donne

$$z = \frac{1}{xy} = \frac{5}{24}.$$

Ces trois valeurs sont bien strictement positives. Vérifions la deuxième donnée : $y + \dfrac1x = 24 + 5 = 29$. C'est correct. Et la première : $x + \dfrac1z = \dfrac15 + \dfrac{24}{5} = \dfrac{25}{5} = 5$. Correct aussi.

**Conclure.**

$$z + \frac{1}{y} = \frac{5}{24} + \frac{1}{24} = \frac{6}{24} = \frac14 .$$

**Conclusion.** $z + \dfrac1y = \boxed{\dfrac14}$.

**Une remarque.** On peut aussi obtenir la réponse sans calculer $x$, $y$, $z$ séparément. Posons $A = x + \frac1z$, $B = y + \frac1x$, $C = z + \frac1y$. En utilisant $xyz = 1$ comme ci-dessus, $A = x(1+y)$, $B = y(1+z)$, $C = z(1+x)$, donc

$$ABC = xyz\,(1+x)(1+y)(1+z) = (1+x)(1+y)(1+z).$$

Par ailleurs, en développant, $(1+x)(1+y)(1+z) = 1 + (x+y+z) + (xy+yz+zx) + xyz = 2 + (x+y+z) + (xy+yz+zx)$, et l'on vérifie que $A + B + C = x+y+z+xy+yz+zx$. Donc $ABC = A + B + C + 2$, soit ici $5 \times 29 \times C = 5 + 29 + C + 2$, c'est-à-dire $145C = 36 + C$, d'où $144C = 36$ et $C = \frac14$. On retrouve bien le même résultat.

## Going further

1. Vérifier en détail l'identité $A + B + C = x + y + z + xy + yz + zx$ utilisée dans la remarque.
2. Avec $xyz = 1$, $x + \frac1z = 2$ et $y + \frac1x = 2$, que vaut $z + \frac1y$ ? Interpréter.
3. Peut-on choisir $A = 5$ et $B = 1$ ? Que dit la relation $ABC = A + B + C + 2$ dans ce cas ?
