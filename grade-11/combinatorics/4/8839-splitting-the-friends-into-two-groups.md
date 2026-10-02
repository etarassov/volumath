---
id: "8839"
title: "Séparer les amis en deux groupes"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [principe-de-lextremum, amities, minimum, algorithme]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Principe de l'extremum » (Théo et Noam), exercice 8, p. 116"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Les organisateurs d'un stage veulent répartir les participants en deux groupes, de façon à séparer les amis.

Chaque participant a **au plus trois amis** parmi les autres participants (l'amitié est réciproque).

Montrer qu'il est possible de former deux groupes tels que chaque participant ait **au plus un ami** dans son propre groupe.

## Hints

1. Il y a un nombre fini de répartitions en deux groupes. On peut donc en choisir une qui rend le plus petit possible une certaine quantité. Laquelle serait utile ?
2. Compte les paires d'amis qui se retrouvent dans le même groupe. Appelle cela le score d'une répartition.
3. Prends une répartition de score minimal, et suppose qu'un participant ait deux amis (ou plus) dans son groupe. Combien en a-t-il dans l'autre groupe ?
4. Que se passe-t-il si on le déplace ?

## Solution

### Le score d'une répartition

Pour une répartition donnée des participants en deux groupes, appelons **score** le nombre de paires d'amis qui se trouvent dans le même groupe.

Il y a un nombre fini de répartitions possibles (chaque participant est dans l'un des deux groupes), donc un nombre fini de scores. Choisissons une répartition de **score minimal**.

### Elle convient

Supposons par l'absurde qu'un participant, appelons-le $A$, ait au moins **deux** amis dans son propre groupe.

Comme $A$ a au plus $3$ amis en tout, il lui en reste au plus $3 - 2 = 1$ dans l'autre groupe.

Déplaçons $A$ dans l'autre groupe, sans rien changer d'autre. Regardons comment le score évolue.

- Les paires d'amis qui ne contiennent pas $A$ ne bougent pas : elles restent dans le même groupe ou dans des groupes différents, exactement comme avant.
- Les paires contenant $A$ : celles qui étaient dans le même groupe que $A$ (au moins $2$) ne le sont plus ; celles qui étaient dans l'autre groupe (au plus $1$) le rejoignent.

Le score diminue donc d'au moins $2$ et augmente d'au plus $1$ : il **diminue strictement**.

C'est impossible, puisque la répartition de départ avait le score minimal.

**Conclusion.** Dans une répartition de score minimal, chaque participant a au plus un ami dans son groupe. Une telle répartition existe, ce qui répond à la question.

### Une lecture algorithmique

La preuve fournit aussi une méthode concrète : partir d'une répartition quelconque, et tant qu'un participant a deux amis ou plus dans son groupe, le déplacer. Comme le score diminue strictement à chaque déplacement et qu'il est un entier positif, la procédure s'arrête forcément, et elle s'arrête sur une répartition qui convient.

## Going further

Si chaque participant a au plus $2k+1$ amis, montrer qu'on peut former deux groupes tels que chacun ait au plus $k$ amis dans son groupe.
