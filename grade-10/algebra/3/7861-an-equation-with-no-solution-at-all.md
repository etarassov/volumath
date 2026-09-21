---
id: "7861"
title: "Une équation qui n'a aucune solution"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [identite-remarquable, somme-de-carres, equation, developpement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015, La Muraille"
  reference: "stage_ete_2015.pdf, « La Muraille », exercice 4 (résolu par Théodore Fougereux et Arthur Léonard)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Déterminer tous les couples de nombres réels $(a, b)$ tels que
$$2a^2 + 2b^2 + 2(b - a - ab) + 2 = 0.$$

## Hints

1. Développe tout, et range les termes : il y a un $a^2$, un $b^2$, un $ab$, un $a$, un $b$ et une
   constante. Combien de chaque ?
2. Un carré est toujours positif ou nul. Donc une somme de carrés ne peut valoir $0$ que d'une
   seule façon. Laquelle ?
3. Le terme en $ab$ vaut $-2ab$ : cela suggère de faire apparaître $(a - b)^2$. Écris
   $(a - b)^2$ et regarde ce qu'il reste à placer.
4. Il reste à répartir ce qui manque entre un carré en $a$ seul et un carré en $b$ seul.

## Solution

Développons d'abord le membre de gauche :
$$2a^2 + 2b^2 + 2(b - a - ab) + 2 = 2a^2 + 2b^2 - 2ab - 2a + 2b + 2.$$

**L'idée.** Essayons d'écrire cette expression comme une somme de carrés. Le terme $-2ab$ ne peut
venir que de $(a - b)^2 = a^2 - 2ab + b^2$. Posons donc ce carré de côté et voyons ce qui reste :
$$(2a^2 + 2b^2 - 2ab - 2a + 2b + 2) - (a^2 - 2ab + b^2) = a^2 + b^2 - 2a + 2b + 2.$$
Ce qui reste se sépare en une partie en $a$ et une partie en $b$ :
$$a^2 - 2a + 1 \;+\; b^2 + 2b + 1 \;=\; (a - 1)^2 + (b + 1)^2.$$

On a donc l'identité
$$2a^2 + 2b^2 + 2(b - a - ab) + 2 = (a - b)^2 + (a - 1)^2 + (b + 1)^2.$$

On peut la vérifier en développant le membre de droite :
$$(a-b)^2 + (a-1)^2 + (b+1)^2 = (a^2 - 2ab + b^2) + (a^2 - 2a + 1) + (b^2 + 2b + 1),$$
ce qui fait bien $2a^2 + 2b^2 - 2ab - 2a + 2b + 2$.

**La conclusion.** L'équation devient
$$(a - b)^2 + (a - 1)^2 + (b + 1)^2 = 0.$$
Un carré est toujours positif ou nul, donc une somme de trois carrés vaut $0$ uniquement si chacun
des trois carrés vaut $0$. Il faudrait donc avoir en même temps
$$a = b, \qquad a = 1, \qquad b = -1.$$
Les deux dernières conditions donnent $a = 1$ et $b = -1$, qui ne sont pas égaux : la première
condition est violée.

**Il n'existe aucun couple $(a, b)$ de nombres réels vérifiant l'équation.**

## Going further

L'expression de départ n'est donc jamais nulle ; comme elle est une somme de carrés, elle est même
toujours strictement positive. Quelle est sa plus petite valeur ?

Il faut rendre $(a-b)^2 + (a-1)^2 + (b+1)^2$ le plus petit possible. En prenant $a = b$ pour annuler
le premier carré, il reste $(a-1)^2 + (a+1)^2 = 2a^2 + 2$, minimal en $a = 0$ et valant alors $2$.
On peut vérifier qu'on ne fait pas mieux en s'écartant de $a = b$ : le minimum de l'expression vaut
$\tfrac{4}{3}$, atteint pour $a = \tfrac{1}{3}$ et $b = -\tfrac{1}{3}$. Le retrouver est un bon
exercice de plus.
