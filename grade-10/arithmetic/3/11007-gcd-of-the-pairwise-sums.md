---
id: "11007"
title: "Le PGCD des sommes deux à deux"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 35
tags: [pgcd, divisibilite, parite, puissances-de-deux]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 3 (arithmétique)"
  reference: "2020-01_sujet-envoi-3.pdf, Exercices Seniors, exercice 13 ; corrigé 2020-02_corrige-commente-envoi-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_sujet-envoi-3.pdf"
---

## Statement

Pour des entiers relatifs non tous nuls, on note $\mathrm{PGCD}$ le plus grand entier positif qui les
divise tous. Par exemple $\mathrm{PGCD}(0, 6, -4) = 2$.

Déterminer tous les triplets $(x, y, z)$ d'entiers relatifs, autres que $(0, 0, 0)$, tels que
$$\mathrm{PGCD}(x, y, z) < \mathrm{PGCD}(x + y,\ y + z,\ z + x) .$$

## Hints

1. Montre que $\mathrm{PGCD}(x, y, z)$ divise toujours $\mathrm{PGCD}(x + y, y + z, z + x)$.
2. Avec $x + y$, $z + x$ et $y + z$, fabrique $2x$. Qu'en déduis-tu pour le second PGCD ?
3. Le second PGCD vaut donc $g$ ou $2g$, où $g = \mathrm{PGCD}(x, y, z)$. Divise $x$, $y$, $z$ par $g$ et regarde leur parité.

## Solution

Notons $g = \mathrm{PGCD}(x, y, z)$ et $d = \mathrm{PGCD}(x + y, y + z, z + x)$. Comme $(x, y, z) \neq (0, 0, 0)$,
les trois sommes ne sont pas toutes nulles (si elles l'étaient, leur somme $2(x + y + z)$ serait nulle,
puis $z = (x + y + z) - (x + y) = 0$, et de même $x = y = 0$). Les deux PGCD ont donc un sens.

**$d$ est un multiple de $g$.** Le nombre $g$ divise $x$, $y$ et $z$, donc il divise chacune des trois
sommes, donc il divise leur PGCD $d$.

**$d$ divise $2g$.** Le nombre $d$ divise les trois sommes, donc aussi
$$(x + y) + (z + x) - (y + z) = 2x ,$$
et de même $2y$ et $2z$. Il divise donc $\mathrm{PGCD}(2x, 2y, 2z) = 2g$.

Comme $d$ est un multiple de $g$ qui divise $2g$, on a $d = g$ ou $d = 2g$. La condition de l'énoncé,
$g < d$, revient donc à $d = 2g$.

**On se ramène à des nombres sans diviseur commun.** Écrivons $x = g x'$, $y = g y'$, $z = g z'$. Les
entiers $x', y', z'$ ont pour PGCD $1$, et
$$d = \mathrm{PGCD}(g(x'+y'),\ g(y'+z'),\ g(z'+x')) = g \cdot \mathrm{PGCD}(x'+y',\ y'+z',\ z'+x') .$$
La condition $d = 2g$ devient $\mathrm{PGCD}(x'+y', y'+z', z'+x') = 2$. Par ce qui précède appliqué à
$x', y', z'$, ce PGCD vaut $1$ ou $2$ ; il vaut $2$ exactement quand les trois sommes $x' + y'$,
$y' + z'$, $z' + x'$ sont paires, c'est-à-dire quand $x'$, $y'$, $z'$ ont tous la même parité.

Ils ne peuvent pas être tous pairs, sinon $2$ diviserait les trois et leur PGCD ne serait pas $1$. La
condition est donc : **$x'$, $y'$, $z'$ sont tous les trois impairs.**

**Traduction.** Dire que $x / g$, $y / g$ et $z / g$ sont impairs, c'est dire que $x$, $y$, $z$ sont non nuls
et que la plus grande puissance de $2$ qui divise $x$ est la même que pour $y$ et pour $z$ (c'est la
puissance de $2$ contenue dans $g$).

**Conclusion.** Les triplets cherchés sont exactement ceux de la forme
$$(x, y, z) = \left(2^e x',\ 2^e y',\ 2^e z'\right), \qquad e \geqslant 0, \quad x', y', z' \ \text{impairs}.$$
Par exemple $(1, 3, 5)$ convient ($1 < 2$), $(2, 6, -10)$ aussi ($2 < 4$), mais pas $(1, 2, 3)$, pour
lequel les deux PGCD valent $1$.
