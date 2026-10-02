---
id: "4212"
title: "La diagonale de la boîte"
grade: 8
theme: geometry
difficulty: 2
duration_min: 15
tags: [pythagore, espace, pave-droit]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Perimeter and Circumference"
  reference: "Handout-2142-1822.pdf, exercice 8"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2142-1822.pdf"
---

## Statement

Une boîte a la forme d'un pavé droit de $6$ cm sur $8$ cm sur $24$ cm.

Quelle est la distance entre un sommet de la boîte et le sommet le plus éloigné de celui-ci ?

## Hints

1. Fais un dessin en perspective de la boîte et place les deux sommets : ils sont diagonalement
   opposés, on ne peut pas aller de l'un à l'autre en suivant une seule arête ni une seule face.
2. Commence par la diagonale du fond de la boîte, le rectangle de $6$ cm sur $8$ cm. Combien
   mesure-t-elle ?
3. Cette diagonale du fond, l'arête verticale de $24$ cm et la diagonale cherchée forment un
   triangle rectangle. Applique une deuxième fois le théorème de Pythagore.

## Solution

Notons la boîte $ABCDEFGH$, avec un fond rectangulaire $ABCD$ de $6$ cm sur $8$ cm, et une
hauteur de $24$ cm. On cherche la longueur qui relie le sommet $A$ au sommet $G$, celui qui lui
fait face en diagonale.

**Première étape : la diagonale du fond.**

Le fond est un rectangle de côtés $6$ cm et $8$ cm. Le triangle $ABC$ est rectangle en $B$, donc
d'après le théorème de Pythagore
$$AC^2 = 6^2 + 8^2 = 36 + 64 = 100, \qquad AC = 10 \text{ cm}.$$

**Deuxième étape : la diagonale de la boîte.**

L'arête $[CG]$ est verticale, donc perpendiculaire au plan du fond, et en particulier
perpendiculaire à $(AC)$. Le triangle $ACG$ est donc rectangle en $C$, avec $AC = 10$ cm et
$CG = 24$ cm. Pythagore de nouveau :
$$AG^2 = AC^2 + CG^2 = 10^2 + 24^2 = 100 + 576 = 676,$$
$$AG = \sqrt{676} = 26 \text{ cm}.$$

**Conclusion.** Les deux sommets les plus éloignés de la boîte sont à $\mathbf{26}$ cm l'un de
l'autre.

## Going further

En reprenant les deux étapes avec des lettres, montre que pour un pavé droit de dimensions $a$,
$b$ et $c$, la grande diagonale mesure
$$\sqrt{a^2 + b^2 + c^2}.$$
Vérifie ensuite que $(6, 8, 24, 26)$ n'est pas le seul quadruplet d'entiers qui marche : par
exemple $(1, 2, 2)$ donne une diagonale de $3$.
