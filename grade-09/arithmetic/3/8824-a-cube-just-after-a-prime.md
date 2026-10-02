---
id: "8824"
title: "Un cube juste après un nombre premier"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombres-premiers, factorisation, identite, equation-entiere]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, entraînement de mi-parcours du Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Entraînement de mi-parcours », exercice 1, p. 87"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Trouver tous les couples $(n, p)$ d'entiers naturels tels que $p$ soit un nombre premier et
$$n^3 = p + 1 .$$

## Hints

1. Isole $p$ : tu cherches quand $n^3 - 1$ est un nombre premier.
2. $n^3 - 1$ se factorise. Rappelle-toi que $x^3 - 1 = (x-1)(x^2+x+1)$, ou retrouve-le en développant.
3. Un nombre premier n'a que deux diviseurs positifs. Si $n$ est grand, les deux facteurs sont tous les deux plus grands que $1$ : impossible.
4. Il ne restera que quelques petites valeurs de $n$ à essayer à la main. N'oublie pas $n = 0$ et $n = 1$.

## Solution

### On factorise

L'égalité $n^3 = p+1$ se récrit
$$p = n^3 - 1 .$$

Et $n^3 - 1$ se factorise :
$$n^3 - 1 = (n-1)\left(n^2 + n + 1\right).$$

(Vérification en développant : $n^3 + n^2 + n - n^2 - n - 1 = n^3 - 1$.)

### On élimine les grandes valeurs

Supposons $n \geqslant 3$. Alors
$$n - 1 \geqslant 2 > 1 \qquad \text{et} \qquad n^2 + n + 1 \geqslant 13 > 1 .$$

Le nombre $p$ serait donc le produit de deux entiers tous deux strictement plus grands que $1$ : il ne serait pas premier. C'est exclu.

Il reste donc $n \in \{0, 1, 2\}$.

### On essaie les trois valeurs restantes

- $n = 0$ : $p = 0 - 1 = -1$, qui n'est pas un nombre premier.
- $n = 1$ : $p = 1 - 1 = 0$, qui n'est pas un nombre premier.
- $n = 2$ : $p = 8 - 1 = 7$, qui **est** premier.

### Conclusion

$$\boxed{(n, p) = (2, 7)}$$
est le seul couple qui convient, et l'égalité s'écrit $2^3 = 7 + 1$.

## Going further

1. Trouver tous les entiers naturels $n$ tels que $n^3 + 1$ soit premier.
2. Et tous les entiers naturels $n$ tels que $n^4 - 1$ soit premier.
