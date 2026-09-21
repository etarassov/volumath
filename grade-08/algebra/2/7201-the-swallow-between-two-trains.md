---
id: "7201"
title: "L'hirondelle entre les deux trains"
grade: 8
theme: algebra
difficulty: 2
duration_min: 15
tags: [vitesse, distance, duree, astuce]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Première journée », exercices d'échauffement, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

Un TGV quitte Paris en direction de Marseille, à $800$ km de là, à la vitesse de $150$ km/h.
Au même instant, un train régional quitte Marseille en direction de Paris à $50$ km/h.

Une hirondelle était posée sur le TGV. Elle décolle au moment du départ et vole à $200$ km/h
vers Marseille. Dès qu'elle atteint le train régional, elle fait demi-tour et repart vers le
TGV ; dès qu'elle l'atteint, elle repart vers le train régional, et ainsi de suite.

Quelle distance l'hirondelle aura-t-elle parcourue au moment où les deux trains se croisent ?

## Hints

1. On ne te demande pas où l'hirondelle fait demi-tour, ni combien de fois. On te demande une
   distance.
2. Une distance, c'est une vitesse multipliée par une durée. La vitesse de l'hirondelle ne
   change jamais : elle vaut toujours $200$ km/h.
3. Il ne reste donc qu'une chose à trouver : combien de temps l'hirondelle vole-t-elle ? Autrement
   dit, au bout de combien de temps les deux trains se croisent-ils ?

## Solution

**Quand les trains se croisent-ils ?**

Les deux trains roulent l'un vers l'autre. Chaque heure, le TGV avale $150$ km et le train
régional $50$ km : à eux deux, la distance qui les sépare diminue de
$$150 + 50 = 200 \text{ km par heure.}$$

Ils partent à $800$ km l'un de l'autre, donc ils se croisent au bout de
$$\frac{800}{200} = 4 \text{ heures.}$$

**Quelle distance l'hirondelle parcourt-elle ?**

L'hirondelle vole sans jamais s'arrêter, du départ jusqu'au croisement : elle vole donc pendant
exactement $4$ heures. Ses demi-tours ne changent rien à sa vitesse, qui reste $200$ km/h.

$$200 \times 4 = 800.$$

**L'hirondelle aura parcouru $800$ km.**

## Going further

Il existe aussi une façon compliquée de résoudre ce problème : calculer chaque aller, chaque
retour, et additionner une infinité de longueurs de plus en plus petites. Le résultat est le
même, mais le calcul est nettement plus long.

On raconte que le mathématicien John von Neumann, à qui on posait cette énigme, a donné la
réponse en quelques secondes. « Bravo, la plupart des gens essaient de sommer la série ! » lui
a-t-on dit. Et il aurait répondu : « Mais c'est ce que j'ai fait. »
