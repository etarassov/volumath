---
id: "7417"
title: "Soixante-quatre lampes et leurs interrupteurs"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [parite, invariant, tableau, impossibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2010, groupe des débutants"
  reference: "stage_ete_2010.pdf, « Groupe des Débutants », exercices vus en cours de stratégies de base, exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2010.pdf"
---

## Statement

Un tableau carré de $8$ lignes sur $8$ colonnes porte une lampe dans chacune de ses $64$ cases.

Au bout de chaque ligne et au bout de chaque colonne se trouve un interrupteur, soit $16$
interrupteurs en tout. Actionner un interrupteur change l'état des $8$ lampes de sa ligne (ou de
sa colonne) : celles qui étaient allumées s'éteignent, celles qui étaient éteintes s'allument.

Au départ, une seule lampe est éteinte ; les $63$ autres sont allumées.

Peut-on, en actionnant les interrupteurs un nombre fini de fois, éteindre les $64$ lampes ?

## Hints

1. Ne cherche pas une suite d'actions : essaie de montrer que c'est impossible. Cherche donc une
   quantité qui ne peut pas changer.
2. Compte le nombre de lampes éteintes sur tout le tableau. Que devient ce nombre quand tu
   actionnes un interrupteur ?
3. Si une ligne contient $k$ lampes éteintes, combien en contiendra-t-elle après l'action de son
   interrupteur ? Compare les parités de ces deux nombres.

## Solution

**La réponse est non : c'est impossible.**

**Ce que fait un interrupteur.**

Regardons une ligne (le raisonnement est le même pour une colonne). Elle contient $8$ lampes.
Supposons que $k$ d'entre elles soient éteintes.

Quand on actionne l'interrupteur de cette ligne, chaque lampe change d'état : les $k$ lampes
éteintes s'allument, et les $8 - k$ lampes allumées s'éteignent. La ligne contient alors $8 - k$
lampes éteintes.

**Le nombre de lampes éteintes dans le reste du tableau ne bouge pas**, puisque l'interrupteur ne
touche que cette ligne.

**L'invariant.**

Notons $N$ le nombre total de lampes éteintes sur le tableau. Après l'action, ce nombre devient
$$N - k + (8 - k) = N + 8 - 2k.$$

La différence vaut $8 - 2k$, qui est **paire**. Donc $N$ change, mais **sa parité ne change
jamais**.

**Conclusion.**

Au départ, une seule lampe est éteinte : $N = 1$, qui est **impair**. Le nombre de lampes éteintes
restera donc impair pour toujours, quelles que soient les actions.

Si toutes les lampes étaient éteintes, on aurait $N = 64$, qui est pair. C'est impossible.

**On ne peut donc jamais éteindre les $64$ lampes.**

## Going further

Et si, au départ, **deux** lampes étaient éteintes ? La parité n'interdit plus rien. Trouve deux
positions de départ, l'une pour laquelle on y arrive et l'autre pour laquelle on n'y arrive pas,
et explique la différence.
