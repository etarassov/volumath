---
id: "8403"
title: "Les diviseurs pairs l'emportent"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [diviseurs, parite, multiples, somme, appariement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, Coupe Animath de printemps 2021"
  reference: "Poly-2021-Valbonne.pdf, « Coupe Animath de printemps 2021 », exercice 4 (collège) et exercice 11 (lycée), énoncés identiques"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Aline choisit un entier $n$ qui est un multiple de $2020$. Elle écrit ensuite au tableau **tous** les diviseurs $d$ de $n$ tels que $1 \leqslant d < n$, autrement dit tous les diviseurs de $n$ sauf $n$ lui-même.

Montrer que la somme des nombres impairs écrits au tableau est strictement plus petite que la somme des nombres pairs écrits au tableau.

## Hints

1. Commence par un exemple : prends $n = 2020$, écris la liste de ses diviseurs, sépare les impairs des pairs et compare les deux sommes.
2. Dans ton exemple, essaie d'associer à chaque diviseur impair un diviseur pair du tableau, de façon que deux impairs différents donnent deux pairs différents.
3. Le candidat naturel est $2d$. Reste à vérifier deux choses : que $2d$ divise bien $n$, et que $2d$ est bien strictement plus petit que $n$.
4. $2020 = 4 \times 505$, donc $n$ est un multiple de $4$. Écris $n = d \times q$ avec $d$ impair, et montre que $q$ est forcément un multiple de $4$.

## Solution

**Étape 1. L'entier $n$ est un multiple de $4$.**

On a $2020 = 4 \times 505$. Comme $n$ est un multiple de $2020$, il s'écrit $n = 2020 \times k$, donc

$$n = 4 \times (505 \, k).$$

L'entier $n$ est donc un multiple de $4$. En particulier $n$ est pair, donc $n$ n'est pas un diviseur impair de lui-même : **tous** les diviseurs impairs de $n$ sont strictement plus petits que $n$, et sont donc écrits au tableau.

**Étape 2. Si $d$ est un diviseur impair de $n$, alors $4d$ divise $n$.**

Écrivons $n = d \times q$. Regardons ce que peut être $q$.

- Si $q$ était impair, alors $n = d \times q$ serait un produit de deux nombres impairs, donc impair. Or $n$ est pair : impossible.
- Si $q$ s'écrivait $q = 2 \times m$ avec $m$ impair, alors $n = 2 \times d \times m$ serait deux fois un nombre impair, donc pair mais **pas** multiple de $4$. Or $n$ est multiple de $4$ : impossible.

Il ne reste qu'une possibilité : $q$ est un multiple de $4$. Écrivons $q = 4q'$. Alors

$$n = d \times 4 q' = 4d \times q',$$

donc $4d$ divise $n$.

**Étape 3. Le nombre $2d$ est écrit au tableau, et il est pair.**

Puisque $4d$ divise $n$ et que $2d$ divise $4d$, le nombre $2d$ divise $n$.

De plus $n = 2d \times (2q')$ avec $2q' \geqslant 2$, donc

$$2d = \frac{n}{2q'} \leqslant \frac{n}{2} < n.$$

Donc $2d$ vérifie $1 \leqslant 2d < n$ : il est bien écrit au tableau. Et il est pair.

**Étape 4. Conclure.**

Notons $I$ la somme des nombres impairs du tableau et $P$ la somme des nombres pairs du tableau.

À chaque nombre impair $d$ du tableau, l'étape 3 associe le nombre pair $2d$, lui aussi au tableau. Deux nombres impairs différents $d \neq d'$ donnent deux nombres pairs différents $2d \neq 2d'$ : on ne compte donc jamais deux fois le même nombre pair. La somme $P$ contient donc, entre autres, tous les nombres $2d$, c'est-à-dire le double de chacun des nombres impairs du tableau :

$$P \geqslant 2I.$$

Enfin $1$ est un diviseur impair de $n$ et $1 < n$, donc $1$ est au tableau et $I \geqslant 1$, en particulier $I > 0$. On en déduit

$$P \geqslant 2I > I.$$

La somme des nombres pairs écrits au tableau est donc bien strictement plus grande que la somme des nombres impairs.

## Going further

Vérifions sur $n = 2020$. Ses diviseurs autres que lui-même sont

$$1, \; 2, \; 4, \; 5, \; 10, \; 20, \; 101, \; 202, \; 404, \; 505, \; 1010.$$

Les impairs sont $1$, $5$, $101$ et $505$, de somme $612$. Les pairs sont $2$, $10$, $202$, $1010$, $4$, $20$, $404$, de somme $1652$. On a bien $1652 > 2 \times 612 = 1224$.

On voit au passage que la démonstration donne mieux que demandé : la somme des pairs est au moins **deux fois** celle des impairs.
