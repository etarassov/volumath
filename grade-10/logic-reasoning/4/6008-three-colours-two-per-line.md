---
id: "6008"
title: "Trois couleurs, deux par droite"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 45
tags: [couleurs, plan, droites, construction, directions]
adapted_from: null
see_also: ["6103"]
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular, « Problem Circle » de Joshua Zucker, d'après un exposé de Tatiana Shubin"
  reference: "MTCircularSummer2011.pdf, p. 4 : « Is it possible to paint each point in the plane, using three different colors, so that every straight line in the plane has exactly two different colors? » (aucune solution publiée)"
  url: "https://mathcircles.org/"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircularSummer2011.pdf"
---

## Statement

On veut peindre **chaque point du plan** avec l'une de trois couleurs, rouge, bleu ou vert, les trois couleurs étant toutes utilisées, de façon que

> **chaque droite du plan porte exactement deux couleurs** : ni une seule, ni les trois.

1. Un premier essai : on peint en rouge les points d'ordonnée $y > 1$, en bleu ceux vérifiant $-1 \leqslant y \leqslant 1$, et en vert ceux d'ordonnée $y < -1$. Montrer que cet essai échoue de deux façons différentes.
2. Est-ce seulement possible ? Si oui, donner un coloriage qui convient et le vérifier.

Il s'agit d'un de ces problèmes où l'on ne sait pas d'avance s'il faut chercher une construction ou une démonstration d'impossibilité. Il vaut la peine d'essayer les deux.

## Hints

1. Pour la question 1, regarde d'abord une droite horizontale, puis une droite oblique.
2. Pour la question 2 : une droite doit porter deux couleurs, pas trois. Une façon de l'obtenir est qu'une des trois couleurs soit **très rare**, au point qu'une droite quelconque la manque toujours.
3. Essaie de peindre un seul point d'une couleur, et regarde ce que deviennent les droites qui passent par ce point et celles qui n'y passent pas.
4. Les droites qui passent par ce point forment un faisceau. Que se passe-t-il si l'on partage ce faisceau en deux familles, une par couleur restante ?
5. Une droite qui ne passe pas par le point spécial est parallèle à **une seule** droite du faisceau. Elle coupe donc toutes les autres.

## Solution

### Question 1 : pourquoi les trois bandes ne marchent pas

**Une droite horizontale**, par exemple $y = 5$, est entièrement dans la bande rouge : elle ne porte qu'**une** couleur. C'est interdit.

**Une droite non horizontale**, par exemple $y = x$, prend toutes les ordonnées possibles : elle contient des points d'ordonnée supérieure à $1$, des points d'ordonnée comprise entre $-1$ et $1$, et des points d'ordonnée inférieure à $-1$. Elle porte donc les **trois** couleurs. C'est interdit aussi.

Cet essai échoue dans les deux sens à la fois, ce qui est plutôt encourageant : il faut un coloriage bien moins symétrique.

### Question 2 : oui, c'est possible

Voici une construction.

Choisissons un point $O$, l'origine du repère.

- Le point $O$ tout seul est **rouge**.
- Un point $P$ différent de $O$ est **bleu** si la droite $(OP)$ a un coefficient directeur positif ou nul (autrement dit si $(OP)$ n'est pas verticale et monte, ou est horizontale).
- Un point $P$ différent de $O$ est **vert** si la droite $(OP)$ est verticale ou a un coefficient directeur strictement négatif.

Autrement dit : on regarde chaque point depuis $O$, et c'est la **direction** dans laquelle on le voit qui décide de sa couleur. Les directions se partagent en deux familles : celles qui montent, en bleu, et celles qui descendent ou sont verticales, en vert. Le seul point rouge du plan est $O$.

Les trois couleurs sont bien utilisées : $O$ est rouge, $(1,1)$ est bleu, $(1,-1)$ est vert.

**Vérification, cas 1 : une droite $d$ qui passe par $O$.**

Tous les points de $d$ autres que $O$ se voient depuis $O$ dans la direction de $d$, toujours la même. Ils ont donc tous la même couleur, bleue si $d$ monte, verte si $d$ descend ou est verticale. En ajoutant $O$, qui est rouge, la droite $d$ porte exactement deux couleurs : rouge et bleu, ou rouge et vert.

**Vérification, cas 2 : une droite $d$ qui ne passe pas par $O$.**

D'abord, $d$ ne contient aucun point rouge, puisque le seul point rouge est $O$.

Ensuite, parmi toutes les droites passant par $O$, il y en a exactement **une** qui est parallèle à $d$ : toutes les autres coupent $d$, et le point d'intersection n'est pas $O$ puisque $O$ n'appartient pas à $d$.

Or il y a une infinité de directions qui montent et une infinité de directions qui descendent. En écartant une seule direction, celle de $d$, il en reste encore dans les deux familles. Donc $d$ rencontre au moins une droite du faisceau qui monte, ce qui lui donne un point bleu, et au moins une droite du faisceau qui descend, ce qui lui donne un point vert.

La droite $d$ porte donc exactement deux couleurs : bleu et vert.

**Conclusion.** Tous les cas sont traités : chaque droite du plan porte exactement deux couleurs. Le coloriage demandé existe bel et bien.

### D'où vient l'idée

La clé est de rendre une couleur si rare qu'elle ne gêne presque jamais : un seul point rouge, et il ne se trouve que sur les droites qui passent par lui. Ces droites-là doivent alors n'avoir qu'une seule autre couleur, ce qui force chaque droite du faisceau à être monochrome en dehors de $O$. Il ne reste plus qu'à répartir le faisceau en deux familles, en veillant à ce qu'aucune des deux ne se réduise à une seule direction — sinon une droite parallèle à cette direction unique raterait toute la famille et ne porterait plus qu'une couleur.

## Going further

1. Que se passe-t-il si l'on met une seule droite du faisceau dans la famille bleue et toutes les autres dans la famille verte ? Trouver la droite du plan qui pose alors problème.
2. Reprendre la même idée avec **quatre** couleurs, chaque droite devant en porter exactement deux : on garde $O$ rouge et on partage le faisceau en trois familles. Où le raisonnement se casse-t-il ? Cela ne prouve pas que c'est impossible, mais cela montre qu'il faudrait une idée neuve.
3. Trouver un coloriage du plan en **deux** couleurs dans lequel chaque droite porte les deux couleurs. (Piste : peindre un point selon que sa distance au point $O$ est un nombre rationnel ou non.)
