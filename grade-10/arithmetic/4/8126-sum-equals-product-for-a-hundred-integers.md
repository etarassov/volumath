---
id: "8126"
title: "Cent entiers dont la somme est égale au produit"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [produit, inegalite, principe-de-l-extremum, entiers]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Combinatoire – Principe de l'extremum », exercice 8"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

On considère $100$ entiers strictement positifs, pas forcément distincts, dont la somme est égale au produit.

Montrer qu'au moins $93$ d'entre eux valent $1$.

## Hints

1. Note $a_1, a_2, \ldots, a_{100}$ ces entiers et range-les de sorte que $a_{100}$ soit le plus grand.
2. Majore la somme : chacun des cent termes est inférieur ou égal à $a_{100}$.
3. Tu obtiens une inégalité entre le produit et $100\,a_{100}$. Simplifie par $a_{100}$, qui est strictement positif.
4. Il te reste une majoration du produit des $99$ premiers. Combien de ces $99$ entiers peuvent valoir $2$ ou plus ? Pense aux puissances de $2$.

## Solution

Notons $a_1, a_2, \ldots, a_{100}$ les cent entiers, rangés de façon que $a_{100}$ soit le plus grand de tous. L'hypothèse s'écrit

$$a_1 \times a_2 \times \cdots \times a_{100} = a_1 + a_2 + \cdots + a_{100}.$$

**Étape 1 : majorer le produit.**

Chacun des cent termes de la somme est inférieur ou égal à $a_{100}$, donc

$$a_1 + a_2 + \cdots + a_{100} \leq 100 \, a_{100}.$$

En combinant avec l'hypothèse :

$$a_1 \times a_2 \times \cdots \times a_{99} \times a_{100} \leq 100\, a_{100}.$$

Comme $a_{100}$ est un entier strictement positif, on peut diviser les deux membres par $a_{100}$ :

$$a_1 \times a_2 \times \cdots \times a_{99} \leq 100.$$

**Étape 2 : peu de facteurs peuvent dépasser $1$.**

Tous les $a_i$ sont des entiers strictement positifs, donc chacun vaut $1$ ou au moins $2$.

Supposons qu'au moins $7$ des entiers $a_1, \ldots, a_{99}$ soient supérieurs ou égaux à $2$. Alors leur produit est au moins $2^7 = 128$. Comme tous les autres facteurs valent au moins $1$, le produit total $a_1 \times \cdots \times a_{99}$ serait au moins $128$, ce qui contredit l'étape 1.

Donc **au plus $6$** des entiers $a_1, \ldots, a_{99}$ sont différents de $1$.

**Étape 3 : conclusion.**

Parmi les cent entiers, les seuls qui peuvent être différents de $1$ sont ces $6$-là, plus éventuellement $a_{100}$ : cela fait au plus $7$ entiers différents de $1$.

Il y a donc au moins $100 - 7 = 93$ entiers égaux à $1$.

Remarque : de telles familles existent. Par exemple, prenons $98$ fois le nombre $1$, puis $2$ et $100$ : le produit vaut $200$ et la somme vaut $98 + 2 + 100 = 200$. Ici, exactement $98$ des entiers valent $1$.
