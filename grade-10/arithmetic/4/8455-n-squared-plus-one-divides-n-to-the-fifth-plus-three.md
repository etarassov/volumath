---
id: "8455"
title: "Quand n² + 1 divise n⁵ + 3"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [divisibilite, factorisation, majoration, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Factorisation et divisibilité » (Antoine Derimay), exercice 6"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Trouver tous les entiers naturels $n$ tels que $n^2 + 1$ divise $n^5 + 3$.

## Hints

1. Teste les premières valeurs $n = 0, 1, 2, 3, 4$ pour deviner la réponse.
2. Le but est de remplacer $n^5 + 3$ par un nombre beaucoup plus petit que $n^2+1$ doit encore diviser. Cherche d'abord un multiple **évident** de $n^2+1$ qui ressemble à $n^5$.
3. Utilise l'identité $n^4 - 1 = (n^2 - 1)(n^2 + 1)$. Que vaut $n(n^4 - 1)$ ?
4. Tu obtiens que $n^2 + 1$ divise $n + 3$. Compare la taille de ces deux nombres quand $n$ devient grand.

## Solution

### Étape 1. Fabriquer un multiple de $n^2+1$

L'identité remarquable $a^2 - b^2 = (a-b)(a+b)$, appliquée à $a = n^2$ et $b = 1$, donne

$$n^4 - 1 = (n^2 - 1)(n^2 + 1).$$

En multipliant par $n$ :

$$n^5 - n = n(n^2 - 1)(n^2 + 1).$$

Le nombre $n^5 - n$ est donc **toujours** un multiple de $n^2 + 1$, quel que soit $n$.

### Étape 2. Réduire la taille

Supposons que $n^2 + 1$ divise $n^5 + 3$. Comme il divise aussi $n^5 - n$, il divise leur différence :

$$\left(n^5 + 3\right) - \left(n^5 - n\right) = n + 3.$$

Donc

$$n^2 + 1 \mid n + 3.$$

### Étape 3. Comparer les tailles

Le nombre $n + 3$ est strictement positif, donc son diviseur $n^2+1$ ne peut pas le dépasser :

$$n^2 + 1 \leqslant n + 3, \qquad \text{c'est-à-dire} \qquad n^2 - n - 2 \leqslant 0.$$

Or $n^2 - n - 2 = (n-2)(n+1)$. Pour $n$ entier naturel, le facteur $n + 1$ est strictement positif, donc l'inégalité équivaut à $n - 2 \leqslant 0$, soit

$$n \leqslant 2.$$

### Étape 4. Vérifier les trois candidats

| $n$ | $n^2 + 1$ | $n^5 + 3$ | divise ? |
|---|---|---|---|
| $0$ | $1$ | $3$ | oui |
| $1$ | $2$ | $4$ | oui |
| $2$ | $5$ | $35$ | oui |

Les trois conviennent.

### Conclusion

$$\boxed{n = 0, \quad n = 1, \quad n = 2.}$$

## Going further

Le cœur de l'exercice est l'étape 1, où l'on fabrique un multiple de $n^2+1$ du même degré que $n^5$. Il y a une façon systématique de le faire : effectuer la **division euclidienne des polynômes**. En divisant $n^5 + 3$ par $n^2 + 1$, on trouve

$$n^5 + 3 = \left(n^2 + 1\right)\left(n^3 - n\right) + (n + 3),$$

et le reste $n+3$ est exactement ce que l'on a obtenu à l'étape 2. On peut vérifier ce calcul en développant.

La méthode est donc générale : pour savoir quand $P(n)$ divise $Q(n)$, on divise $Q$ par $P$ et l'on regarde le reste, qui est de degré plus petit que $P$. Ce reste finit par être plus petit que $P(n)$ dès que $n$ grandit, ce qui ne laisse qu'un nombre fini de cas à tester.
