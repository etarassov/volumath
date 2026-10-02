---
id: "12022"
title: "Les chaises du quadrillage"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, coordonnees, parite, quadrillage, deplacements]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test d'entraînement de janvier 2013"
  reference: "2017-10_ofm-2012-2013-test-janvier.pdf, exercice 4 (sujet junior) ; corrigé 2017-10_ofm-2012-2013-test-janvier-corrige.pdf (le corrigé nomme mal ses inconnues, et conclut que le nombre de personnes qui bougent « ne peut pas être égal à 2013 » alors qu'il y a 2013 × 2013 personnes ; la conclusion reste juste car ces deux nombres sont impairs)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-janvier.pdf"
---

## Statement

Sur un terrain, $2013 \times 2013$ chaises sont placées aux sommets d'un quadrillage carré. Chaque chaise est occupée par une personne.

Certaines personnes décident de changer de place :

- certaines se décalent d'un cran vers la droite ;
- d'autres se décalent de $2$ crans vers l'avant ;
- d'autres se décalent de $3$ crans vers la gauche ;
- d'autres enfin se décalent de $6$ crans vers l'arrière.

À la fin, chaque chaise est de nouveau occupée par exactement une personne.

Démontrer qu'au moins une personne n'a pas changé de place.

## Hints

1. Repérez chaque chaise par deux coordonnées : son numéro de colonne $x$ et son numéro de ligne $y$. Pensez à la somme des $x$ de toutes les personnes. Est-elle la même avant et après ?
2. Quand une personne se décale d'un cran vers la droite, de combien cette somme change-t-elle ? Et pour $3$ crans vers la gauche ?
3. Vous devez trouver que le nombre de personnes parties vers la droite est le triple du nombre de personnes parties vers la gauche. Faites de même avec les $y$. Combien de personnes ont bougé, au total ? Ce nombre est-il pair ou impair ?

## Solution

Repérons chaque chaise par deux nombres entiers : $x$, le numéro de sa colonne (qui augmente vers la droite), et $y$, le numéro de sa ligne (qui augmente vers l'avant). Notons

- $d$ le nombre de personnes qui se décalent d'un cran vers la droite,
- $v$ le nombre de celles qui se décalent de $2$ crans vers l'avant,
- $g$ le nombre de celles qui se décalent de $3$ crans vers la gauche,
- $r$ le nombre de celles qui se décalent de $6$ crans vers l'arrière.

**Étape 1 : la somme des $x$ ne change pas.** Avant comme après, chaque chaise porte exactement une personne. Donc la somme des $x$ de toutes les personnes est égale, avant comme après, à la somme des $x$ de toutes les chaises : elle ne change pas.

Or une personne qui se décale vers la droite augmente son $x$ de $1$, une personne qui se décale vers la gauche diminue son $x$ de $3$, et les autres ne changent pas de colonne. La somme des $x$ change donc de $d - 3g$. Comme elle ne change pas,

$$d - 3g = 0, \qquad \text{donc} \qquad d = 3g .$$

**Étape 2 : la somme des $y$ ne change pas.** De même, la somme des $y$ ne change pas, et elle varie de $2v - 6r$. Donc $2v = 6r$, c'est-à-dire $v = 3r$.

**Étape 3 : un nombre pair.** Le nombre de personnes qui ont bougé vaut

$$d + v + g + r = 3g + 3r + g + r = 4\,(g + r) .$$

C'est un nombre pair (et même un multiple de $4$). Or le nombre total de personnes, $2013 \times 2013$, est impair, car c'est un produit de deux nombres impairs. Les deux nombres ne peuvent donc pas être égaux : tout le monde n'a pas bougé.

**Conclusion.** Au moins une personne n'a pas changé de place.

## Going further

Le raisonnement montre plus : le nombre de personnes qui bougent est toujours un multiple de $4$. Avec $2012 \times 2012$ chaises, le nombre de personnes est un multiple de $4$ : l'argument ne permet plus de conclure. Et en effet, tout le monde peut alors bouger. Dans une rangée, prenons quatre chaises voisines : les trois premières personnes se décalent d'un cran vers la droite, et la quatrième de $3$ crans vers la gauche, sur la chaise libérée par la première. Comme $2012$ est un multiple de $4$, chaque rangée se découpe en paquets de quatre chaises voisines, et l'on fait ce tour dans chaque paquet.
