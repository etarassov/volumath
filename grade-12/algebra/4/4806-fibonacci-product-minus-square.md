---
id: "4806"
title: "Le produit des voisins de Fibonacci"
grade: 12
theme: algebra
difficulty: 4
duration_min: 35
tags: [fibonacci, suites, recurrence, identite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Introduction to Induction (Olga Radko)"
  reference: "handoutId10-0.pdf, section 8, exercice 2"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/handoutId10-0.pdf"
---

## Statement

La suite de Fibonacci $(F_n)$ est définie par
$$F_0 = 0, \qquad F_1 = 1, \qquad F_{n+1} = F_n + F_{n-1} \ \text{ pour } n \geqslant 1 .$$
Ses premiers termes sont donc $0, 1, 1, 2, 3, 5, 8, 13, 21, 34, \ldots$

1. Calculer $F_{n-1} F_{n+1} - F_n^{2}$ pour $n = 1, 2, 3, 4, 5, 6$.
2. Démontrer que pour tout entier $n \geqslant 1$,
$$F_{n-1} F_{n+1} - F_n^{2} = (-1)^n .$$

## Hints

1. Fais le calcul de la question 1 dans un tableau. Le résultat vaut tantôt $+1$, tantôt $-1$ : repère quand.
2. Pour l'hérédité, pars de $F_n F_{n+2} - F_{n+1}^{2}$ et remplace $F_{n+2}$ par $F_{n+1} + F_n$.
3. Tu obtiens $F_n F_{n+1} + F_n^{2} - F_{n+1}^{2}$. Fais maintenant apparaître $F_{n-1}$ en écrivant $F_n - F_{n+1} = -F_{n-1}$.
4. Tu devrais tomber sur l'opposé de la quantité du rang $n$. C'est exactement ce qu'il faut, puisque $(-1)^{n+1} = -(-1)^n$.

## Solution

### 1. Les premiers cas

| $n$ | $F_{n-1}$ | $F_n$ | $F_{n+1}$ | $F_{n-1}F_{n+1} - F_n^{2}$ |
|---|---|---|---|---|
| $1$ | $0$ | $1$ | $1$ | $0 \times 1 - 1 = -1$ |
| $2$ | $1$ | $1$ | $2$ | $1 \times 2 - 1 = 1$ |
| $3$ | $1$ | $2$ | $3$ | $1 \times 3 - 4 = -1$ |
| $4$ | $2$ | $3$ | $5$ | $2 \times 5 - 9 = 1$ |
| $5$ | $3$ | $5$ | $8$ | $3 \times 8 - 25 = -1$ |
| $6$ | $5$ | $8$ | $13$ | $5 \times 13 - 64 = 1$ |

Le résultat vaut $-1$ quand $n$ est impair et $+1$ quand $n$ est pair : c'est bien $(-1)^n$.

### 2. La démonstration

Notons $D_n = F_{n-1} F_{n+1} - F_n^{2}$, et $P(n)$ l'affirmation « $D_n = (-1)^n$ ».

**Initialisation.** $D_1 = F_0 F_2 - F_1^{2} = 0 \times 1 - 1^2 = -1 = (-1)^1$. Donc $P(1)$ est vraie.

**Hérédité.** Supposons $P(n)$ vraie pour un entier $n \geqslant 1$, c'est-à-dire $D_n = (-1)^n$. Calculons $D_{n+1}$ :
$$D_{n+1} = F_n F_{n+2} - F_{n+1}^{2} .$$

*On remplace $F_{n+2}$.* Par définition de la suite, $F_{n+2} = F_{n+1} + F_n$, donc
$$D_{n+1} = F_n\left(F_{n+1} + F_n\right) - F_{n+1}^{2} = F_n F_{n+1} + F_n^{2} - F_{n+1}^{2} .$$

*On regroupe autrement.* Mettons $F_{n+1}$ en facteur dans le premier et le dernier terme :
$$D_{n+1} = F_{n+1}\left(F_n - F_{n+1}\right) + F_n^{2} .$$

*On fait apparaître $F_{n-1}$.* La relation $F_{n+1} = F_n + F_{n-1}$ donne $F_n - F_{n+1} = -F_{n-1}$. Donc
$$D_{n+1} = -F_{n+1} F_{n-1} + F_n^{2} = -\left(F_{n-1} F_{n+1} - F_n^{2}\right) = -D_n .$$

*On conclut le pas.* Avec l'hypothèse de récurrence,
$$D_{n+1} = -(-1)^n = (-1)^{n+1},$$
donc $P(n+1)$ est vraie.

**Conclusion.** Par récurrence, pour tout entier $n \geqslant 1$ :
$$\boxed{F_{n-1} F_{n+1} - F_n^{2} = (-1)^n .}$$

**Ce que cela raconte.** Le produit des deux voisins de $F_n$ rate le carré de $F_n$ d'exactement une unité, en trop ou en moins selon la parité de $n$. Par exemple $F_9 = 34$ et $F_8 \times F_{10} = 21 \times 55 = 1155 = 34^2 - 1$.

## Going further

1. Démontre de la même manière que $F_0^{2} + F_1^{2} + \cdots + F_n^{2} = F_n F_{n+1}$.
2. Le célèbre « puzzle du carré disparu » découpe un carré $8 \times 8$ en quatre morceaux que l'on réassemble en un rectangle $5 \times 13$, d'aire $65$ au lieu de $64$. Explique le lien avec l'identité démontrée ici, en remarquant que $5$, $8$ et $13$ sont trois termes consécutifs de la suite.
3. Montre que deux termes consécutifs de la suite de Fibonacci sont toujours premiers entre eux. (Indication : un diviseur commun de $F_n$ et $F_{n+1}$ divise aussi $F_{n-1}$.)
