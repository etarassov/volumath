---
id: "7101"
title: "Seize élèves et trois exercices"
grade: 8
theme: logic-reasoning
difficulty: 1
duration_min: 10
tags: [tiroirs, denombrement, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2016"
  reference: "stage_junior_2016.pdf, « Débutants : stratégies de base », vendredi après-midi (Colin Davalo), exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2016.pdf"
---

## Statement

Seize élèves passent une épreuve qui comporte trois exercices. Chaque élève a résolu
exactement un des trois exercices.

Montrer qu'au moins six élèves ont résolu le même exercice.

## Hints

1. Répartis les seize élèves en trois groupes : ceux qui ont résolu le premier exercice,
   ceux qui ont résolu le deuxième, ceux qui ont résolu le troisième.
2. Suppose que la conclusion est fausse. Combien d'élèves y aurait-il au maximum dans
   chaque groupe ? Et en tout ?

## Solution

Chaque élève a résolu exactement un exercice, donc chaque élève appartient à exactement un
des trois groupes suivants :

- le groupe de ceux qui ont résolu l'exercice 1,
- le groupe de ceux qui ont résolu l'exercice 2,
- le groupe de ceux qui ont résolu l'exercice 3.

Les trois groupes se partagent donc les seize élèves, sans oubli ni répétition.

Supposons que la conclusion soit fausse : aucun exercice n'aurait été résolu par six élèves
ou plus. Chaque groupe contiendrait alors au plus cinq élèves, et les trois groupes réunis
contiendraient au plus

$$5 + 5 + 5 = 15$$

élèves. Or ils en contiennent seize. C'est impossible.

Donc l'un des trois groupes contient au moins six élèves : **au moins six élèves ont résolu
le même exercice.**

## Going further

C'est le principe des tiroirs : si l'on range $kn + 1$ objets dans $n$ tiroirs, un tiroir au
moins contient $k + 1$ objets. Ici $n = 3$ et $k = 5$, et $16 = 5 \times 3 + 1$.
