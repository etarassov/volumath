---
id: "5109"
title: "La table de multiplication et la plus grande somme"
grade: 8
theme: algebra
difficulty: 3
duration_min: 25
tags: [factorisation, distributivite, maximum, produit]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Place Value Problems », Harold Reiter"
  reference: "HReiterPlaceValueProblems.pdf, problème 6"
  url: "https://mathcircles.org/activity/place-value-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/HReiterPlaceValueProblems.pdf"
---

## Statement

On range les six nombres $1$, $2$, $3$, $6$, $7$, $8$ autour d'une petite table de multiplication : trois en haut, les trois autres à gauche. On remplit ensuite les neuf cases avec les produits correspondants, puis on additionne ces neuf produits.

| $\times$ | $a$ | $b$ | $c$ |
|---|---|---|---|
| $d$ | | | |
| $e$ | | | |
| $f$ | | | |

Par exemple, en plaçant $1$, $2$, $3$ en haut et $6$, $7$, $8$ à gauche, la somme des neuf produits vaut $126$.

Comment placer les six nombres pour que cette somme soit la plus grande possible ? Combien vaut-elle alors ?

## Hints

1. Avant de chercher le meilleur rangement, écris la somme des neuf produits avec les lettres $a$, $b$, $c$, $d$, $e$, $f$, sans rien simplifier.
2. Regroupe les termes trois par trois : les trois de la première ligne, puis ceux de la deuxième, puis ceux de la troisième. Que peux-tu mettre en facteur ?
3. Tu devrais arriver à un produit de deux facteurs seulement. Que vaut la somme de ces deux facteurs, et pourquoi ne change-t-elle jamais ?
4. Il ne reste plus qu'une question : deux nombres dont la somme est fixée, comment les choisir pour que leur produit soit le plus grand possible ?

## Solution

**Étape 1. La somme des neuf produits se factorise.**

Notons $a$, $b$, $c$ les nombres du haut et $d$, $e$, $f$ ceux de gauche. La somme des neuf cases vaut

$$T = da + db + dc + ea + eb + ec + fa + fb + fc$$

Regroupons par ligne et mettons en facteur :

$$T = d(a+b+c) + e(a+b+c) + f(a+b+c) = (a+b+c)(d+e+f)$$

**Étape 2. La somme des deux facteurs ne change jamais.**

Quel que soit le rangement, les six nombres utilisés sont toujours $1$, $2$, $3$, $6$, $7$, $8$, donc

$$(a+b+c) + (d+e+f) = 1 + 2 + 3 + 6 + 7 + 8 = 27$$

Appelons $s = a+b+c$ la somme du haut. Alors la somme de gauche vaut $27 - s$, et

$$T = s\,(27 - s)$$

**Étape 3. Le meilleur choix de $s$.**

Il faut donc rendre $s(27-s)$ le plus grand possible. Pour deux nombres dont la somme est fixée, le produit est d'autant plus grand que les deux nombres sont proches l'un de l'autre. Comme $27$ est impair, le mieux serait $s = 13$ et $27 - s = 14$ (ou l'inverse). Comparons les valeurs voisines :

| $s$ | $11$ | $12$ | $13$ | $14$ | $15$ | $16$ |
|---|---|---|---|---|---|---|
| $s(27-s)$ | $176$ | $180$ | $182$ | $182$ | $180$ | $176$ |

Le maximum possible est donc $182$, atteint pour $s = 13$ ou $s = 14$.

**Étape 4. Ce partage est réalisable.**

Encore faut-il pouvoir couper $\{1, 2, 3, 6, 7, 8\}$ en deux groupes de trois dont les sommes valent $13$ et $14$. C'est le cas :

$$2 + 3 + 8 = 13 \qquad \text{et} \qquad 1 + 6 + 7 = 14$$

En plaçant $2$, $3$, $8$ en haut et $1$, $6$, $7$ à gauche, on obtient bien $13 \times 14 = 182$.

**Conclusion. La plus grande somme possible est $182$.** On l'obtient en plaçant d'un côté $\{2, 3, 8\}$ et de l'autre $\{1, 6, 7\}$ (l'ordre à l'intérieur de chaque groupe n'a aucune importance).

## Going further

Le calcul de l'étape 1 explique aussi pourquoi l'ordre à l'intérieur de chaque groupe ne change rien : seule compte la somme de chaque groupe. C'est exactement la même identité que celle qui sert à développer un produit de deux sommes, ici avec trois termes de chaque côté.

On peut vérifier au passage l'exemple de l'énoncé : $1 + 2 + 3 = 6$ et $6 + 7 + 8 = 21$, donc $T = 6 \times 21 = 126$. C'est bien le plus mauvais partage possible, puisque $6$ et $21$ sont aussi éloignés que possible l'un de l'autre.
