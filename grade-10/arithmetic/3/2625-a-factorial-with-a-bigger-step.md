---
id: "2625"
title: "Une factorielle qui avance par bonds"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [produit, factorielle, puissances, quotient]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School Circle, AMC Problem Session"
  reference: "Handout-456-552.pdf, exercice 3 (AMC 1973, problème 19 ; réponse donnée dans le même fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-456-552.pdf"
---

## Statement

Pour deux entiers strictement positifs $n$ et $a$, on note $n!_a$ le produit
$$n!_a = n\,(n-a)\,(n-2a)\,(n-3a)\cdots$$
que l'on continue tant que les facteurs restent strictement positifs, et que l'on arrête juste avant d'atteindre $0$ ou un nombre négatif.

Par exemple $10!_3 = 10 \times 7 \times 4 \times 1 = 280$ (le facteur suivant serait $-2$), et $n!_1 = n \times (n-1) \times \cdots \times 2 \times 1 = n!$, la factorielle ordinaire.

Calculer
$$\frac{72!_8}{18!_2}.$$

## Hints

1. Écris les deux produits en entier, sans rien calculer. Combien de facteurs chacun a-t-il ?
2. Dans $72!_8$, tous les facteurs sont des multiples de $8$. Que se passe-t-il si tu mets $8$ en facteur dans chacun d'eux ?
3. Fais la même chose avec $2$ dans $18!_2$.
4. Tu vas voir apparaître deux fois le même produit. Simplifie.

## Solution

**Écrivons les deux produits.**

$$72!_8 = 72 \times 64 \times 56 \times 48 \times 40 \times 32 \times 24 \times 16 \times 8 .$$

Le facteur suivant serait $8 - 8 = 0$, on s'arrête donc là. Il y a **neuf** facteurs.

$$18!_2 = 18 \times 16 \times 14 \times 12 \times 10 \times 8 \times 6 \times 4 \times 2 .$$

Là encore le facteur suivant serait $0$. Il y a aussi **neuf** facteurs.

**Mettons les puissances en facteur.**

Dans le premier produit, chaque facteur est un multiple de $8$ :
$$72!_8 = (8 \times 9)(8\times 8)(8\times 7)(8 \times 6)(8\times 5)(8\times 4)(8\times 3)(8 \times 2)(8 \times 1).$$

Il y a neuf facteurs, donc neuf fois le nombre $8$ :
$$72!_8 = 8^9 \times (9 \times 8 \times 7 \times 6 \times 5 \times 4 \times 3 \times 2 \times 1) = 8^9 \times 9! .$$

Dans le second produit, chaque facteur est un multiple de $2$ :
$$18!_2 = (2\times 9)(2\times 8)(2\times 7)(2\times 6)(2\times 5)(2\times 4)(2\times 3)(2\times 2)(2\times 1) = 2^9 \times 9! .$$

**Le quotient.**

Le facteur $9!$ apparaît dans les deux et se simplifie :
$$\frac{72!_8}{18!_2} = \frac{8^9 \times 9!}{2^9 \times 9!} = \frac{8^9}{2^9} = \left(\frac{8}{2}\right)^9 = 4^9 .$$

$$\boxed{\frac{72!_8}{18!_2} = 4^9 = 262\,144 .}$$

**Pourquoi cela marchait-il si bien ?** Parce que $\dfrac{72}{8} = 9$ et $\dfrac{18}{2} = 9$ : les deux produits « comptent à rebours » exactement le même nombre de pas, et ne diffèrent que par la taille du pas.

## Going further

Le même calcul donne une formule générale : si $n$ est un multiple de $a$, disons $n = a\,m$, alors
$$n!_a = a^m \times m! .$$
La factorielle ordinaire est le cas $a = 1$. Avec $a = 2$ et $n$ pair, on retrouve le produit des entiers pairs jusqu'à $n$, que l'on appelle parfois la double factorielle.
