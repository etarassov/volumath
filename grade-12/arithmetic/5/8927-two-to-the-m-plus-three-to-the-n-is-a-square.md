---
id: "8927"
title: "2ᵐ + 3ⁿ est un carré parfait"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 55
tags: [equation-diophantienne, congruences, factorisation, puissances]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe B"
  reference: "Poly-Valbonne-2026.pdf, chapitre IV « Groupe B », entraînement de fin de parcours, exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Trouver tous les triplets $(m, n, z)$ d'entiers naturels (donc positifs ou nuls) tels que

$$2^m + 3^n = z^2.$$

On rappelle que $2^0 = 3^0 = 1$.

## Hints

1. Cherchez d'abord des solutions à la main, avec de petits exposants. Il y en a trois, ne vous arrêtez pas à la première.
2. Traitez à part le cas $n = 0$. L'équation devient $2^m = z^2 - 1$ : factorisez le membre de droite.
3. Deux puissances de $2$ dont la différence vaut $2$ : quelles sont-elles ? Cette observation va resservir.
4. Pour $n \geq 1$, regardez l'équation modulo $3$. Quels sont les restes possibles d'un carré ? Et ceux de $2^m$ ?
5. Vous trouverez que $m$ est pair. Posez $m = 2k$ et factorisez $3^n = z^2 - (2^k)^2$.
6. Les deux facteurs sont des puissances de $3$. Peuvent-ils être tous les deux divisibles par $3$ ? Regardez leur différence.
7. Il restera à résoudre $2^{k+1} + 1 = 3^n$. Distinguez selon la parité de $n$, en regardant modulo $8$ dans un cas et en factorisant dans l'autre.

## Solution

Les solutions sont

$$(m,n,z) = (3, 0, 3), \qquad (0, 1, 2), \qquad (4, 2, 5),$$

qui correspondent à $8 + 1 = 9$, à $1 + 3 = 4$ et à $16 + 9 = 25$.

Nous allons montrer qu'il n'y en a pas d'autres.

### Un petit lemme qui servira deux fois

> **Lemme.** Si deux puissances de $2$ diffèrent de $2$, ce sont $2$ et $4$.
>
> *Démonstration.* Soient $2^a < 2^b$ avec $2^b - 2^a = 2$. Alors $2^a$ divise $2$, donc $a = 0$ ou $a = 1$. Si $a = 0$ : $2^b = 3$, impossible. Donc $a = 1$, puis $2^b = 4$ et $b = 2$. $\square$

### Cas 1 : $n = 0$

L'équation devient $2^m + 1 = z^2$, c'est-à-dire

$$2^m = z^2 - 1 = (z-1)(z+1).$$

Les deux facteurs $z-1$ et $z+1$ sont des diviseurs positifs de $2^m$ : ce sont donc des puissances de $2$ (le cas $z = 1$ donnerait $2^m = 0$, impossible). Leur différence vaut $2$, donc d'après le lemme $z - 1 = 2$ et $z+1 = 4$.

Donc $z = 3$ et $2^m = 8$, soit $m = 3$. On obtient la solution $(3, 0, 3)$.

### Cas 2 : $n \geq 1$, première étape, $m$ est pair

Regardons l'équation modulo $3$. Comme $n \geq 1$, on a $3^n \equiv 0$, donc

$$2^m \equiv z^2 \pmod 3.$$

Or $2 \equiv -1 \pmod 3$, donc $2^m \equiv (-1)^m$, qui vaut $1$ ou $-1$ selon la parité de $m$, mais jamais $0$. Donc $z^2 \not\equiv 0 \pmod 3$, et comme un carré vaut $0$ ou $1$ modulo $3$, on a $z^2 \equiv 1$.

Donc $(-1)^m \equiv 1 \pmod 3$, ce qui force $m$ **pair**. Écrivons $m = 2k$ avec $k \geq 0$.

### Cas 2, deuxième étape : la factorisation

L'équation se réécrit

$$3^n = z^2 - \left(2^k\right)^2 = \left(z - 2^k\right)\left(z + 2^k\right).$$

Le facteur $z + 2^k$ est strictement positif, et le produit vaut $3^n > 0$, donc $z - 2^k > 0$ aussi. Ces deux facteurs sont des diviseurs positifs de $3^n$ : ce sont donc des puissances de $3$.

Peuvent-ils être tous les deux divisibles par $3$ ? Si c'était le cas, $3$ diviserait leur différence

$$\left(z + 2^k\right) - \left(z - 2^k\right) = 2^{k+1},$$

ce qui est impossible. Le plus petit des deux, qui est $z - 2^k$, vaut donc $3^0 = 1$ :

$$z = 2^k + 1, \qquad \text{d'où} \qquad z + 2^k = 2^{k+1} + 1 = 3^n.$$

Tout revient donc à résoudre

$$2^{\,k+1} + 1 = 3^n, \qquad k \geq 0, \ n \geq 1.$$

### Cas 2, troisième étape : selon la parité de $n$

**Si $n$ est impair.** Regardons modulo $8$. Les puissances de $3$ alternent : $3^1 \equiv 3$, $3^2 \equiv 1$, $3^3 \equiv 3$, et ainsi de suite, donc $3^n \equiv 3 \pmod 8$ pour $n$ impair. Ainsi

$$2^{\,k+1} = 3^n - 1 \equiv 2 \pmod 8.$$

Une puissance de $2$ congrue à $2$ modulo $8$ ne peut être que $2$ elle-même : en effet $2^{k+1}$ vaut $1$, $2$, $4$, ou bien est divisible par $8$. Donc $2^{k+1} = 2$, soit $k = 0$, puis $3^n = 3$ et $n = 1$.

On retrouve $m = 2k = 0$ et $z = 2^0 + 1 = 2$ : la solution $(0, 1, 2)$.

**Si $n$ est pair**, écrivons $n = 2\ell$ avec $\ell \geq 1$. Alors

$$2^{\,k+1} = 3^{2\ell} - 1 = \left(3^{\ell} - 1\right)\left(3^{\ell} + 1\right).$$

Les deux facteurs sont des diviseurs positifs de $2^{k+1}$, donc des puissances de $2$, et leur différence vaut $2$. Le lemme donne $3^{\ell} - 1 = 2$ et $3^{\ell} + 1 = 4$, donc $3^{\ell} = 3$ et $\ell = 1$.

Alors $n = 2$, $2^{k+1} = 8$ donc $k = 2$, donc $m = 2k = 4$ et $z = 2^k + 1 = 5$ : la solution $(4, 2, 5)$.

### Vérification

$$2^3 + 3^0 = 8 + 1 = 9 = 3^2 \quad \checkmark$$
$$2^0 + 3^1 = 1 + 3 = 4 = 2^2 \quad \checkmark$$
$$2^4 + 3^2 = 16 + 9 = 25 = 5^2 \quad \checkmark$$

### Conclusion

$$\boxed{(m,n,z) \in \{(3,0,3),\ (0,1,2),\ (4,2,5)\}.}$$

## Going further

1. Résolvez de la même manière $2^m + 5^n = z^2$.
2. Dans la troisième étape, on a utilisé deux modules différents, $3$ puis $8$. Qu'est-ce qui guide ce choix ? Essayez de refaire l'étape avec $5$ à la place de $8$ et voyez pourquoi cela ne mène nulle part.
