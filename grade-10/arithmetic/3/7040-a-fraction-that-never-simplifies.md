---
id: "7040"
title: "Une fraction qui ne se simplifie jamais"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [pgcd, fraction irreductible, algorithme d euclide]
adapted_from: null
see_also: ["4218"]
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des débutants"
  reference: "stage_junior_2012.pdf, arithmétique matin (Vincent Jugé), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

Pour quels entiers naturels $n$ la fraction
$$\frac{2n^2 + 11n - 18}{n + 7}$$
est-elle irréductible ?

*(Une fraction est irréductible lorsque le PGCD de son numérateur et de son dénominateur
vaut $1$.)*

## Hints

1. On ne sait pas calculer directement le PGCD d'un polynôme de degré $2$ et d'un polynôme de
   degré $1$. Mais on sait retrancher au premier un multiple du second.
2. Un diviseur commun de $2n^2 + 11n - 18$ et de $n + 7$ divise aussi
   $(2n^2 + 11n - 18) - (n + 7)(2n - 3)$. Calcule cette différence.
3. Tu tombes sur un nombre qui ne dépend plus de $n$ du tout.
4. Ce nombre est $3$. Il ne reste qu'à voir pour quels $n$ le nombre $n + 7$ est premier
   avec $3$.

## Solution

**Faire disparaître le $n$.**

Notons $d = \mathrm{PGCD}(2n^2 + 11n - 18,\ n + 7)$.

Un diviseur commun de deux nombres divise toute combinaison de ces nombres. L'idée est donc
de retrancher du numérateur un multiple bien choisi de $n + 7$, pour faire tomber le degré.

Effectuons la division euclidienne de $2n^2 + 11n - 18$ par $n + 7$ :
$$(n + 7)(2n - 3) = 2n^2 - 3n + 14n - 21 = 2n^2 + 11n - 21 ,$$
donc
$$2n^2 + 11n - 18 = (n + 7)(2n - 3) + 3 .$$

Le reste est $3$, et il ne dépend plus de $n$.

**Conclusion de l'algorithme d'Euclide.**

Donc
$$\mathrm{PGCD}(2n^2 + 11n - 18,\ n + 7) = \mathrm{PGCD}(3,\ n + 7) .$$

Ce PGCD vaut $3$ si $3$ divise $n + 7$, et $1$ sinon.

**Quand $3$ divise-t-il $n + 7$ ?**

$n + 7 \equiv 0 \pmod 3$ équivaut à $n \equiv -7 \equiv 2 \pmod 3$.

**Réponse.** La fraction est irréductible exactement lorsque $n$ **n'est pas** de la forme
$3k + 2$, c'est-à-dire lorsque le reste de $n$ dans la division par $3$ vaut $0$ ou $1$ :
$$\boxed{n \equiv 0 \text{ ou } 1 \pmod 3}$$

**Vérification sur deux exemples.**

- $n = 2$ : la fraction vaut $\dfrac{8 + 22 - 18}{9} = \dfrac{12}{9}$, qui se simplifie par
  $3$. Cohérent, car $2 \equiv 2 \pmod 3$.
- $n = 3$ : la fraction vaut $\dfrac{18 + 33 - 18}{10} = \dfrac{33}{10}$, irréductible.
  Cohérent, car $3 \equiv 0 \pmod 3$.

## Going further

La méthode est générale et vaut la peine d'être retenue : pour étudier le PGCD d'un polynôme
en $n$ et de $n + a$, on effectue la **division euclidienne** du premier par le second. Le
reste est une constante, et c'est elle qui décide de tout.

Ici le reste vaut $3$. On peut d'ailleurs l'obtenir sans calcul : le reste de la division de
$P(n)$ par $n + 7$ est $P(-7)$, et $P(-7) = 2 \times 49 - 77 - 18 = 98 - 95 = 3$.
