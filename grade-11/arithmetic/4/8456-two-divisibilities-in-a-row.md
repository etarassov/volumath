---
id: "8456"
title: "Deux divisibilités qui se suivent"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [divisibilite, premiers-entre-eux, entiers-consecutifs, majoration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Factorisation et divisibilité » (Antoine Derimay), exercice 7"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Trouver tous les entiers naturels $n$ tels que, **en même temps**,

$$n + 2009 \mid n^2 + 2009 \qquad \text{et} \qquad n + 2010 \mid n^2 + 2010.$$

## Hints

1. Prends d'abord une seule des deux conditions, disons la première. Peux-tu remplacer $n^2 + 2009$ par quelque chose de plus simple que $n + 2009$ doit encore diviser ?
2. Soustrais $n + 2009$ de $n^2 + 2009$. Le nombre obtenu ne dépend plus de $2009$ ! Refais le même calcul avec la deuxième condition.
3. Tu obtiens deux divisibilités du **même** nombre. Que peux-tu dire de $n+2009$ et $n+2010$ l'un par rapport à l'autre ?
4. Deux entiers consécutifs sont premiers entre eux. Si deux nombres premiers entre eux divisent chacun un entier $N$, alors leur produit divise $N$. Compare ensuite les tailles.

## Solution

### Étape 1. Simplifier chaque condition

Commençons par la première. On a

$$\left(n^2 + 2009\right) - \left(n + 2009\right) = n^2 - n.$$

Comme $n+2009$ divise $n^2+2009$ et se divise lui-même, il divise cette différence :

$$n + 2009 \mid n^2 - n.$$

Le même calcul avec la seconde condition donne

$$\left(n^2 + 2010\right) - \left(n + 2010\right) = n^2 - n, \qquad \text{donc} \qquad n + 2010 \mid n^2 - n.$$

Les deux conditions portent maintenant sur **le même** nombre $n^2 - n$, ce qui est la bonne surprise de l'exercice.

### Étape 2. Les deux diviseurs sont premiers entre eux

Les nombres $n + 2009$ et $n + 2010$ sont deux entiers consécutifs. Un diviseur commun des deux diviserait leur différence, qui vaut $1$ : ils sont donc **premiers entre eux**.

Or, quand deux entiers premiers entre eux divisent chacun un même entier $N$, leur produit divise $N$. Donc

$$(n + 2009)(n + 2010) \mid n^2 - n.$$

### Étape 3. La taille tranche

Comme $n$ est un entier naturel, le produit $(n+2009)(n+2010)$ est strictement positif, et

$$(n + 2009)(n + 2010) > n \times n = n^2 \geqslant n^2 - n.$$

Un diviseur strictement positif ne peut être plus grand que le nombre qu'il divise, **sauf si ce nombre est nul**. La seule possibilité est donc

$$n^2 - n = 0, \qquad \text{soit} \qquad n(n-1) = 0,$$

c'est-à-dire $n = 0$ ou $n = 1$.

### Étape 4. Vérification

- Pour $n = 0$ : $0 + 2009 = 2009$ divise $0 + 2009 = 2009$, et $0 + 2010 = 2010$ divise $0 + 2010 = 2010$. Les deux conditions sont satisfaites.
- Pour $n = 1$ : $1 + 2009 = 2010$ divise $1 + 2009 = 2010$, et $1 + 2010 = 2011$ divise $1 + 2010 = 2011$. Là aussi, tout va bien.

### Conclusion

$$\boxed{n = 0 \quad \text{et} \quad n = 1.}$$

## Going further

Le nombre $2009$ et le nombre $2010$ ne jouent presque aucun rôle. Reprends la démonstration avec deux entiers consécutifs $k$ et $k+1$ quelconques, tous deux strictement positifs : tu obtiendras exactement les mêmes solutions $n = 0$ et $n = 1$, dès que $k$ est assez grand pour que $(n+k)(n+k+1) > n^2$, ce qui est immédiat.

Le point technique à retenir est celui de l'étape 2 : **si $a$ et $b$ sont premiers entre eux et divisent tous deux $N$, alors $ab$ divise $N$.** L'hypothèse « premiers entre eux » est indispensable. Par exemple $4$ et $6$ divisent tous deux $12$, mais $4 \times 6 = 24$ ne divise pas $12$ ; ici c'est le PPCM, qui vaut $12$, qui divise $N$, et il ne coïncide avec le produit que lorsque les deux nombres n'ont aucun facteur commun.
