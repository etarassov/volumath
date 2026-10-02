---
id: "8511"
title: "Un produit moins ses deux facteurs vaut 12"
grade: 9
theme: algebra
difficulty: 3
duration_min: 25
tags: [factorisation, equation-en-entiers, diviseurs, nombres-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Inégalités 2 » (Théo), exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Trouver tous les couples $(a, b)$ d'entiers strictement positifs tels que

$$ab - a - b = 12 .$$

## Hints

1. Essaie de factoriser le membre de gauche. Commence par mettre $a$ en facteur dans $ab - a$.
2. Tu obtiens $a(b-1) - b$. Le $-b$ tout seul gêne : peux-tu le rapprocher de $b - 1$ ?
3. Ajoute $1$ aux deux membres de l'équation. Que devient le membre de gauche ?
4. Une fois l'équation sous la forme $(a-1)(b-1) = 13$, souviens-toi que $13$ est un nombre premier, et que $a-1$ et $b-1$ sont des entiers positifs ou nuls.

## Solution

**La factorisation.** Partons du membre de gauche :

$$ab - a - b = a(b-1) - b = a(b-1) - (b-1) - 1 = (a-1)(b-1) - 1 .$$

L'équation $ab - a - b = 12$ devient donc

$$(a-1)(b-1) = 13 .$$

*(On peut aussi voir cela plus vite : ajouter $1$ aux deux membres donne $ab - a - b + 1 = 13$,
et le membre de gauche se factorise en $(a-1)(b-1)$.)*

**Les valeurs possibles.** Comme $a$ et $b$ sont des entiers strictement positifs, $a-1$ et
$b-1$ sont des entiers positifs ou nuls. Leur produit vaut $13$, donc aucun des deux n'est nul,
et ce sont deux diviseurs positifs de $13$.

Or $13$ est un nombre premier : ses seuls diviseurs positifs sont $1$ et $13$. Il y a donc
deux cas :

- $a - 1 = 1$ et $b - 1 = 13$, c'est-à-dire $(a, b) = (2, 14)$ ;
- $a - 1 = 13$ et $b - 1 = 1$, c'est-à-dire $(a, b) = (14, 2)$.

**Vérification.** Le raisonnement ci-dessus ne montre que « si $(a,b)$ est solution,
alors… ». Il faut donc vérifier les deux candidats.

- Pour $(2, 14)$ : $2 \times 14 - 2 - 14 = 28 - 16 = 12$. C'est bon.
- Pour $(14, 2)$ : $14 \times 2 - 14 - 2 = 28 - 16 = 12$. C'est bon.

**Conclusion.** Les seuls couples solutions sont $(2, 14)$ et $(14, 2)$.
