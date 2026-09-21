---
id: "8450"
title: "Deux carrés moins quinze, égal à une puissance de 2"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [equation diophantienne, carres, modulo 4, puissances de deux, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, entraînement de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, entraînement de fin de parcours, exercice 1 (la solution imprimée écrit « x² + y² = 19 » au lieu de 17 pour le cas z = 1, puis traite bien le cas 17)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Trouver tous les triplets $(x, y, z)$ d'entiers positifs ou nuls tels que

$$x^2 + y^2 - 15 = 2^z.$$

## Hints

1. Une équation avec des carrés d'un côté et une puissance de $2$ de l'autre : regarde tout modulo $4$.
2. Quels sont les restes possibles d'un carré dans la division par $4$ ? Essaie avec $0^2, 1^2, 2^2, 3^2, \ldots$
3. Et le reste de $2^z$ modulo $4$ ? Attention, la réponse dépend de $z$ : traite à part les petites valeurs.
4. Une fois $z$ réduit à deux valeurs, il ne reste que deux équations $x^2 + y^2 = \ldots$ à résoudre, et un carré ne peut pas dépasser la somme.

## Solution

### Étape 1. Les carrés modulo 4

Tout entier $x$ s'écrit $2k$ ou $2k+1$. Dans le premier cas $x^2 = 4k^2 \equiv 0 \pmod 4$, dans le second $x^2 = 4(k^2+k) + 1 \equiv 1 \pmod 4$. Donc

$$x^2 \equiv 0 \text{ ou } 1 \pmod 4, \qquad y^2 \equiv 0 \text{ ou } 1 \pmod 4.$$

La somme $x^2 + y^2$ est donc congrue à $0$, $1$ ou $2$ modulo $4$ : **elle n'est jamais congrue à $3$.**

### Étape 2. Le cas $z \geqslant 2$

Si $z \geqslant 2$, alors $4$ divise $2^z$, donc $2^z \equiv 0 \pmod 4$. L'équation donne alors

$$x^2 + y^2 = 2^z + 15 \equiv 0 + 15 \equiv 3 \pmod 4,$$

ce que l'étape 1 interdit. **Il n'y a donc aucune solution avec $z \geqslant 2$.**

Il ne reste que $z = 0$ et $z = 1$.

### Étape 3. Le cas $z = 0$

L'équation devient $x^2 + y^2 = 16$. Comme les deux carrés sont positifs, on a $x^2 \leqslant 16$, donc $x \leqslant 4$. On essaie les cinq valeurs :

| $x$ | $16 - x^2$ | est-ce un carré ? |
|---|---|---|
| $0$ | $16$ | oui, $y = 4$ |
| $1$ | $15$ | non |
| $2$ | $12$ | non |
| $3$ | $7$ | non |
| $4$ | $0$ | oui, $y = 0$ |

On obtient les solutions $(0, 4, 0)$ et $(4, 0, 0)$.

### Étape 4. Le cas $z = 1$

L'équation devient $x^2 + y^2 = 17$. Ici $x^2 \leqslant 17 < 25$, donc $x \leqslant 4$ à nouveau :

| $x$ | $17 - x^2$ | est-ce un carré ? |
|---|---|---|
| $0$ | $17$ | non |
| $1$ | $16$ | oui, $y = 4$ |
| $2$ | $13$ | non |
| $3$ | $8$ | non |
| $4$ | $1$ | oui, $y = 1$ |

On obtient les solutions $(1, 4, 1)$ et $(4, 1, 1)$.

### Conclusion

L'ensemble des solutions est

$$\boxed{(0, 4, 0), \quad (4, 0, 0), \quad (1, 4, 1), \quad (4, 1, 1).}$$

## Going further

L'équation est symétrique en $x$ et $y$ : si $(x, y, z)$ est solution, $(y, x, z)$ l'est aussi. On aurait donc pu supposer dès le départ $x \leqslant y$, ce qui divise par deux le nombre de cas à tester, à condition de ne pas oublier de rajouter les solutions échangées à la fin.

Le raisonnement modulo $4$ est l'outil de base pour les équations mêlant carrés et puissances de $2$, parce que les deux objets y ont des restes très contraints. Modulo $8$, on gagne encore un peu : un carré impair y est toujours congru à $1$, ce qui sert dès que trois carrés apparaissent.
