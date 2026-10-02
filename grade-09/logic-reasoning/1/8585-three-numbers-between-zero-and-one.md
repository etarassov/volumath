---
id: "8585"
title: "Trois nombres entre 0 et 1"
grade: 9
theme: logic-reasoning
difficulty: 1
duration_min: 10
tags: [principe-des-tiroirs, intervalle, distance]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Principe des tiroirs et de l'extremum » (Angela) du Groupe B, exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

On donne trois nombres $x$, $y$, $z$, tous compris entre $0$ (inclus) et $1$ (exclu).

Démontrer qu'il y en a deux, appelons-les $a$ et $b$, tels que

$$|b - a| < \frac{1}{2} .$$

## Hints

1. Coupe l'intervalle des valeurs possibles en deux moitiés.
2. Trois nombres, deux moitiés : le principe des tiroirs s'applique directement.

## Solution

**Les deux tiroirs.** Coupons l'intervalle $[0, 1[$ en deux moitiés :

$$[\,0\,;\ \tfrac{1}{2}\,[ \qquad \text{et} \qquad [\,\tfrac{1}{2}\,;\ 1\,[ .$$

Chacun des trois nombres $x$, $y$, $z$ appartient à l'une de ces deux moitiés, et à une seule.

**Le principe des tiroirs.** Il y a trois nombres et seulement deux moitiés : deux des trois
nombres sont donc dans la même moitié. Appelons-les $a$ et $b$.

**La conclusion.** Une moitié est un intervalle de longueur $\dfrac{1}{2}$, dont la borne de
droite est exclue. Deux nombres qui s'y trouvent sont donc distants de strictement moins de
$\dfrac{1}{2}$ :

$$|b - a| < \frac{1}{2} .$$

C'est bien ce qu'il fallait démontrer.
