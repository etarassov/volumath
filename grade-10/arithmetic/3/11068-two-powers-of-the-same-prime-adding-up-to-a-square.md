---
id: "11068"
title: "Deux puissances d'un même nombre premier dont la somme est un carré"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [nombres-premiers, carre-parfait, decomposition-en-facteurs-premiers, factorisation, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 3 (arithmétique)"
  reference: "2025-01_Sujet-envoi-3-2024-2025.pdf, Exercices Juniors, exercice 4 ; corrigé 2025-03_Corrige-envoi-3-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Sujet-envoi-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-01_Sujet-envoi-3-2024-2025.pdf"
---

## Statement

Trouver tous les triplets $(p, q, r)$ de nombres premiers tels que $p^q + p^r$ soit un carré parfait.

## Hints

1. Commence par le cas $q = r$ : quand $2p^q$ est-il un carré ?
2. Si $q < r$, mets $p^q$ en facteur. Le nombre $1 + p^{r - q}$ est-il divisible par $p$ ? Combien de fois le facteur $p$ apparaît-il alors dans la décomposition du carré ?
3. Tu dois arriver à $q = 2$ et à $p^{r-2} = m^2 - 1$. Factorise $m^2 - 1$ : les deux facteurs sont des puissances de $p$ qui diffèrent de $2$.

## Solution

**Réponse :** les triplets $(2, q, q)$ où $q$ est un nombre premier impair, et les quatre triplets $(2, 2, 5)$, $(2, 5, 2)$, $(3, 2, 3)$, $(3, 3, 2)$.

**L'outil.** Un entier $N \geqslant 1$ est un carré parfait si et seulement si, dans sa décomposition en facteurs premiers, chaque nombre premier apparaît avec un exposant pair. En effet, élever au carré double tous les exposants.

Soit $(p, q, r)$ une solution, et $k \geqslant 1$ l'entier tel que $p^q + p^r = k^2$. Les rôles de $q$ et $r$ sont symétriques, donc on peut supposer $q \leqslant r$, quitte à échanger les deux à la fin.

**Premier cas : $q = r$.** Alors $k^2 = 2p^q$.

- Si $p$ est impair, le nombre premier $2$ apparaît dans $2p^q$ avec l'exposant $1$, qui est impair : ce n'est pas un carré.
- Donc $p = 2$, et $k^2 = 2^{q+1}$. C'est un carré si et seulement si $q + 1$ est pair, c'est-à-dire si $q$ est impair.

Réciproquement, si $q$ est un nombre premier impair, $2^q + 2^q = 2^{q+1} = \left(2^{(q+1)/2}\right)^2$ est bien un carré. On obtient les triplets $(2, q, q)$ avec $q$ premier impair. (Le triplet $(2, 2, 2)$ ne convient pas : $4 + 4 = 8$.)

**Second cas : $q < r$.** On factorise :
$$k^2 = p^q \left(1 + p^{r - q}\right).$$
Comme $r - q \geqslant 1$, le nombre $1 + p^{r - q}$ est un multiple de $p$ plus $1$ : il n'est pas divisible par $p$. Dans la décomposition de $k^2$, le nombre premier $p$ apparaît donc avec l'exposant $q$ exactement. Cet exposant doit être pair, et le seul nombre premier pair est $2$, donc $q = 2$.

Alors $p^2$ divise $k^2$, donc $p$ divise $k$ (car $p$ est premier). Écrivons $k = pm$ : en divisant par $p^2$, on obtient $m^2 = 1 + p^{r-2}$, c'est-à-dire
$$p^{r-2} = m^2 - 1 = (m - 1)(m + 1).$$
Ici $r - 2 \geqslant 1$ et $m \geqslant 2$. Les nombres $m - 1$ et $m + 1$ sont des diviseurs positifs de $p^{r-2}$, donc ce sont des puissances de $p$ : $m - 1 = p^i$ et $m + 1 = p^j$ avec $0 \leqslant i < j$. Leur différence vaut $p^j - p^i = 2$.

- Si $i \geqslant 1$, alors $p$ divise $p^j - p^i = 2$, donc $p = 2$. De $2^j - 2^i = 2$ on tire $i = 1$ et $j = 2$ (car $2^i$ divise $2$). Alors $m = 3$, $2^{r-2} = 8$, et $r = 5$.
- Si $i = 0$, alors $m = 2$ et $m + 1 = 3 = p^j$, donc $p = 3$. Alors $3^{r-2} = 3$, et $r = 3$.

On trouve $(2, 2, 5)$ et $(3, 2, 3)$, qui conviennent : $2^2 + 2^5 = 4 + 32 = 36 = 6^2$ et $3^2 + 3^3 = 9 + 27 = 36 = 6^2$.

**Conclusion.** En ajoutant les triplets obtenus en échangeant $q$ et $r$, les solutions sont les $(2, q, q)$ avec $q$ premier impair, et $(2, 2, 5)$, $(2, 5, 2)$, $(3, 2, 3)$, $(3, 3, 2)$.

## Going further

Trouver tous les couples $(a, b)$ d'entiers naturels, avec $a \leqslant b$, tels que $2^a + 2^b$ soit un carré parfait.

*Réponse :* les couples $(a, a)$ avec $a$ impair, et les couples $(a, a + 3)$ avec $a$ pair, par exemple $1 + 8 = 9$ et $4 + 32 = 36$. La méthode est la même : si $a < b$, l'exposant de $2$ vaut $a$, donc $a$ est pair, et $1 + 2^{b-a} = m^2$ force $2^{b-a} = (m-1)(m+1) = 2 \times 4$.
