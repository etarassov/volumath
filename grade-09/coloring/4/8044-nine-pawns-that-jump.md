---
id: "8044"
title: "Neuf pions qui sautent sur l'échiquier"
grade: 9
theme: coloring
difficulty: 4
duration_min: 30
tags: [coloriage, invariant, parite, echiquier, saut]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, groupe A : logique et stratégies de base, jeudi 17 après-midi (Antoine Séré), exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Neuf pions occupent les neuf cases du carré $3 \times 3$ situé **en bas à gauche** d'un
échiquier $8 \times 8$.

À chaque étape, on choisit un pion, on lui fait sauter par-dessus une case **occupée** voisine
(horizontalement, verticalement ou en diagonale), et on le pose juste derrière, sur la case
suivante dans la même direction, qui doit être **libre**.

Peut-on, au bout d'un certain nombre d'étapes, amener les neuf pions sur le carré $3 \times 3$
situé en haut à gauche ? Et sur celui situé en haut à droite ?

## Hints

1. Un saut déplace un pion de deux cases exactement, dans l'une des huit directions. De combien
   son numéro de ligne change-t-il ?
2. Le coloriage habituel de l'échiquier, en cases noires et blanches, ne sert à rien ici.
   Essaie de colorier des **lignes entières**, une sur deux.
3. Compte les pions posés sur les lignes de numéro impair au départ, puis à l'arrivée.

## Solution

**Ce que fait un saut.** Numérotons les lignes de $1$ (en bas) à $8$ (en haut). Un saut déplace
un pion de deux cases dans une direction fixe :

- saut horizontal : la ligne ne change pas ;
- saut vertical : la ligne change de $2$ (vers le haut ou vers le bas) ;
- saut en diagonale : la ligne change de $2$ également.

Dans tous les cas, **le numéro de ligne d'un pion change de $0$ ou de $2$ : sa parité ne change
jamais.**

**Le coloriage.** Colorions en gris toutes les cases des lignes de numéro impair, c'est-à-dire
les lignes $1$, $3$, $5$ et $7$, et laissons les autres blanches. C'est un coloriage en
bandes horizontales, pas le damier habituel.

D'après ce qui précède, un pion qui est sur une case grise y reste, et un pion sur une case
blanche y reste aussi. Donc :

> **le nombre de pions posés sur des cases grises ne change jamais.**

**Au départ.** Les neuf pions occupent les lignes $1$, $2$ et $3$, à raison de trois pions par
ligne. Les lignes impaires parmi celles-ci sont les lignes $1$ et $3$, ce qui fait

$$3 + 3 = 6 \text{ pions sur des cases grises.}$$

**À l'arrivée.** Que l'on vise le carré du haut à gauche ou celui du haut à droite, les neuf
pions occuperaient les lignes $6$, $7$ et $8$, trois par ligne. La seule ligne impaire parmi
celles-ci est la ligne $7$, ce qui ferait

$$3 \text{ pions sur des cases grises.}$$

**La contradiction.** Il faudrait passer de $6$ à $3$ pions sur les cases grises, alors que ce
nombre ne bouge jamais.

**Les deux déplacements sont donc impossibles, celui vers le haut à gauche comme celui vers le
haut à droite.**

## Going further

Ce qui fait marcher l'argument, c'est que le saut déplace toujours d'un nombre **pair** de
cases. Le coloriage n'a servi qu'à rendre cette remarque visible : il ne dit rien de plus que
« la parité du numéro de ligne se conserve ».

Remarquons que les colonnes ne servent à rien ici : c'est pour cela que les deux questions ont
la même réponse. Si l'on demandait d'amener les pions sur le carré $3 \times 3$ du **bas à
droite** (lignes $1$, $2$, $3$ à nouveau), l'argument ne dirait plus rien, et il faudrait
chercher autre chose — ou trouver une suite de sauts qui marche.
