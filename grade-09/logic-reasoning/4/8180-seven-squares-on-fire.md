---
id: "8180"
title: "Sept cases en feu sur l'échiquier"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [monovariant, perimetre, echiquier, propagation, invariant]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe C"
  reference: "stage_ete_2018.pdf, chapitre V « Groupe C », section 3 « Combinatoire », cours « Monovariants et invariants », exercice 8 (le polycopié ne nomme pas l'auteur du cours). La solution imprimée dit que le périmètre « décroît » à chaque étape ; il peut en fait rester égal, et c'est bien « ne peut pas augmenter » qui est démontré ci-dessous."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Un échiquier $8 \times 8$ prend feu.

Au départ, quelques cases brûlent. Ensuite, de minute en minute :

> une case qui ne brûle pas prend feu dès qu'**au moins deux** de ses voisines brûlent.

Voisines veut dire : qui ont un côté commun. Deux cases qui ne se touchent que par un coin ne
sont pas voisines. Une case qui a pris feu brûle jusqu'à la fin.

1. Sept cases brûlent au départ. Le feu peut-il finir par gagner tout l'échiquier ?
2. Combien faut-il au minimum de cases en feu au départ pour que le feu puisse gagner tout
   l'échiquier ?

## Hints

1. Fais quelques essais sur un petit quadrillage. Tu verras vite que le feu s'étend beaucoup
   plus difficilement qu'on ne le croit : il lui faut deux voisines, pas une.
2. Cherche une quantité qui ne peut pas augmenter quand le feu s'étend. Regarde le **contour**
   de la zone en feu.
3. Le périmètre de la zone en feu, c'est le nombre de petits côtés qui séparent une case qui
   brûle d'une case qui ne brûle pas (ou de l'extérieur de l'échiquier).
4. Quand une case prend feu, elle apporte quatre nouveaux côtés au contour. Mais chaque
   voisine déjà en feu fait disparaître deux côtés du contour. Combien de voisines en feu
   faut-il, au minimum ?
5. Quel est le périmètre de l'échiquier tout entier ? Et le périmètre le plus grand possible
   pour sept cases ?
6. Pour la question 2, cherche une disposition de huit cases dont le périmètre vaut exactement
   celui de l'échiquier. Une diagonale, par exemple.

## Solution

**La bonne quantité : le périmètre.**

Appelons *zone en feu* l'ensemble des cases qui brûlent, et *périmètre* de cette zone le nombre
de petits côtés qui la bordent : on compte, pour chaque case en feu, ceux de ses quatre côtés
qui ne sont pas partagés avec une autre case en feu. Un côté au bord de l'échiquier compte
aussi.

Par exemple, une seule case en feu donne un périmètre de $4$. Deux cases en feu voisines
donnent $6$, car le côté commun ne borde plus la zone.

**Le périmètre ne peut pas augmenter.**

Regardons une case qui prend feu. Par la règle, elle a au moins deux voisines déjà en feu.
Ajoutons-la à la zone :

- ses quatre côtés arrivent, ce qui ferait $+4$ ;
- mais pour chaque voisine déjà en feu, deux côtés quittent le contour : le côté de la nouvelle
  case et le côté correspondant de la voisine, qui se retrouvent l'un contre l'autre à
  l'intérieur de la zone. Cela fait $-2$ par voisine en feu.

Si la case a $k$ voisines en feu, le périmètre varie donc de
$$4 - 2k.$$
Comme $k \geq 2$, cette variation vaut au plus $4 - 4 = 0$ : **le périmètre ne grandit jamais**.

(Si plusieurs cases prennent feu à la même minute, on les ajoute une par une : chacune a bien
au moins deux voisines en feu parmi les anciennes, donc le calcul reste valable.)

**Question 1 : sept cases ne suffisent jamais.**

Chaque case a quatre côtés, donc sept cases ont un périmètre d'au plus
$$7 \times 4 = 28.$$

L'échiquier tout entier, lui, est un carré de côté $8$ : son périmètre vaut
$$4 \times 8 = 32.$$

Or le périmètre ne peut pas augmenter. Partant d'au plus $28$, on ne peut donc jamais atteindre
$32$. **Avec sept cases au départ, le feu ne gagnera jamais tout l'échiquier.**

**Question 2 : huit cases suffisent, et huit est le minimum.**

Le même calcul donne la borne : avec $n$ cases au départ, le périmètre vaut au plus $4n$, et il
faut atteindre $32$, donc
$$4n \geq 32, \qquad \text{c'est-à-dire} \qquad n \geq 8.$$

Il reste à trouver huit cases qui embrasent tout. Prenons les huit cases d'une grande
diagonale. Numérotons les cases $(i, j)$, avec $i$ le numéro de ligne et $j$ le numéro de
colonne ; la diagonale est formée des cases $(1,1), (2,2), \ldots, (8,8)$.

- La case $(1,2)$ a pour voisines $(1,1)$ et $(2,2)$, toutes deux en feu : elle prend feu. De
  même toute case $(i, i+1)$, et symétriquement toute case $(i+1, i)$. Après une minute, toutes
  les cases voisines immédiates de la diagonale brûlent.
- Ensuite la case $(i, i+2)$ a pour voisines $(i, i+1)$ et $(i+1, i+2)$, qui viennent de
  prendre feu : elle prend feu à son tour.
- De proche en proche, les cases $(i, i+3)$, puis $(i, i+4)$, et ainsi de suite jusqu'aux deux
  coins opposés. Tout l'échiquier finit par brûler.

**Réponses : non, sept cases ne suffisent jamais ; il en faut au minimum huit.**

## Going further

Le raisonnement n'utilise nulle part que le plateau est de taille $8$. Sur un échiquier
$n \times n$, le périmètre du plateau plein vaut $4n$ et il faut donc au moins $n$ cases en feu
au départ ; la grande diagonale en fournit exactement $n$ qui conviennent. **Sur un plateau
$n \times n$, la réponse est donc $n$.**
