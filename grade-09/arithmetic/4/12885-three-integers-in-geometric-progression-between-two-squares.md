---
id: "12885"
title: "Trois entiers en progression géométrique entre deux carrés"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [suite-geometrique, carres, encadrement, entiers, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 19 et 20 février 2025"
  reference: "2025-10_Sujet-Test-3-2024-2025.pdf, test EGMO, exercice 9 ; corrigé 2025-10_Corrige-Test-3-2024-2025.pdf (on suit la solution alternative n° 1, sans fractions irréductibles)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-3-2024-2025.pdf"
---

## Statement

On dit que trois nombres $a < b < c$ sont **en progression géométrique** s'il existe un nombre $k$ tel que $b = ka$ et $c = kb$. Par exemple, $4$, $6$, $9$ sont en progression géométrique, avec $k = 3/2$.

Soit $n \geq 1$ un entier. Déterminer tous les triplets $(a, b, c)$ d'entiers en progression géométrique dont les trois nombres sont dans l'ensemble $\{n^2,\, n^2 + 1,\, \ldots,\, (n + 1)^2\}$.

## Hints

1. Cherchez les triplets pour $n = 1$, $n = 2$ et $n = 3$. Conjecturez la réponse.
2. Montrez que $b^2 = ac$, puis que $a(c - b) = b(b - a)$.
3. Posez $d = b - a$. Montrez que $c - b \geq d + 1$, puis que $d^2 \geq a$.
4. Comparez $c - a$ avec $(n + 1)^2 - n^2 = 2n + 1$.

## Solution

La réponse : **il y a un seul triplet, $(a, b, c) = (n^2,\; n(n + 1),\; (n + 1)^2)$.**

### Ce triplet convient

Les trois nombres $n^2 < n^2 + n < n^2 + 2n + 1$ sont bien dans l'ensemble. Avec $k = (n + 1)/n$, on a $k \times n^2 = n(n + 1)$ et $k \times n(n + 1) = (n + 1)^2$.

### Une égalité entre entiers

Soit $(a, b, c)$ un triplet qui convient, et $k$ tel que $b = ka$ et $c = kb$. Les nombres sont positifs et $a < b$, donc $k = b/a > 1$. On a

$$ac = a \times k^2 a = (ka)^2 = b^2.$$

En retranchant $ab$ des deux membres, $ac - ab = b^2 - ab$, c'est-à-dire

$$a(c - b) = b(b - a).$$

### Les écarts

On pose $d = b - a$, qui est un entier au moins égal à $1$. L'égalité précédente donne

$$c - b = \frac{b}{a} \times d.$$

Comme $b > a$, le quotient $b/a$ est plus grand que $1$, donc $c - b > d$. Comme $c - b$ et $d$ sont des entiers, $c - b \geq d + 1$.

On remplace dans l'égalité $b \times d = a(c - b)$ :

$$b\,d = a(c - b) \geq a(d + 1) = a\,d + a.$$

Donc $(b - a)\,d \geq a$, c'est-à-dire $d^2 \geq a$. Comme $a \geq n^2$, on obtient $d^2 \geq n^2$, et donc $d \geq n$, puisque $d$ et $n$ sont positifs.

### Tout est serré

D'une part, $a$ et $c$ sont dans l'ensemble, donc $c - a \leq (n + 1)^2 - n^2 = 2n + 1$. D'autre part,

$$c - a = (c - b) + (b - a) \geq (d + 1) + d = 2d + 1 \geq 2n + 1.$$

Donc $c - a = 2n + 1$, et toutes les inégalités sont des égalités :

- $c - a = (n + 1)^2 - n^2$ force $a = n^2$ et $c = (n + 1)^2$, puisque $n^2 \leq a$ et $c \leq (n + 1)^2$ ;
- $2d + 1 = 2n + 1$ force $d = n$, donc $b = a + d = n^2 + n = n(n + 1)$.

### Conclusion

**Le seul triplet est $(n^2,\; n(n + 1),\; (n + 1)^2)$.**

## Going further

1. Dans l'ensemble $\{n^2, \ldots, (n + 1)^2\}$, combien y a-t-il de triplets d'entiers $a < b < c$ en progression arithmétique, c'est-à-dire tels que $b - a = c - b$ ?
2. Montrez que, pour $n \geq 1$, il n'existe aucun triplet d'entiers en progression géométrique dans l'ensemble $\{n^2 + 1, \ldots, (n + 1)^2\}$.
