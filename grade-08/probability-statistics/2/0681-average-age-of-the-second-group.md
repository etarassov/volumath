---
id: "0681"
title: "La moyenne d'âge du second groupe"
grade: 8
theme: probability-statistics
difficulty: 2
duration_min: 10
tags: [moyenne, effectifs, statistiques]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Inégalités. Égalités. Équations et systèmes d'équations », 3 novembre 2023"
  reference: "Inégalités.pdf, exercice 20"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Inégalités.pdf"
---

## Statement

La moyenne d'âge d'un groupe de $11$ personnes est de $25$ ans. Un deuxième groupe de $7$ personnes arrive, et la moyenne d'âge de tout le monde réuni passe alors à $32$ ans.

Quelle est la moyenne d'âge du second groupe ?

## Hints

1. Une moyenne ne s'additionne pas, mais une somme d'âges, oui. Commence par calculer la somme des âges du premier groupe.
2. Combien de personnes y a-t-il en tout une fois le second groupe arrivé ? Quelle est alors la somme de tous les âges ?
3. La somme des âges du second groupe est la différence entre ces deux sommes.

## Solution

**Étape 1. La somme des âges du premier groupe.**

La moyenne est la somme des âges divisée par le nombre de personnes. Donc la somme des âges vaut la moyenne multipliée par l'effectif :

$$11 \times 25 = 275 \text{ ans}.$$

**Étape 2. La somme des âges de tout le monde.**

Une fois le second groupe arrivé, il y a $11 + 7 = 18$ personnes, et leur moyenne d'âge est de $32$ ans. La somme de tous les âges vaut donc

$$18 \times 32 = 576 \text{ ans}.$$

**Étape 3. La somme des âges du second groupe.**

C'est ce qui a été ajouté :

$$576 - 275 = 301 \text{ ans}.$$

**Étape 4. La moyenne du second groupe.**

Le second groupe compte $7$ personnes, donc sa moyenne d'âge est

$$\frac{301}{7} = 43 \text{ ans}.$$

**Vérification.** Si $7$ personnes ont en moyenne $43$ ans et $11$ personnes en moyenne $25$ ans, la moyenne de l'ensemble vaut $\dfrac{7 \times 43 + 11 \times 25}{18} = \dfrac{301 + 275}{18} = \dfrac{576}{18} = 32$. C'est bien la valeur annoncée.

**Conclusion.** La moyenne d'âge du second groupe est de $43$ ans.

## Going further

1. On aurait pu raisonner ainsi : les $11$ premières personnes « manquent » chacune $32 - 25 = 7$ ans par rapport à la nouvelle moyenne, soit $77$ ans à rattraper. Les $7$ nouvelles doivent donc dépasser $32$ ans de $77$ ans au total, c'est-à-dire de $11$ ans chacune en moyenne. Retrouve-t-on bien $43$ ?
2. Un troisième groupe arrive et la moyenne redescend à $30$ ans. Si ce groupe compte $6$ personnes, quelle est sa moyenne d'âge ?
