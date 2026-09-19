---
id: "4214"
title: "Cent villes, quatre routes chacune"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [double comptage, graphe, degre]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Graphs and Geometry"
  reference: "Handout-2065-1860.pdf, exercice 1 (corrigé dans Handout-2066-1860.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2065-1860.pdf"
---

## Statement

Un pays compte $100$ villes. Chaque route relie exactement deux villes, et de chaque ville
partent exactement $4$ routes.

Combien y a-t-il de routes en tout dans ce pays ?

## Hints

1. Commence par un tout petit exemple pour comprendre le mécanisme : $4$ villes, chacune reliée
   aux $3$ autres. De chaque ville partent $3$ routes. Combien y a-t-il de routes en tout ?
2. Compte les « bouts de route ». Chaque ville en voit partir $4$ : cela fait $100 \times 4$
   bouts de route.
3. Combien de bouts possède une seule route ?

## Solution

**L'idée : compter deux fois la même chose.**

Imaginons qu'à chaque ville, on plante un petit drapeau au départ de chacune des routes qui en
sortent. Comme de chaque ville partent $4$ routes, chaque ville reçoit $4$ drapeaux. Il y a donc
en tout
$$100 \times 4 = 400 \text{ drapeaux}.$$

Comptons maintenant les mêmes drapeaux d'une autre façon. Une route relie deux villes : elle a
donc exactement **deux** extrémités, et porte donc exactement $2$ drapeaux, un à chaque bout. Si
$r$ désigne le nombre de routes, le nombre total de drapeaux vaut aussi
$$2r.$$

Les deux comptages portent sur les mêmes drapeaux, donc
$$2r = 400, \qquad r = 200.$$

**Conclusion.** Il y a $\mathbf{200}$ routes dans ce pays.

**Vérification sur le petit exemple.** Avec $4$ villes toutes reliées entre elles, chaque ville
voit partir $3$ routes. Le calcul donne $\dfrac{4 \times 3}{2} = 6$ routes, et on vérifie
facilement sur un dessin qu'il y en a bien $6$.

## Going further

1. Un pays a $n$ villes et de chaque ville partent exactement $k$ routes. Montrer que le nombre
   de routes vaut $\dfrac{nk}{2}$.
2. En déduire qu'il est impossible d'avoir $15$ villes avec exactement $3$ routes par ville.
   (Le calcul donnerait $\text{22,5}$ routes.)
