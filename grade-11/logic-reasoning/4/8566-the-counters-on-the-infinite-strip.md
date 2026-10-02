---
id: "8566"
title: "Les jetons sur la bande infinie"
grade: 11
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [invariant, monovariant, puissances-de-deux, jetons]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Invariants » (Xavier) du Groupe A, exercice 10"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

On dispose d'une bande infinie de cases, numérotées par les entiers relatifs
$\ldots, -2, -1, 0, 1, 2, \ldots$ On place un nombre fini de jetons sur ces cases ; plusieurs
jetons peuvent occuper la même case.

Un coup consiste à choisir une case portant au moins deux jetons, à en retirer deux, puis à
poser un jeton sur la case juste à gauche et un jeton sur la case juste à droite.

Démontrer qu'après un ou plusieurs coups, on ne peut jamais retrouver exactement la
configuration de départ.

## Hints

1. Cherche une quantité qui ne reste pas constante mais qui **augmente toujours**. Une telle quantité interdit tout retour en arrière.
2. Attribue un poids à chaque case, et définis la quantité comme la somme des poids des cases occupées (un jeton, un poids).
3. Essaie le poids $2^{i}$ pour la case numéro $i$. Que devient la somme après un coup ?
4. Compare $2 \times 2^{i}$ à $2^{i-1} + 2^{i+1}$.

## Solution

### Le poids d'une configuration

Donnons à la case numéro $i$ le **poids** $2^{i}$. Comme $i$ peut être négatif, ce poids peut
être un nombre inférieur à $1$, par exemple $2^{-3} = \tfrac{1}{8}$, mais c'est toujours un
nombre strictement positif.

Le **poids total** d'une configuration est la somme des poids des cases occupées, chaque
jeton comptant pour sa propre case. Comme il y a un nombre fini de jetons, cette somme est un
nombre bien défini.

### Un coup augmente strictement le poids

Un coup enlève deux jetons de la case $i$ et en pose un sur la case $i-1$ et un sur la case
$i+1$. Le poids total varie donc de

$$\left(2^{i-1} + 2^{i+1}\right) - 2 \times 2^{i} .$$

Mettons $2^{i}$ en facteur :

$$2^{i-1} + 2^{i+1} - 2 \times 2^{i}
= 2^{i}\left(\tfrac{1}{2} + 2 - 2\right)
= \tfrac{1}{2} \times 2^{i} = 2^{i-1} .$$

Cette quantité est strictement positive. Donc **chaque coup fait strictement augmenter le
poids total**.

### Conclusion

Supposons qu'après un ou plusieurs coups on retrouve la configuration de départ. Le poids
total ne dépend que de la configuration : il devrait donc valoir la même chose au départ et à
l'arrivée.

Mais chaque coup l'a fait strictement augmenter, donc le poids final est strictement plus
grand que le poids initial. C'est contradictoire.

On ne peut donc jamais revenir à la configuration de départ.

## Going further

Une quantité qui ne cesse d'augmenter s'appelle un **monovariant**. C'est un outil voisin de
l'invariant : un invariant sépare les configurations en classes qu'on ne peut pas quitter ;
un monovariant, lui, donne un sens au temps et interdit de revenir en arrière.
