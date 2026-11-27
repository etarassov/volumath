---
id: "41121"
title: "x² + y⁴ + z⁶ contre xy² + y²z³ + xz³"
grade: 9
theme: algebra
difficulty: 3
duration_min: 15
tags: [inegalite, identites-remarquables, substitution, somme-cyclique, cas-d-egalite]
adapted_from: null
see_also: ["8421", "0678"]
same_as: []
created: 2026-11-27
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Inégalités 2 » (Théo), exercice 14 (énoncé dans le polycopié Inegalites-Theo.pdf)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Montrer que pour tous nombres réels $x$, $y$ et $z$,

$$x^2 + y^4 + z^6 \geqslant xy^2 + y^2z^3 + xz^3,$$

et trouver les cas d'égalité.

## Hints

1. Les exposants font peur, mais regarde-les de près : $y^4$ est le carré de $y^2$, et $z^6$ est le carré de $z^3$.
2. Pose $a = x$, $b = y^2$ et $c = z^3$. Que deviennent les deux membres ?
3. Tu dois retrouver $a^2 + b^2 + c^2 \geqslant ab + bc + ca$. Cette inégalité se démontre en additionnant $a^2 + b^2 \geqslant 2ab$, $b^2 + c^2 \geqslant 2bc$ et $c^2 + a^2 \geqslant 2ca$.

## Solution

**L'idée : reconnaître une inégalité connue sous un déguisement.**

**Le changement de lettres.** Posons

$$a = x, \qquad b = y^2, \qquad c = z^3.$$

Alors $a^2 = x^2$, $b^2 = (y^2)^2 = y^4$ et $c^2 = (z^3)^2 = z^6$. De même $ab = xy^2$, $bc = y^2z^3$ et $ca = z^3x$. L'inégalité à démontrer s'écrit donc

$$a^2 + b^2 + c^2 \geqslant ab + bc + ca.$$

**Démontrons cette inégalité** pour tous réels $a$, $b$, $c$. Pour deux réels quelconques $u$ et $v$, on a $(u - v)^2 \geqslant 0$, c'est-à-dire $u^2 - 2uv + v^2 \geqslant 0$, donc $u^2 + v^2 \geqslant 2uv$, avec égalité seulement si $u = v$. On l'applique aux trois paires :

$$a^2 + b^2 \geqslant 2ab, \qquad b^2 + c^2 \geqslant 2bc, \qquad c^2 + a^2 \geqslant 2ca.$$

En additionnant ces trois inégalités, on obtient

$$2a^2 + 2b^2 + 2c^2 \geqslant 2ab + 2bc + 2ca,$$

et en divisant par $2$ :

$$a^2 + b^2 + c^2 \geqslant ab + bc + ca.$$

En revenant à $x$, $y$, $z$, c'est exactement $x^2 + y^4 + z^6 \geqslant xy^2 + y^2z^3 + xz^3$.

**Le cas d'égalité.** La somme des trois inégalités est une égalité seulement si chacune des trois en est une, c'est-à-dire si $a = b$, $b = c$ et $c = a$, autrement dit si $a = b = c$. Réciproquement, si $a = b = c$, les deux membres valent $3a^2$.

En revenant aux lettres de départ, il y a égalité exactement quand

$$x = y^2 = z^3.$$

Par exemple $x = y = z = 0$, ou $x = 1$, $y = 1$, $z = 1$, ou encore $x = 64$, $y = -8$, $z = 4$. Comme $y^2 \geqslant 0$, il faut que $x$ et $z^3$ soient positifs ou nuls, donc $x \geqslant 0$ et $z \geqslant 0$, alors que $y$ peut être négatif.

**Conclusion : pour tous réels $x$, $y$, $z$, on a $x^2 + y^4 + z^6 \geqslant xy^2 + y^2z^3 + xz^3$, avec égalité si et seulement si $x = y^2 = z^3$.**

## Going further

Avec la même méthode, montrer que pour tous réels $x$ et $y$,
$$x^4 + y^4 + 1 \geqslant x^2y^2 + x^2 + y^2.$$
Quand y a-t-il égalité ?
