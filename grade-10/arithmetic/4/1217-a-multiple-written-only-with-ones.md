---
id: "1217"
title: "Un multiple qui ne s'écrit qu'avec des 1"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [principe-des-tiroirs, divisibilite, reste, ecriture-decimale, nombres-premiers-entre-eux]
adapted_from: null
see_also: ["1809", "4617"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2, «Pigeonhole Problems»"
  reference: "Handout-4515-4459.pdf, problème 9"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4515-4459.pdf"
---

## Statement

Pour un entier $k \geqslant 1$, notons $R_k$ le nombre dont l'écriture décimale est faite de $k$ chiffres $1$ :

$$R_1 = 1, \quad R_2 = 11, \quad R_3 = 111, \quad R_4 = 1111, \quad \dots$$

Soit $n$ un entier naturel qui n'est divisible ni par $2$ ni par $5$.

Démontrer qu'il existe un entier $k$ tel que $n$ divise $R_k$.

*Exemple : pour $n = 7$, on a $R_6 = 111\,111 = 7 \times 15\,873$.*

## Hints

1. On ne peut pas espérer fabriquer $k$ explicitement : la démonstration doit prouver l'existence sans exhiber le nombre.
2. Considérer les $n+1$ premiers nombres $R_1, R_2, \dots, R_{n+1}$ et leurs restes dans la division par $n$. Combien de restes différents sont possibles ?
3. Principe des tiroirs : $n+1$ nombres, au plus $n$ restes possibles. Que peut-on en conclure ?
4. Si $R_i$ et $R_j$ ont le même reste (avec $i < j$), s'intéresser à leur différence. À quoi ressemble $R_j - R_i$ en écriture décimale ?
5. La différence s'écrit comme un produit de deux facteurs. L'hypothèse sur $n$ va servir exactement là.

## Solution

**L'idée : les tiroirs.**

Regardons les $n+1$ nombres

$$R_1, \; R_2, \; \dots, \; R_{n+1}$$

et, pour chacun, son reste dans la division euclidienne par $n$. Ce reste est un entier compris entre $0$ et $n-1$ : il n'y a donc que $n$ valeurs possibles pour $n+1$ nombres.

D'après le principe des tiroirs, **deux de ces nombres ont le même reste**. Notons-les $R_i$ et $R_j$ avec $1 \leqslant i < j \leqslant n+1$.

**La différence.**

Deux nombres qui ont le même reste dans la division par $n$ ont une différence divisible par $n$. Donc

$$n \;\text{ divise }\; R_j - R_i.$$

Regardons à quoi ressemble cette différence. Le nombre $R_j$ est fait de $j$ chiffres $1$, et $R_i$ de $i$ chiffres $1$ ; en soustrayant, les $i$ derniers chiffres s'annulent et il reste $j - i$ chiffres $1$ suivis de $i$ zéros :

$$R_j - R_i = \underbrace{1\ldots1}_{j-i}\underbrace{0\ldots0}_{i} = R_{j-i} \times 10^{\,i}.$$

*(Par exemple $R_5 - R_2 = 11111 - 11 = 11100 = R_3 \times 10^2$.)*

**Conclure grâce à l'hypothèse.**

On sait donc que $n$ divise le produit $R_{j-i} \times 10^{\,i}$.

Or $10^{\,i} = 2^{\,i} \times 5^{\,i}$ : ses seuls facteurs premiers sont $2$ et $5$. Comme $n$ n'est divisible ni par $2$ ni par $5$, aucun facteur premier de $n$ n'est $2$ ou $5$ : les nombres $n$ et $10^{\,i}$ sont donc premiers entre eux.

Le théorème de Gauss s'applique : si $n$ divise $R_{j-i} \times 10^{\,i}$ et si $n$ est premier avec $10^{\,i}$, alors

$$n \;\text{ divise }\; R_{j-i}.$$

Comme $i < j$, l'entier $k = j - i$ est bien supérieur ou égal à $1$. On a donc trouvé le multiple cherché.

**Conclusion.** Tout entier $n$ non divisible par $2$ ni par $5$ possède un multiple qui ne s'écrit qu'avec des chiffres $1$, et l'on peut même l'obtenir avec au plus $n$ chiffres.

**Pourquoi l'hypothèse est nécessaire.** Un nombre fait uniquement de chiffres $1$ est impair et ne se termine pas par $0$ ni par $5$. Il n'est donc jamais divisible par $2$ ni par $5$ : sans l'hypothèse, le résultat serait faux. Pour $n = 6$ par exemple, aucun $R_k$ n'est divisible par $6$.

## Going further

1. Pour $n = 3$, $n = 7$, $n = 11$, $n = 13$, trouver le plus petit $k$ qui convient. (Réponses : $3$, $6$, $2$, $6$.)
2. Le même raisonnement montre que tout entier $n$ premier avec $10$ divise un nombre de la forme $\underbrace{7\ldots7}_{k}$. Le refaire.
3. Adapter la démonstration pour prouver que tout entier $n$ divise un nombre de la forme $\underbrace{1\ldots1}_{k}\underbrace{0\ldots0}_{m}$, cette fois sans aucune hypothèse sur $n$.
