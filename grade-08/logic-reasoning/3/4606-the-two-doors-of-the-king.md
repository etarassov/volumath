---
id: "4606"
title: "Les deux portes du roi"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [logique, vrai-ou-faux, cas, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Beginners 2, Logic Puzzles: Wizards and Hats"
  reference: "Handout-2493-2192.pdf, exercice 2 de l'échauffement (réponse dans Handout-2550-2192.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2493-2192.pdf"
---

## Statement

Un roi propose à un prisonnier le choix entre deux portes. Derrière chaque porte se trouve soit
un tigre affamé, soit un trésor. Jamais rien d'autre, jamais les deux.

Sur chaque porte, le roi a fait écrire une pancarte.

- **Porte 1 :** « Au moins l'une des deux salles contient le trésor. »
- **Porte 2 :** « Il y a un tigre dans l'autre salle. »

« Les pancartes disent-elles la vérité ? » demande le prisonnier. « Elles sont soit toutes les
deux vraies, soit toutes les deux fausses », répond le roi.

Quelle porte le prisonnier doit-il ouvrir ?

## Hints

1. Le roi a donné une information très utile : les deux pancartes ont le même statut. Il n'y a
   donc que deux cas à examiner.
2. Commence par le cas « les deux pancartes sont fausses » et regarde ce que chacune dit alors.
3. Si la pancarte 1 est fausse, que contiennent les deux salles ?
4. Si la pancarte 2 est fausse, que contient la salle 1 ? Est-ce compatible avec ce que tu viens
   de trouver ?

## Solution

Attention à bien lire la pancarte 2 : elle est posée sur la porte 2, et « l'autre salle » désigne
donc la salle 1. Elle affirme : « il y a un tigre dans la salle 1 ».

**Premier cas : les deux pancartes sont fausses.**

- La pancarte 1 est fausse : il est faux qu'au moins une salle contienne le trésor. Donc
  **aucune** salle ne contient le trésor : il y a un tigre dans la salle 1 et un tigre dans la
  salle 2.
- La pancarte 2 est fausse : il est faux qu'il y ait un tigre dans la salle 1. Donc la salle 1
  contient le trésor.

Ces deux conclusions se contredisent : la salle 1 devrait contenir à la fois un tigre et le
trésor. Ce cas est donc impossible.

**Second cas : les deux pancartes sont vraies.**

C'est donc le cas qui se produit réellement.

- La pancarte 2 est vraie : il y a un tigre dans la salle 1.
- La pancarte 1 est vraie : au moins une salle contient le trésor. Comme ce n'est pas la
  salle 1, c'est la salle 2.

Tout est cohérent : tigre dans la salle 1, trésor dans la salle 2, et les deux pancartes disent
bien la vérité.

**Conclusion.** Le prisonnier doit ouvrir la **porte 2**, derrière laquelle se trouve le trésor.

## Going further

Remarque que le prisonnier n'a jamais eu besoin de savoir si le roi était honnête sur le contenu
des salles : il lui a suffi de la seule phrase « les deux pancartes ont le même statut ». Sans
cette phrase, le problème serait insoluble. Vérifie-le : trouve deux contenus différents des
salles qui rendent une pancarte vraie et l'autre fausse.
