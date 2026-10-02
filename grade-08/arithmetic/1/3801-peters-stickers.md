---
id: "3801"
title: "Les autocollants de Pierre"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 5
tags: [echanges, comptage, suites]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Problem Solving: Think Outside the Box"
  reference: "Handout-4165-3921.pdf, problème 1 (réponse dans Handout-4188-3921.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4165-3921.pdf"
---

## Statement

Pierre échange des autocollants avec ses amis. À chaque échange, il donne un autocollant et il en reçoit cinq en retour.

Au départ, Pierre possède un seul autocollant.

Combien d'autocollants aura-t-il après $30$ échanges ?

## Hints

1. Combien Pierre a-t-il d'autocollants après un seul échange ? Et après deux échanges ?
2. Un échange lui en fait donner $1$ et recevoir $5$. De combien sa collection grossit-elle à chaque échange ?
3. Sa collection grossit toujours de la même quantité : il suffit donc de multiplier, puis d'ajouter ce qu'il avait au départ.

## Solution

**L'idée : regarder ce que change un seul échange.**

**Étape 1. Un échange.**

À chaque échange, Pierre donne $1$ autocollant et en reçoit $5$. Sa collection change donc de

$$5 - 1 = 4$$

autocollants. Autrement dit, **chaque échange lui rapporte $4$ autocollants**.

On vérifie sur le début :

| Après | Nombre d'autocollants |
| --- | --- |
| $0$ échange | $1$ |
| $1$ échange | $1 - 1 + 5 = 5$ |
| $2$ échanges | $5 - 1 + 5 = 9$ |
| $3$ échanges | $9 - 1 + 5 = 13$ |

On retrouve bien un gain de $4$ à chaque fois : $1$, $5$, $9$, $13$, …

**Étape 2. Trente échanges.**

Les $30$ échanges rapportent en tout

$$4 \times 30 = 120$$

autocollants, qui s'ajoutent à celui du départ :

$$1 + 120 = 121.$$

**Conclusion.** Après $30$ échanges, Pierre possède $121$ autocollants.

## Going further

1. Au bout de combien d'échanges Pierre aura-t-il exactement $401$ autocollants ?
2. Pierre pourra-t-il un jour posséder exactement $200$ autocollants ? Explique.
