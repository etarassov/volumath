---
id: "8820"
title: "Trois nombres premiers dont les écarts sont premiers"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [nombres premiers, parite, divisibilite par 3, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Arithmétique : Nombres premiers » (Anatole et Martin), exercice 19, p. 58 (la solution imprimée annonce « (2,5,7) et ses permutations », alors que l'énoncé impose p < q < r : le triplet est unique)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Trouver tous les triplets $(p, q, r)$ de nombres premiers tels que
$$p < q < r$$
et que les trois écarts
$$q - p, \qquad r - q, \qquad r - p$$
soient eux aussi des nombres premiers.

## Hints

1. Que se passe-t-il si $p$, $q$ et $r$ sont tous impairs ? Regarde alors la parité des trois écarts.
2. Un nombre pair qui est premier vaut forcément $2$. Si les trois écarts sont pairs et premiers, ils valent tous $2$ ; le troisième écart pose alors problème. Lequel ?
3. Tu obtiens donc que l'un des trois nombres est pair, donc vaut $2$, et comme il est le plus petit, c'est $p$.
4. Il reste $q$ et $r$ impairs. L'écart $r-q$ est pair et premier : il vaut $2$. Que dire alors des trois nombres $q-2$, $q$, $q+2$ ?

## Solution

### Étape 1 : $p = 2$

Supposons d'abord que $p$, $q$ et $r$ soient **tous impairs**. La différence de deux nombres impairs est paire, donc $q-p$, $r-q$ et $r-p$ sont tous pairs. Mais l'énoncé dit qu'ils sont premiers, et le seul nombre premier pair est $2$. Donc
$$q - p = 2, \qquad r - q = 2, \qquad r - p = 2 .$$
C'est contradictoire : les deux premières donnent $r - p = (r-q) + (q-p) = 4$, alors que la troisième donne $2$. (Et de toute façon $4$ n'est pas premier.)

Donc l'un au moins de $p$, $q$, $r$ est pair, donc vaut $2$, puisqu'il est premier. Comme $p < q < r$, le plus petit est $p$ :
$$p = 2 .$$

### Étape 2 : $r = q + 2$

Les nombres $q$ et $r$ sont des premiers strictement plus grands que $2$, donc impairs. Leur différence $r - q$ est paire et première, donc
$$r - q = 2, \qquad \text{c'est-à-dire} \qquad r = q + 2 .$$

### Étape 3 : trois premiers espacés de 2

Il reste deux conditions à satisfaire :
$$q - p = q - 2 \quad \text{premier} \qquad \text{et} \qquad r - p = q \quad \text{premier (déjà vrai)}.$$

Donc les trois nombres
$$q - 2, \qquad q, \qquad q + 2$$
sont tous premiers ($q+2 = r$ l'est par hypothèse).

Or, parmi trois nombres espacés de $2$, exactement un est divisible par $3$ : en effet $q-2$ et $q+1$ ont le même reste modulo $3$, donc les restes de $q-2$, $q$, $q+2$ sont ceux de $q+1$, $q$, $q+2$, c'est-à-dire les restes de trois entiers consécutifs, qui sont $0$, $1$ et $2$ dans un certain ordre.

Celui des trois qui est divisible par $3$ est premier, donc vaut $3$. Comme $q - 2 < q < q+2$ et que tous sont des nombres premiers (donc $\geqslant 2$), le seul choix possible est $q - 2 = 3$, car :

- si $q = 3$ alors $q-2 = 1$, qui n'est pas premier ;
- si $q+2 = 3$ alors $q = 1$, qui n'est pas premier.

Donc $q - 2 = 3$, d'où $q = 5$ et $r = 7$.

### Vérification

Le triplet candidat est $(p, q, r) = (2, 5, 7)$. On a bien $2 < 5 < 7$, ces trois nombres sont premiers, et
$$q - p = 3, \qquad r - q = 2, \qquad r - p = 5 ,$$
qui sont tous les trois premiers.

**Conclusion.** Le seul triplet est
$$\boxed{(p, q, r) = (2, 5, 7)} .$$

## Going further

Trouver tous les quadruplets $(p, q, r, s)$ de nombres premiers avec $p < q < r < s$ tels que les six écarts entre deux d'entre eux soient tous premiers. (Indication : il n'y en a aucun ; pourquoi ?)
