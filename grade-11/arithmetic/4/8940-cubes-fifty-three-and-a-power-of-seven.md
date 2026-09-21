---
id: "8940"
title: "Des cubes, 53 et une puissance de 7"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [congruences, cubes, equation-diophantienne, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe B"
  reference: "Poly-Valbonne-2026.pdf, chapitre IV « Groupe B », « Arithmétique : TD de révisions » (Eva), exercice 16"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Trouver tous les triplets $(x, y, \ell)$ d'entiers naturels vérifiant

$$x^3 + y^3 - 53 = 7^{\ell}.$$

## Hints

1. Le nombre $7$ apparaît au second membre. Cela invite à travailler modulo $7$.
2. Dressez la liste des restes possibles d'un cube modulo $7$ : calculez $k^3$ modulo $7$ pour $k = 0, 1, 2, \ldots, 6$. Il y en a beaucoup moins que sept.
3. Déduisez-en la liste des restes possibles de $x^3 + y^3$ modulo $7$. Quels restes sont interdits ?
4. Séparez deux cas selon que $\ell \geqslant 1$ ou $\ell = 0$. Dans le premier cas, que vaut $7^{\ell}$ modulo $7$ ?
5. Le cas $\ell = 0$ se règle à la main : il ne reste qu'une petite équation, et $x$ comme $y$ ne peuvent pas être grands.

## Solution

### Étape 1 : les cubes modulo 7

Calculons $k^3$ modulo $7$ pour chaque reste $k$ possible :

| $k$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ |
|---|---|---|---|---|---|---|---|
| $k^3$ | $0$ | $1$ | $8$ | $27$ | $64$ | $125$ | $216$ |
| $k^3 \bmod 7$ | $0$ | $1$ | $1$ | $6$ | $1$ | $6$ | $6$ |

Un cube est donc congru à $0$, $1$ ou $6$ modulo $7$. Autrement dit, modulo $7$, un cube vaut $0$, $1$ ou $-1$.

### Étape 2 : les sommes de deux cubes modulo 7

En additionnant deux nombres pris dans $\{-1, 0, 1\}$, on obtient un nombre dans $\{-2, -1, 0, 1, 2\}$. Modulo $7$, cela donne

$$x^3 + y^3 \equiv 0,\ 1,\ 2,\ 5 \ \text{ou} \ 6 \pmod 7.$$

Les restes $3$ et $4$ sont donc **impossibles** pour une somme de deux cubes.

### Étape 3 : le cas $\ell \geqslant 1$

Si $\ell \geqslant 1$, alors $7$ divise $7^{\ell}$, donc $7^{\ell} \equiv 0 \pmod 7$. L'équation donne alors

$$x^3 + y^3 \equiv 53 \pmod 7.$$

Or $53 = 7 \times 7 + 4$, donc $53 \equiv 4 \pmod 7$. Il faudrait que $x^3+y^3 \equiv 4$, ce que l'étape 2 interdit.

**Il n'y a donc aucune solution avec $\ell \geqslant 1$.**

### Étape 4 : le cas $\ell = 0$

Il reste $\ell = 0$, donc $7^{\ell} = 1$, et l'équation s'écrit

$$x^3 + y^3 = 54.$$

Quitte à échanger $x$ et $y$, supposons $x \leqslant y$. Alors $y^3 \leqslant 54$, et comme $4^3 = 64 > 54$, on a $y \leqslant 3$. De même $x \leqslant 3$. Il n'y a que peu de cas à essayer :

| $x$ | $y$ | $x^3 + y^3$ |
|---|---|---|
| $0$ | $0,1,2,3$ | $0,\ 1,\ 8,\ 27$ |
| $1$ | $1,2,3$ | $2,\ 9,\ 28$ |
| $2$ | $2,3$ | $16,\ 35$ |
| $3$ | $3$ | $54$ |

La seule valeur $54$ apparaît pour $x = y = 3$.

### Conclusion

$$\boxed{(x, y, \ell) = (3, 3, 0)\ \text{est l'unique solution.}}$$

Vérification : $3^3 + 3^3 - 53 = 27 + 27 - 53 = 1 = 7^0$. C'est bien le compte.

## Going further

1. Pourquoi $7$ est-il un si bon modulo pour les cubes ? Parce que $7 = 3 \times 2 + 1$ : dans ce cas les cubes ne prennent que $\frac{7-1}{3} + 1 = 3$ valeurs. Vérifiez qu'il se passe la même chose modulo $13$, et qu'au contraire, modulo $5$, tout reste est un cube.
2. Reprenez l'équation $x^3 + y^3 - 53 = 7^{\ell}$ en autorisant $x$ et $y$ à être des entiers relatifs. L'argument modulo $7$ tient-il encore ? Et le cas $\ell = 0$ ?
