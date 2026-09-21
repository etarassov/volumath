---
id: "8514"
title: "Une condition cachée sur a³ + b³"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [identite-remarquable, factorisation, fractions]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Inégalités 2 » (Théo), exercice 9"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Soient $a$ et $b$ deux nombres réels positifs tels que

$$\frac{a}{1+b} + \frac{b}{1+a} = 1 .$$

Démontrer que $a^3 + b^3 = a + b$.

## Hints

1. Une équation avec des fractions se manipule mieux sans fractions. Multiplie les deux membres par $(1+a)(1+b)$.
2. Développe des deux côtés, puis simplifie tout ce qui se simplifie. Tu devrais arriver à une relation très courte entre $a^2 + b^2$ et $ab$.
3. La conclusion demandée fait intervenir $a^3 + b^3$. Rappelle-toi la factorisation $a^3 + b^3 = (a+b)(a^2 - ab + b^2)$.
4. Que vaut le facteur $a^2 - ab + b^2$, d'après l'étape 2 ?

## Solution

**On chasse les dénominateurs.** Les nombres $a$ et $b$ sont positifs, donc $1+a$ et $1+b$
sont strictement positifs et on peut multiplier l'égalité par $(1+a)(1+b)$ :

$$a(1+a) + b(1+b) = (1+a)(1+b) .$$

**On développe.** À gauche : $a + a^2 + b + b^2$. À droite : $1 + a + b + ab$. Donc

$$a + a^2 + b + b^2 = 1 + a + b + ab .$$

Les termes $a$ et $b$ se trouvent des deux côtés et disparaissent :

$$a^2 + b^2 = 1 + ab .$$

Autrement dit,

$$a^2 - ab + b^2 = 1 . \qquad (\star)$$

**On conclut.** On connaît la factorisation

$$a^3 + b^3 = (a+b)\left(a^2 - ab + b^2\right) .$$

D'après $(\star)$, le deuxième facteur vaut $1$, donc

$$a^3 + b^3 = (a+b) \times 1 = a + b .$$

C'est bien ce qu'il fallait démontrer.

## Going further

La condition de départ n'est pas vide : par exemple $a = b = 1$ la vérifie, car
$\frac{1}{2} + \frac{1}{2} = 1$, et on a bien $1^3 + 1^3 = 1 + 1$. Mais ce n'est pas le seul
couple : la relation $(\star)$ décrit toute une courbe (une ellipse) dans le quart de plan
$a \geqslant 0$, $b \geqslant 0$.
