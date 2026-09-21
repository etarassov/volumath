---
id: "8007"
title: "Les triangles d'un polygone à 200 côtés"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [denombrement, triangle, polygone, choix]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, Coupe Animath 2017, éliminatoires collégiens, exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

On donne un polygone régulier à $200$ côtés.

Combien peut-on former de triangles dont les trois sommets sont des sommets de ce polygone ?

## Hints

1. Commence par un cas minuscule : combien de triangles peut-on former avec les sommets d'un
   pentagone régulier ? Compte-les à la main, tu en trouveras $10$.
2. Compte d'abord les façons de choisir un premier sommet, puis un deuxième, puis un
   troisième. Combien cela fait-il de suites de trois sommets ?
3. Le triangle $ABC$ et le triangle $BCA$ sont le même triangle. Combien de fois chaque
   triangle a-t-il été compté dans la question précédente ?

## Solution

**Un triangle, c'est un choix de trois sommets.** Trois sommets d'un polygone régulier ne sont
jamais alignés : ils sont tous sur un même cercle, et un cercle ne contient jamais trois points
alignés. Donc à chaque choix de trois sommets correspond exactement un triangle, et
inversement.

Il s'agit donc de compter les façons de choisir trois sommets parmi les $200$.

**On compte d'abord en tenant compte de l'ordre.** Choisissons les sommets un par un :

- pour le premier, $200$ possibilités ;
- pour le deuxième, il en reste $199$ ;
- pour le troisième, il en reste $198$.

Cela fait $200 \times 199 \times 198$ façons de choisir trois sommets **dans un ordre donné**.

**On corrige le double comptage.** Un même triangle a été compté plusieurs fois : si ses
sommets sont $A$, $B$ et $C$, on a pu les choisir dans l'ordre

$$ABC, \quad ACB, \quad BAC, \quad BCA, \quad CAB, \quad CBA,$$

soit $6$ ordres différents pour un seul et même triangle. Chaque triangle a donc été compté
exactement $6$ fois.

**Le compte final.** Le nombre de triangles est

$$\frac{200 \times 199 \times 198}{6} = 200 \times 199 \times 33 = 1\,313\,400.$$

**On peut former $1\,313\,400$ triangles.**

## Going further

Le fait que le polygone soit *régulier* n'a servi qu'à garantir qu'aucun triangle n'est aplati.
Le même calcul donne le nombre de triangles formés par $n$ points d'un plan dont trois ne sont
jamais alignés :

$$\frac{n(n-1)(n-2)}{6}.$$
