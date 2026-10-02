---
id: "5114"
title: "Neuf chiffres dont le produit vaut 9 factorielle"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [chiffres, produit, factorisation, nombres-premiers, maximum]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Place Value Problems », Harold Reiter"
  reference: "HReiterPlaceValueProblems.pdf, problème 28"
  url: "https://mathcircles.org/activity/place-value-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/HReiterPlaceValueProblems.pdf"
---

## Statement

On pose

$$9! = 1 \times 2 \times 3 \times 4 \times 5 \times 6 \times 7 \times 8 \times 9 = 362\,880$$

Quel est le plus grand nombre de neuf chiffres dont le produit des chiffres est égal à $9!$ ?

## Hints

1. Commence par décomposer $9!$ en produit de facteurs premiers.
2. Aucun chiffre ne peut valoir $0$. Et le facteur $7$ de la décomposition, d'où peut-il bien venir ?
3. Même question pour le facteur $5$. Combien de chiffres $7$ et combien de chiffres $5$ le nombre contient-il, exactement ?
4. Une fois le $7$ et le $5$ mis de côté, il reste sept chiffres dont le produit est une puissance de $2$ multipliée par une puissance de $3$. Quels chiffres peuvent encore servir ?
5. Pour que le nombre soit le plus grand possible, tu dois d'abord rendre son premier chiffre le plus grand possible, puis le deuxième, et ainsi de suite. Combien de chiffres $9$ peux-tu te permettre ?

## Solution

**Étape 1. La décomposition de $9!$.**

$$9! = 362\,880 = 2^{7} \times 3^{4} \times 5 \times 7$$

On peut le retrouver directement : dans le produit $1 \times 2 \times \cdots \times 9$, les facteurs $2$ viennent de $2$, $4 = 2^2$, $6 = 2 \times 3$ et $8 = 2^3$, soit $1 + 2 + 1 + 3 = 7$ facteurs $2$ ; les facteurs $3$ viennent de $3$, $6$ et $9 = 3^2$, soit $1 + 1 + 2 = 4$ facteurs $3$ ; enfin $5$ et $7$ apparaissent une fois chacun.

**Étape 2. Un chiffre $7$ et un chiffre $5$, ni plus ni moins.**

Aucun chiffre ne vaut $0$, sinon le produit serait nul.

Le nombre premier $7$ divise le produit des neuf chiffres. Comme $7$ est premier, il divise l'un des chiffres. Le seul chiffre non nul divisible par $7$ est $7$ lui-même. Donc **l'un des chiffres vaut $7$**. Et il n'y en a qu'un, car $7^2 = 49$ ne divise pas $9!$.

Le même argument avec $5$ : **l'un des chiffres vaut $5$**, et un seul.

**Étape 3. Ce qui reste.**

Une fois le $7$ et le $5$ retirés, il reste sept chiffres dont le produit vaut

$$\frac{9!}{35} = 2^{7} \times 3^{4} = 128 \times 81 = 10\,368$$

Ces sept chiffres ne peuvent donc être que $1$, $2$, $3$, $4$, $6$, $8$ ou $9$ (pas de $5$ ni de $7$ supplémentaires).

**Étape 4. On construit le plus grand nombre, chiffre par chiffre.**

Le nombre a exactement neuf chiffres. Pour qu'il soit le plus grand possible, on rend son premier chiffre le plus grand possible, puis le deuxième, et ainsi de suite.

*Combien de $9$ au plus ?* Chaque chiffre $9$ consomme $3^2$. Comme $9!$ ne contient que $3^4$, il ne peut y avoir **plus de deux chiffres $9$**.

*Deux $9$, est-ce possible ?* Oui : ils consomment exactement $3^4$, et il reste alors $2^7 = 128$ à répartir sur cinq chiffres pris dans $\{1, 2, 4, 8\}$ (plus le $7$ et le $5$ déjà réservés). Par exemple $8 \times 8 \times 2 \times 1 \times 1 = 128$. Les deux premiers chiffres sont donc $9$ et $9$.

*Le troisième chiffre.* Il ne peut plus valoir $9$ (il n'y a plus de $3$ disponibles, ni de $3$ ni de $6$ possibles), donc au mieux $8$. Et $8$ est possible, comme on vient de le voir.

*Le quatrième.* Après deux $9$ et un $8$, il reste $2^{4} = 16$ pour quatre chiffres, plus le $7$ et le $5$. Un deuxième $8$ est possible : $16 = 8 \times 2 \times 1 \times 1$.

*La suite.* Après $9$, $9$, $8$, $8$, il reste $2^{7} \div 64 = 2$ à répartir sur trois chiffres, en plus du $7$ et du $5$ obligatoires. Les cinq derniers chiffres sont donc $7$, $5$, $2$, $1$, $1$, qu'on range dans l'ordre décroissant.

**Conclusion. Le plus grand nombre cherché est**

$$998\,875\,211$$

Vérification : $9 \times 9 \times 8 \times 8 \times 7 \times 5 \times 2 \times 1 \times 1 = 362\,880 = 9!$.

## Going further

Cherche maintenant **le plus petit** nombre de neuf chiffres dont le produit des chiffres vaut $9!$. On applique la même méthode à l'envers : on rend le premier chiffre le plus petit possible, puis le deuxième, etc., en vérifiant à chaque fois qu'on peut encore finir. Attention, il ne suffit pas de mettre des $1$ au début : avec trois $1$ en tête, il resterait six chiffres dont quatre devraient avoir pour produit $2^7 \times 3^4 = 10\,368$, ce qui est plus grand que $9^4 = 6561$, donc impossible.

La réponse est $112\,578\,899$, c'est-à-dire exactement $998\,875\,211$ lu à l'envers : il se trouve que les deux extrêmes utilisent les mêmes neuf chiffres, rangés une fois dans l'ordre décroissant et une fois dans l'ordre croissant. Ce qui demandait du travail, c'était de trouver **quels** neuf chiffres utiliser.
