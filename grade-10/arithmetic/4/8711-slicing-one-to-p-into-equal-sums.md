---
id: "8711"
title: "Découper 1, 2, …, p en tranches de même somme"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [nombres-premiers, divisibilite, somme-des-entiers, analyse-synthese]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024"
  reference: "poly_valbonne_2024.pdf, Coupe Animath de printemps 2024, exercices lycéens, exercice 12"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

On écrit au tableau les entiers $1, 2, 3, \ldots, p$, dans cet ordre, où $p$ est un nombre premier.

On voudrait les séparer en **plusieurs** tranches d'entiers consécutifs, de façon que toutes les tranches aient la même somme. Par exemple, pour $p = 3$, les tranches $\{1, 2\}$ et $\{3\}$ ont toutes les deux pour somme $3$.

Déterminer tous les nombres premiers $p$ pour lesquels c'est possible.

*« Plusieurs » veut dire au moins deux. Une tranche est un bloc d'entiers qui se suivent : on coupe la liste $1, 2, \ldots, p$ en morceaux sans la mélanger.*

## Hints

1. Essaie à la main avec $p = 2$, $p = 3$, $p = 5$, $p = 7$. Tu conjectureras vite la réponse.
2. Note $g$ le nombre de tranches et $S$ leur somme commune. Que vaut $g \times S$ ?
3. Pourquoi a-t-on forcément $g < p$ ? Regarde ce qui se passerait avec $p$ tranches.
4. Le nombre $p$ est premier et ne divise pas $g$. Que peux-tu en déduire sur $S$ ?
5. La **première** tranche est toujours de la forme $\{1, 2, \ldots, k\}$. Sa somme se calcule avec une formule que tu connais. Combine-la avec ce que tu sais de $S$.

## Solution

**Réponse : $p = 3$ est le seul.**

### Le cas $p = 2$

Les entiers écrits sont $1$ et $2$. La seule façon de les couper en au moins deux tranches est $\{1\}$ et $\{2\}$, de sommes $1$ et $2$, qui ne sont pas égales. Donc $p = 2$ ne convient pas.

On suppose désormais $p \geqslant 3$, donc $p$ impair.

### Analyse : si $p$ convient, alors $p = 3$

Supposons que le découpage existe. Notons $g$ le nombre de tranches (donc $g \geqslant 2$) et $S$ la somme commune de chaque tranche.

**Première relation.** En additionnant les sommes des $g$ tranches, on retrouve la somme de tous les entiers de $1$ à $p$ :

$$g \times S = 1 + 2 + \cdots + p = \frac{p(p+1)}{2} .$$

Comme $p$ est impair, $p+1$ est pair, donc $\dfrac{p+1}{2}$ est un entier, et on peut écrire

$$g \times S = p \times \frac{p+1}{2} .$$

Donc **$p$ divise $g \times S$**.

**Deuxième relation : $g < p$.** Il y a $p$ entiers et $g$ tranches non vides, donc $g \leqslant p$. Le cas $g = p$ voudrait dire que chaque tranche contient exactement un entier : les tranches seraient $\{1\}, \{2\}, \ldots, \{p\}$, de sommes $1, 2, \ldots, p$, qui ne sont pas toutes égales puisque $p \geqslant 3$. Donc

$$2 \leqslant g < p .$$

**Troisième relation : $p$ divise $S$.** Le nombre $p$ est premier et $p$ divise $g \times S$. Un nombre premier qui divise un produit divise l'un des deux facteurs. Or $p$ ne divise pas $g$, puisque $1 \leqslant g < p$. Donc

$$p \text{ divise } S .$$

**On regarde la première tranche.** Le découpage se fait sans mélanger, donc la première tranche est $\{1, 2, \ldots, k\}$ pour un certain entier $k$ avec $1 \leqslant k < p$ (elle ne contient pas tout, sinon il n'y aurait qu'une tranche). Sa somme vaut

$$S = 1 + 2 + \cdots + k = \frac{k(k+1)}{2} .$$

Comme $p$ divise $S$, il divise aussi $2S = k(k+1)$. De nouveau, $p$ est premier, donc $p$ divise $k$ ou $p$ divise $k+1$.

- $p$ ne peut pas diviser $k$, car $1 \leqslant k < p$.
- Donc $p$ divise $k+1$. Or $2 \leqslant k+1 \leqslant p$, et le seul multiple de $p$ dans cet intervalle est $p$ lui-même. Donc $k+1 = p$, c'est-à-dire

$$k = p - 1 .$$

**Il ne reste qu'une tranche à placer.** La première tranche est donc $\{1, 2, \ldots, p-1\}$, et il ne reste que l'entier $p$ : la deuxième et dernière tranche est $\{p\}$. Les deux sommes doivent être égales :

$$\frac{(p-1)p}{2} = p .$$

En divisant par $p$ (qui n'est pas nul) : $\dfrac{p-1}{2} = 1$, donc $p - 1 = 2$, donc

$$p = 3 .$$

### Synthèse : $p = 3$ convient bien

Pour $p = 3$, le découpage $\{1, 2\}$ et $\{3\}$ donne deux tranches de somme $3$ chacune. Cela marche.

### Conclusion

Le seul nombre premier qui convient est $\boxed{p = 3}$.

## Going further

1. Les deux étapes du raisonnement sont indispensables et souvent confondues. L'analyse dit : « si un découpage existe, alors $p = 3$ ». La synthèse dit : « pour $p = 3$, un découpage existe ». Sans la synthèse, on n'aurait démontré que ceci : *aucun premier autre que $3$ ne convient*, sans savoir si $3$ convient. Des copies ont perdu un point pour cette omission.

2. Et si $p$ n'est plus supposé premier ? Trouve tous les entiers $n \geqslant 2$ tels que $1, 2, \ldots, n$ se découpe en au moins deux tranches consécutives de même somme. Commence par $n = 4$, $n = 6$, $n = 8$, $n = 9$.

3. Et si on autorise des **groupes quelconques** au lieu de tranches consécutives ? Pour quels $n$ peut-on répartir $1, 2, \ldots, n$ en trois groupes de même somme ?
