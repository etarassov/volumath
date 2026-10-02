---
id: "8402"
title: "Le paquet de cartes rouges et noires"
grade: 8
theme: algebra
difficulty: 2
duration_min: 10
tags: [mise-en-equation, inconnue, proportion, probleme-concret]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, Coupe Animath de printemps 2021"
  reference: "Poly-2021-Valbonne.pdf, « Coupe Animath de printemps 2021 », exercice 2 (collège) et exercice 9 (lycée), énoncés identiques"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Un paquet de cartes ne contient que des cartes rouges et des cartes noires. Il contient $2$ fois plus de cartes noires que de cartes rouges.

On ajoute $4$ cartes noires au paquet. Il contient alors $3$ fois plus de cartes noires que de cartes rouges.

Combien le paquet contenait-il de cartes **en tout** avant qu'on ajoute les $4$ cartes noires ?

## Hints

1. Donne un nom au nombre de cartes rouges du paquet de départ, par exemple $r$. Combien y a-t-il de cartes noires, en fonction de $r$ ?
2. Ajouter des cartes noires ne change pas le nombre de cartes rouges. Écris le nombre de cartes noires après l'ajout de deux façons différentes, et égale les deux.
3. Une fois $r$ trouvé, relis la question : on te demande le nombre total de cartes, pas le nombre de cartes noires.

## Solution

**Mettre le problème en équation.**

Appelons $r$ le nombre de cartes rouges du paquet de départ. Comme il y a $2$ fois plus de cartes noires que de rouges, le paquet contient $2r$ cartes noires.

On ajoute $4$ cartes noires. Le paquet contient maintenant :

- toujours $r$ cartes rouges, car on n'a ajouté aucune carte rouge ;
- $2r + 4$ cartes noires.

**Utiliser la deuxième information.**

Après l'ajout, il y a $3$ fois plus de cartes noires que de rouges, c'est-à-dire

$$2r + 4 = 3r.$$

**Résoudre.**

En retranchant $2r$ des deux côtés :

$$4 = r.$$

Le paquet de départ contenait donc $4$ cartes rouges et $2 \times 4 = 8$ cartes noires.

**Répondre à la question posée.**

Le nombre total de cartes avant l'ajout est

$$4 + 8 = \boxed{12}.$$

**Vérification.** Au départ : $4$ rouges et $8$ noires, et $8 = 2 \times 4$, il y a bien deux fois plus de noires. Après l'ajout : $4$ rouges et $12$ noires, et $12 = 3 \times 4$, il y a bien trois fois plus de noires.
