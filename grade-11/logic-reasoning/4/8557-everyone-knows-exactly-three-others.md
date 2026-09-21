---
id: "8557"
title: "Chacun en connaît exactement trois"
grade: 11
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [principe-de-lextremum, minimum, graphe, partition]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Principe des tiroirs et de l'extremum » (Angela) du Groupe B, exercice 16"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Dans un stage, chaque élève connaît exactement trois autres élèves. La relation « se
connaître » est réciproque.

Démontrer qu'on peut répartir les élèves en deux groupes de telle sorte que chaque élève
connaisse **au plus une** personne de son propre groupe.

## Hints

1. Il y a un nombre fini de façons de répartir les élèves en deux groupes. On peut donc en choisir une qui rende une certaine quantité minimale.
2. Quelle quantité ? Compte, pour une répartition donnée, le nombre de paires d'élèves qui se connaissent **et** qui sont dans le même groupe.
3. Choisis une répartition qui rend ce nombre minimal, et suppose qu'elle ne convienne pas : un élève connaît au moins deux personnes de son groupe.
4. Comme cet élève en connaît exactement trois en tout, combien en connaît-il dans l'autre groupe ? Que se passe-t-il si on le change de groupe ?

## Solution

**La quantité à minimiser.** Pour une répartition donnée des élèves en deux groupes, appelons
son **score** le nombre de paires d'élèves qui se connaissent et qui se trouvent dans le même
groupe.

Il n'y a qu'un nombre fini de répartitions possibles, donc il en existe une dont le score est
le plus petit possible. Fixons une telle répartition, et montrons qu'elle convient.

**Raisonnement par l'absurde.** Supposons le contraire : il existe un élève $A$ qui connaît
au moins deux personnes de son propre groupe.

Comme $A$ connaît exactement trois élèves en tout, il en connaît donc au plus une dans
l'autre groupe.

**On déplace $A$.** Changeons $A$ de groupe, sans rien changer d'autre. Quelles paires
changent de statut ?

- Les paires formées de $A$ et d'une connaissance de son ancien groupe : elles étaient
  comptées dans le score, elles ne le sont plus. On en perd donc **au moins deux**.
- Les paires formées de $A$ et d'une connaissance de son nouveau groupe : elles n'étaient
  pas comptées, elles le sont désormais. On en gagne **au plus une**.
- Les paires ne contenant pas $A$ : leurs deux membres n'ont pas bougé, leur statut est
  inchangé.

Le score diminue donc d'au moins $2 - 1 = 1$ : la nouvelle répartition a un score
strictement plus petit.

C'est impossible, puisque nous étions partis d'une répartition de score minimal.

**Conclusion.** Dans la répartition de score minimal, aucun élève ne connaît deux personnes
ou plus de son propre groupe : chaque élève connaît au plus une personne de son groupe.

## Going further

Le raisonnement n'utilise le nombre $3$ que par une seule propriété : il est impair, de sorte
qu'un élève qui en connaît au moins deux dans son groupe en connaît strictement moins dans
l'autre. Le même argument marche donc pour « chaque élève en connaît exactement $2m+1$ »,
avec la conclusion « chacun en connaît au plus $m$ dans son groupe ».
