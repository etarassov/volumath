---
id: "8005"
title: "Le premier diviseur de 100! qui dépasse 100"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombres premiers, factorielle, diviseurs, decomposition]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, Coupe Animath 2017, éliminatoires collégiens, exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

On note $100!$ le produit de tous les entiers de $1$ à $100$ :

$$100! = 1 \times 2 \times 3 \times \cdots \times 100.$$

Quel est le plus petit entier strictement plus grand que $100$ qui divise $100!$ ?

## Hints

1. Le premier candidat est $101$. Essaie de voir s'il divise $100!$ ou non.
2. Décompose $100!$ en produit de facteurs premiers : quels nombres premiers peuvent
   apparaître dans cette décomposition ?
3. Le candidat suivant est $102$. Cherche à l'écrire comme un produit de deux facteurs
   *différents* pris entre $1$ et $100$.

## Solution

**Le candidat $101$ ne convient pas.** Décomposons chacun des facteurs $2, 3, \ldots, 100$ en
produit de nombres premiers. Un nombre premier qui divise un entier $k$ est toujours inférieur
ou égal à $k$ ; comme tous nos facteurs sont au plus $100$, tous les nombres premiers qui
apparaissent dans ces décompositions sont au plus $100$.

En multipliant le tout, on obtient la décomposition en facteurs premiers de $100!$ : elle ne
contient que des nombres premiers inférieurs ou égaux à $100$.

Or $101$ est un nombre premier. En effet, il n'est divisible ni par $2$, ni par $3$, ni par
$5$, ni par $7$, et $10^2 = 100 < 101 < 121 = 11^2$, donc il suffisait de tester les nombres
premiers jusqu'à $10$.

Comme $101$ ne figure pas dans la décomposition de $100!$, il ne divise pas $100!$.

**Le candidat $102$ convient.** On a

$$102 = 2 \times 51.$$

Les nombres $2$ et $51$ sont deux entiers **distincts** compris entre $1$ et $100$ : ils
apparaissent donc tous les deux, séparément, dans le produit $1 \times 2 \times \cdots \times 100$.
On peut donc écrire

$$100! = 2 \times 51 \times (\text{le produit de tous les autres entiers de } 1 \text{ à } 100) = 102 \times N$$

où $N$ est un entier. Donc $102$ divise $100!$.

**Le plus petit entier strictement plus grand que $100$ qui divise $100!$ est $102$.**

## Going further

Le même raisonnement montre que le plus petit entier plus grand que $n$ qui divise $n!$ dépend
de la place des nombres premiers : si $n + 1$ n'est pas premier, alors $n + 1$ lui-même divise
$n!$ (dès que $n \geqslant 5$), car on peut l'écrire comme un produit de deux facteurs distincts
inférieurs à $n$. Ici $101$ est premier, et c'est exactement ce qui force à aller jusqu'à $102$.
