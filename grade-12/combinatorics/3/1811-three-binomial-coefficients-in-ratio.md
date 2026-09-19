---
id: "1811"
title: "Trois coefficients binomiaux dans le rapport 5 : 5 : 3"
grade: 12
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [coefficients-binomiaux, factorielles, triangle-de-pascal, equation]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Combinations and Pascal's Triangle"
  reference: "Handout-1765-1624.pdf, exercice 3 (corrigé dans Handout-1771-1631.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1765-1624.pdf"
---

## Statement

Trouver les entiers $n$ et $m$ tels que les trois coefficients binomiaux

$$\binom{n+1}{m+1}, \qquad \binom{n+1}{m}, \qquad \binom{n+1}{m-1}$$

soient, dans cet ordre, proportionnels à $5$, $5$ et $3$.

Autrement dit :

$$\binom{n+1}{m+1} : \binom{n+1}{m} : \binom{n+1}{m-1} = 5 : 5 : 3.$$

## Hints

1. Ces trois nombres sont trois cases voisines d'une même ligne du triangle de Pascal. Pose $N = n+1$ pour alléger : il s'agit de $\binom{N}{m+1}$, $\binom{N}{m}$ et $\binom{N}{m-1}$.
2. Traite les deux rapports séparément. Le premier rapport vaut $5 : 5$, c'est-à-dire $1$.
3. Deux coefficients voisins d'une même ligne sont égaux : quand cela arrive-t-il ? Pense à la symétrie $\binom{N}{k} = \binom{N}{N-k}$, ou bien passe par les factorielles.
4. Pour le second rapport, calcule $\dfrac{\binom{N}{m}}{\binom{N}{m-1}}$ en écrivant les factorielles : presque tout se simplifie et il ne reste qu'une fraction très simple.
5. Tu obtiens deux équations à deux inconnues. Résous, puis vérifie ta réponse sur le triangle de Pascal.

## Solution

Posons $N = n+1$ pour alléger l'écriture. On cherche $N$ et $m$ tels que

$$\binom{N}{m+1} : \binom{N}{m} : \binom{N}{m-1} = 5 : 5 : 3.$$

**Première équation : le rapport $5 : 5$.**

Il dit que $\binom{N}{m+1} = \binom{N}{m}$. Écrivons ces deux nombres avec des factorielles :

$$\frac{N!}{(m+1)!\,(N-m-1)!} = \frac{N!}{m!\,(N-m)!}.$$

On simplifie par $N!$ et on met en croix :

$$m!\,(N-m)! = (m+1)!\,(N-m-1)!.$$

Or $(m+1)! = (m+1) \times m!$ et $(N-m)! = (N-m) \times (N-m-1)!$. En simplifiant par $m!\,(N-m-1)!$ il reste

$$N - m = m+1, \qquad \text{c'est-à-dire} \qquad N = 2m+1.$$

*Autre façon de voir :* deux coefficients binomiaux voisins d'une même ligne sont égaux seulement au milieu de la ligne, quand $m+1 = N-m$.

**Deuxième équation : le rapport $5 : 3$.**

Calculons d'abord le rapport de deux coefficients voisins en général :

$$\frac{\binom{N}{m}}{\binom{N}{m-1}} = \frac{N!}{m!\,(N-m)!} \times \frac{(m-1)!\,(N-m+1)!}{N!} = \frac{(m-1)!}{m!} \times \frac{(N-m+1)!}{(N-m)!} = \frac{N-m+1}{m}.$$

L'énoncé impose que ce rapport vaille $\dfrac{5}{3}$ :

$$\frac{N-m+1}{m} = \frac{5}{3}, \qquad \text{soit} \qquad 3(N-m+1) = 5m.$$

**Résolution.**

Remplaçons $N$ par $2m+1$ :

$$3(2m + 1 - m + 1) = 5m \iff 3(m+2) = 5m \iff 3m + 6 = 5m \iff 2m = 6 \iff m = 3.$$

Alors $N = 2 \times 3 + 1 = 7$, donc $n = N - 1 = 6$.

**Vérification.**

La ligne $N = 7$ du triangle de Pascal est

$$1,\quad 7,\quad 21,\quad 35,\quad 35,\quad 21,\quad 7,\quad 1.$$

Avec $m = 3$ :

$$\binom{7}{4} = 35, \qquad \binom{7}{3} = 35, \qquad \binom{7}{2} = 21.$$

Et $35 : 35 : 21 = 5 : 5 : 3$, puisque $35 = 5 \times 7$ et $21 = 3 \times 7$.

**Conclusion.** $n = 6$ et $m = 3$.

## Going further

1. Trouve une ligne du triangle de Pascal où trois coefficients binomiaux voisins sont dans le rapport $1 : 2 : 3$. (Il en existe une ; reprends exactement la même méthode.)
2. Sur la ligne $N = 7$, les trois coefficients $7$, $21$, $35$ forment une suite arithmétique de raison $14$. Sur quelles autres lignes trois coefficients voisins forment-ils une suite arithmétique ? Cherche les premières, puis regarde la valeur de $N+2$.
