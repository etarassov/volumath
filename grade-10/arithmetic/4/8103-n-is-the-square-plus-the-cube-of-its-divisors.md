---
id: "8103"
title: "n est le carré et le cube de ses deux plus petits diviseurs"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [diviseurs, parite, equation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, Coupe Animath de printemps 2018"
  reference: "stage_ete_2018.pdf, chapitre II « Coupe Animath de printemps 2018 », énoncés destinés aux élèves de collège, exercice 3"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soit $n$ un entier naturel. On range ses diviseurs positifs dans l'ordre croissant :

$$1 = d_1 < d_2 < d_3 < \cdots < d_k = n.$$

On suppose que $n$ possède au moins trois diviseurs et que

$$n = d_2^{\,2} + d_3^{\,3}.$$

Autrement dit, $n$ est la somme du carré de son deuxième plus petit diviseur et du cube de son troisième plus petit diviseur.

Déterminer toutes les valeurs possibles de $n$.

## Hints

1. Commence par te demander si $n$ peut être impair.
2. Si $n$ est impair, tous ses diviseurs sont impairs. Que vaut alors la parité de $d_2^{\,2} + d_3^{\,3}$ ?
3. Tu obtiens donc que $n$ est pair, et il en découle tout de suite la valeur de $d_2$.
4. Maintenant regarde $d_3^{\,3} = n - 4$ : cet entier est pair, donc $d_3$ aussi. Écris $d_3 = 2m$.
5. L'entier $m$ divise $d_3$, qui divise $n$. Que peux-tu dire de $m$, sachant que $1 < m < d_3$ et que $d_2$ et $d_3$ sont les deux plus petits diviseurs de $n$ après $1$ ?

## Solution

**Étape 1 : $n$ est pair.**

Supposons un instant que $n$ soit impair. Alors aucun de ses diviseurs n'est pair : $d_2$ et $d_3$ sont impairs.

Le carré d'un nombre impair est impair, et le cube d'un nombre impair est impair aussi. Donc $d_2^{\,2}$ et $d_3^{\,3}$ sont tous deux impairs, et leur somme est paire. Mais cette somme vaut $n$, qui est impair. C'est impossible.

Donc $n$ est pair, et comme $2$ divise $n$, le plus petit diviseur de $n$ strictement supérieur à $1$ est $2$ :

$$d_2 = 2.$$

**Étape 2 : $d_3 = 4$.**

L'égalité de l'énoncé donne maintenant

$$d_3^{\,3} = n - d_2^{\,2} = n - 4.$$

Comme $n$ est pair, $n - 4$ est pair, donc $d_3^{\,3}$ est pair, donc $d_3$ est pair (le cube d'un impair est impair). Écrivons

$$d_3 = 2m, \qquad m \text{ entier}.$$

L'entier $m$ divise $d_3$, et $d_3$ divise $n$ : donc $m$ divise $n$.

Encadrons $m$. D'une part $m < 2m = d_3$. D'autre part $m > 1$ : si on avait $m = 1$, alors $d_3 = 2 = d_2$, ce qui est exclu puisque $d_2 < d_3$.

Ainsi $m$ est un diviseur de $n$ avec $1 < m < d_3$. Or les diviseurs de $n$ rangés dans l'ordre sont $1 < d_2 < d_3 < \cdots$ : le seul diviseur strictement compris entre $1$ et $d_3$ est $d_2 = 2$. Donc

$$m = 2 \qquad \text{et} \qquad d_3 = 4.$$

**Étape 3 : la valeur de $n$ et la vérification.**

$$n = d_2^{\,2} + d_3^{\,3} = 2^2 + 4^3 = 4 + 64 = 68.$$

Vérifions que cette valeur convient vraiment. Les diviseurs de $68 = 2^2 \times 17$ sont

$$1, \quad 2, \quad 4, \quad 17, \quad 34, \quad 68.$$

On a donc bien $d_2 = 2$ et $d_3 = 4$, et $2^2 + 4^3 = 68 = n$.

**La seule valeur possible est $\boxed{n = 68}$.**
