---
id: "13242"
title: "La puissance de 2 dans (2² − 1)(3² − 1)⋯(100² − 1)"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [puissances-de-2, factorielle, identites-remarquables, divisibilite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017, premier tour"
  reference: "2017-10_coupe_automne_2017_elim.pdf, exercices lycéens, exercice 16 ; réponse (191) dans 2017-10_coupe_automne_2017_elim_lycee.pdf, pas de corrigé rédigé"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017_elim.pdf"
---

## Statement

Soit

$$A = (2^2 - 1)(3^2 - 1)(4^2 - 1) \cdots (100^2 - 1).$$

Déterminer le plus grand entier $n$ tel que $2^n$ divise $A$.

## Hints

1. Factorise $k^2 - 1$.
2. Regroupe d'un côté tous les facteurs $k - 1$, de l'autre tous les facteurs $k + 1$. Reconnais deux produits d'entiers consécutifs.
3. Pour trouver combien de fois $2$ divise $1 \times 2 \times \cdots \times 99$, compte les multiples de $2$, puis ceux de $4$, de $8$…

## Solution

**On réécrit $A$.** Comme $k^2 - 1 = (k - 1)(k + 1)$,

$$A = \underbrace{(1 \times 2 \times \cdots \times 99)}_{\text{les } k - 1} \times \underbrace{(3 \times 4 \times \cdots \times 101)}_{\text{les } k + 1}.$$

Avec la notation $m! = 1 \times 2 \times \cdots \times m$, cela s'écrit $A = 99! \times \frac{101!}{2}$.

Notons $e(N)$ l'exposant de $2$ dans $N$, c'est-à-dire le plus grand entier $e$ tel que $2^e$ divise $N$. Pour un produit, les exposants s'ajoutent, donc

$$e(A) = e(99!) + e(101!) - 1.$$

**L'exposant de $2$ dans $99!$.** Chaque facteur $k$ de $1$ à $99$ apporte son propre exposant. Comptons ces apports par paliers : chaque nombre pair apporte au moins un $2$, chaque multiple de $4$ en apporte au moins un de plus, chaque multiple de $8$ encore un de plus, et ainsi de suite. Entre $1$ et $99$, il y a

- $49$ multiples de $2$,
- $24$ multiples de $4$,
- $12$ multiples de $8$,
- $6$ multiples de $16$,
- $3$ multiples de $32$,
- $1$ multiple de $64$.

Par exemple $48 = 2^4 \times 3$ est compté dans les quatre premières lignes, donc $4$ fois, ce qui est bien son exposant. On obtient $e(99!) = 49 + 24 + 12 + 6 + 3 + 1 = 95$.

**L'exposant de $2$ dans $101!$.** De la même façon, entre $1$ et $101$ il y a $50$, $25$, $12$, $6$, $3$, $1$ multiples de $2$, $4$, $8$, $16$, $32$, $64$, donc $e(101!) = 97$.

**Conclusion.** $e(A) = 95 + 97 - 1 = 191$ : le plus grand $n$ tel que $2^n$ divise $A$ est $191$.
