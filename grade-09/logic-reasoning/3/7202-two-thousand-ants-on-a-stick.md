---
id: "7202"
title: "Deux mille dix-sept fourmis sur un bâton"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [fourmis, changement de point de vue, invariant]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Première journée », exercices d'échauffement, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

$2017$ fourmis sont posées sur un bâton long de $10$ mètres. Au signal, elles se mettent toutes
en marche, chacune vers la gauche ou vers la droite, toutes exactement à la même vitesse.

- Quand deux fourmis se retrouvent face à face, elles font toutes les deux demi-tour et
  repartent en sens inverse.
- Quand une fourmi arrive au bout du bâton, elle tombe.

Est-on sûr que toutes les fourmis finiront par tomber ?

## Hints

1. Commence petit : deux fourmis qui marchent l'une vers l'autre, puis trois fourmis. Que se
   passe-t-il ?
2. Regarde une rencontre de très loin, sans lunettes. Deux points se rapprochent, se touchent,
   puis s'éloignent. Vu d'aussi loin, quelle différence y a-t-il entre « elles font demi-tour »
   et « elles se traversent » ?
3. Si les fourmis se traversaient au lieu de rebondir, chacune marcherait tout droit jusqu'au
   bord. Combien de temps cela prendrait-il, au maximum ?

## Solution

**L'idée : rendre les fourmis interchangeables.**

Les fourmis sont toutes identiques et vont toutes à la même vitesse. Imaginons qu'au moment
d'une rencontre, au lieu de faire demi-tour, les deux fourmis échangent leurs noms et se
traversent.

Vu de l'extérieur, on voit exactement la même chose : à chaque instant, l'ensemble des points
occupés par des fourmis est le même dans les deux histoires. Seule change l'étiquette collée sur
chaque fourmi, et cette étiquette ne nous intéresse pas, puisqu'on demande seulement si tout le
monde finit par tomber.

**Dans l'histoire où elles se traversent.**

Chaque fourmi part dans une direction et ne change jamais d'avis. Elle avance donc tout droit
jusqu'au bord du bâton, et elle tombe. Comme le bâton mesure $10$ mètres, aucune fourmi ne
parcourt plus de $10$ mètres : si les fourmis avancent de $v$ mètres par seconde, tout est fini
au bout de $10/v$ secondes au plus.

**Retour à l'histoire d'origine.**

À cet instant-là, dans l'histoire des traversées, il ne reste plus personne sur le bâton. Comme
les deux histoires donnent à chaque instant les mêmes points occupés, il ne reste plus personne
non plus dans l'histoire des demi-tours.

**Oui : toutes les fourmis finissent par tomber, et cela prend au plus le temps qu'il faut à une
fourmi pour parcourir $10$ mètres.**

## Going further

Le nombre $2017$ n'a servi à rien, ni la longueur $10$ : la conclusion vaut pour n'importe quel
nombre de fourmis sur un bâton de n'importe quelle longueur.

En revanche, la question « quelle fourmi tombe de quel côté ? » est beaucoup plus difficile,
parce que là, justement, les étiquettes comptent.
