---
id: "7924"
title: "Découper un polygone à 2016 côtés en triangles"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [polygone, triangulation, double-comptage, diagonales]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, épreuve de la Coupe Animath du 31 mai 2016, exercice 6 (énoncé p. 29, solution p. 31)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Dans un polygone convexe à $2016$ côtés, on trace certaines diagonales qui ne se coupent pas à l'intérieur du polygone. Le dessin obtenu découpe le polygone en $2014$ triangles.

Est-il possible qu'exactement la moitié de ces triangles aient leurs trois côtés qui soient des diagonales ?

## Hints

1. Range les triangles du découpage en familles, selon le nombre de leurs côtés qui sont des côtés du polygone : $0$, $1$, $2$ ou $3$.
2. Pourquoi la famille « $3$ côtés du polygone » est-elle vide ici ?
3. Compte les côtés du polygone de deux façons. Chaque côté du polygone appartient à combien de triangles du découpage ?
4. Tu obtiens deux équations. Fais-en la différence.

## Solution

**La réponse : non, c'est impossible.**

**Étape 1 : on classe les triangles.**

Chaque triangle du découpage a trois côtés, qui sont chacun soit un **côté du polygone**, soit une **diagonale tracée**. Notons

- $a$ le nombre de triangles ayant $0$ côté du polygone (donc trois côtés qui sont des diagonales) ;
- $b$ le nombre de triangles ayant exactement $1$ côté du polygone ;
- $c$ le nombre de triangles ayant exactement $2$ côtés du polygone.

Il n'y a pas de triangle ayant $3$ côtés du polygone : un tel triangle aurait pour sommets trois sommets du polygone reliés deux à deux par des côtés, ce qui n'arrive que si le polygone est lui-même un triangle. Ici il a $2016$ côtés.

Comme le découpage comporte $2014$ triangles :

$$a + b + c = 2014 . \qquad (\star)$$

**Étape 2 : on compte les côtés du polygone.**

Chaque côté du polygone borde exactement un triangle du découpage : celui qui se trouve du côté intérieur. Comptons donc les paires (côté du polygone, triangle qui le contient) de deux façons.

- Par les côtés : il y en a $2016$, chacun dans un seul triangle, soit $2016$ paires.
- Par les triangles : un triangle de la famille $a$ en fournit $0$, un de la famille $b$ en fournit $1$, un de la famille $c$ en fournit $2$.

D'où

$$b + 2c = 2016 . \qquad (\star\star)$$

**Étape 3 : on compare.**

Faisons la différence $(\star\star) - (\star)$ :

$$(b + 2c) - (a + b + c) = 2016 - 2014 ,$$

c'est-à-dire

$$c - a = 2 , \qquad \text{donc} \qquad c = a + 2 .$$

En reportant dans $(\star)$ :

$$a + b + (a + 2) = 2014 , \qquad \text{donc} \qquad 2a + b = 2012 .$$

Comme $b \ge 0$, on en déduit

$$2a \le 2012 , \qquad \text{donc} \qquad a \le 1006 .$$

**Étape 4 : conclusion.**

La moitié de $2014$ vaut $1007$. Or on vient de voir que $a \le 1006$.

Il est donc **impossible** qu'exactement la moitié des triangles aient leurs trois côtés formés de diagonales.

## Going further

La valeur $a = 1006$ est-elle atteinte ? Elle impose $b = 0$ et $c = 1008$ : tous les triangles auraient soit zéro, soit deux côtés du polygone. Pour un hexagone, le découpage par les trois « grandes » diagonales $A_1A_3$, $A_3A_5$, $A_5A_1$ donne exactement cela : trois triangles à deux côtés et un triangle central tout en diagonales. Sauras-tu généraliser la construction ?
