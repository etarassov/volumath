---
id: "4617"
title: "Un multiple qui ne s'écrit qu'avec des 1"
grade: 9
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [tiroirs, restes, multiples, repunits, demonstration]
adapted_from: null
see_also: ["1217"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Beginners Circle, Pigeonhole Principle"
  reference: "Handout-582-703.pdf, problème 10 (réponse dans Handout-583-703.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-582-703.pdf"
---

## Statement

Soit $n$ un entier strictement positif qui n'est divisible ni par $2$, ni par $5$.

Montrer qu'il existe un multiple de $n$ dont l'écriture décimale ne comporte que des $1$,
c'est-à-dire un nombre de la forme
$$1, \quad 11, \quad 111, \quad 1111, \quad \ldots$$

Par exemple, pour $n = 7$, le nombre $111111 = 7 \times 15873$ convient.

## Hints

1. Considère la suite des nombres $1$, $11$, $111$, … et regarde leurs restes dans la division
   par $n$.
2. Combien de restes différents sont possibles ? Que se passe-t-il si tu prends $n+1$ nombres de
   cette suite ?
3. Si deux de ces nombres ont le même reste, leur différence est un multiple de $n$. À quoi
   ressemble cette différence ?
4. Cette différence s'écrit avec des $1$ suivis de quelques $0$. Fais apparaître une puissance
   de $10$ en facteur, et utilise enfin l'hypothèse sur $n$.

## Solution

**Notation.** Pour $k \geqslant 1$, notons $R_k$ le nombre écrit avec $k$ chiffres $1$ :
$$R_1 = 1, \quad R_2 = 11, \quad R_3 = 111, \quad \ldots$$

**Étape 1 : deux de ces nombres ont le même reste.**

Considérons les $n+1$ nombres
$$R_1, \ R_2, \ \ldots, \ R_{n+1} .$$

Divisons chacun par $n$. Les restes possibles sont $0, 1, 2, \ldots, n-1$, ce qui fait $n$
valeurs. Comme il y a $n+1$ nombres pour $n$ restes possibles, le principe des tiroirs assure que
deux de ces nombres ont le même reste.

Appelons-les $R_i$ et $R_j$, avec $j < i$.

**Étape 2 : leur différence est un multiple de $n$.**

Si deux entiers ont le même reste dans la division par $n$, leur différence est divisible par
$n$. Donc
$$R_i - R_j \text{ est un multiple de } n .$$

**Étape 3 : à quoi ressemble cette différence ?**

Le nombre $R_i$ s'écrit avec $i$ chiffres $1$, et $R_j$ avec $j$ chiffres $1$, avec $j < i$. En
posant la soustraction, les $j$ derniers chiffres s'annulent et il reste :
$$R_i - R_j = \underbrace{11\ldots1}_{i-j \text{ chiffres}}\underbrace{00\ldots0}_{j \text{ zéros}} .$$

Autrement dit
$$R_i - R_j = R_{i-j} \times 10^{\,j} .$$

Par exemple, $R_5 - R_2 = 11111 - 11 = 11100 = 111 \times 100 = R_3 \times 10^2$.

**Étape 4 : se débarrasser de la puissance de 10.**

Nous savons que $n$ divise $R_{i-j} \times 10^{\,j}$. Nous voulons en déduire que $n$ divise
$R_{i-j}$ tout seul. C'est ici, et seulement ici, que sert l'hypothèse sur $2$ et $5$.

Décomposons $n$ en produit de facteurs premiers. Par hypothèse, ni $2$ ni $5$ n'y figurent : tous
les facteurs premiers de $n$ sont des nombres premiers **autres** que $2$ et $5$.

Décomposons maintenant $R_{i-j} \times 10^{\,j}$. Comme
$$10^{\,j} = 2^{\,j} \times 5^{\,j} ,$$
la décomposition de $R_{i-j} \times 10^{\,j}$ est celle de $R_{i-j}$, à laquelle on ajoute $j$
facteurs $2$ et $j$ facteurs $5$.

Puisque $n$ divise $R_{i-j} \times 10^{\,j}$, chaque facteur premier de $n$, compté autant de fois
qu'il apparaît, se retrouve dans cette décomposition. Comme aucun de ces facteurs n'est $2$ ni
$5$, aucun ne peut venir de $10^{\,j}$ : ils viennent tous de $R_{i-j}$. Donc
$$n \text{ divise } R_{i-j} .$$

**Conclusion.** Le nombre $R_{i-j}$, qui s'écrit uniquement avec des chiffres $1$ (et qui n'est
pas nul, car $i - j \geqslant 1$), est un multiple de $n$.

## Going further

La démonstration ne dit pas lequel : elle prouve seulement qu'il en existe un, et qu'on peut le
trouver parmi les $n+1$ premiers nombres de la liste. Pour $n = 3$, c'est $111$. Pour $n = 7$,
c'est $111111$. Pour $n = 13$, cherche-le : il en existe un à six chiffres.

Le même raisonnement, en partant de $7$, $77$, $777$, … montre que **tout** entier $n > 1$
possède un multiple qui ne s'écrit qu'avec des $7$ et des $0$ : cette fois on garde directement
la différence $R_{i-j} \times 10^{\,j}$, sans avoir besoin de supprimer les zéros, et l'hypothèse
sur $2$ et $5$ devient inutile.
