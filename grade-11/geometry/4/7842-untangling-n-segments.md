---
id: "7842"
title: "Relier les points sans jamais se croiser"
grade: 11
theme: geometry
difficulty: 4
duration_min: 40
tags: [principe-de-l-extremum, inegalite-triangulaire, minimum, appariement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, première période, groupe A « stratégies de base », mardi 18 matin (Arsène Pierrot), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

On donne dans le plan $2n$ points
$$A_1, A_2, \ldots, A_n \qquad \text{et} \qquad B_1, B_2, \ldots, B_n ,$$
tels que trois quelconques d'entre eux ne sont jamais alignés.

Montrer qu'on peut renuméroter les points $B_1, \ldots, B_n$ de sorte que les $n$ segments
$$[A_1B_1], \ [A_2B_2], \ \ldots, \ [A_nB_n]$$
ne se croisent jamais deux à deux.

## Hints

1. Il n'y a qu'un nombre fini de renumérotations possibles des $B_i$ : exactement $n!$. Dans une
   collection finie, on peut toujours en choisir une qui rend une certaine quantité minimale.
2. Quelle quantité choisir ? Une qui diminue quand on « défait » un croisement. Essaie la somme
   des longueurs $A_1B_1 + A_2B_2 + \cdots + A_nB_n$.
3. Suppose que dans la numérotation minimale deux segments $[A_iB_i]$ et $[A_jB_j]$ se croisent
   en un point $X$. Échange les étiquettes de $B_i$ et $B_j$ : que deviennent les deux segments ?
4. Compare $A_iB_j + A_jB_i$ à $A_iB_i + A_jB_j$ en passant par le point $X$ et en utilisant
   l'inégalité triangulaire. Pourquoi peut-on garantir une inégalité **stricte** ?

## Solution

**Étape 1 : on choisit la numérotation qui minimise la longueur totale.**

Une renumérotation des $B_i$ est une façon d'apparier chaque $A_i$ à un $B$ distinct. Il y en a
$n!$, donc un nombre fini. Pour chacune, on peut calculer la longueur totale
$$L = A_1B_1 + A_2B_2 + \cdots + A_nB_n .$$

D'après le principe de l'extremum, il existe une renumérotation pour laquelle $L$ est
**minimale**. Fixons-la et montrons qu'elle n'a aucun croisement.

**Étape 2 : on suppose un croisement et on échange.**

Supposons par l'absurde que deux segments $[A_iB_i]$ et $[A_jB_j]$ se coupent en un point $X$.
Comme ils se coupent, $X$ appartient aux deux segments.

Échangeons les étiquettes de $B_i$ et $B_j$ : la nouvelle numérotation apparie $A_i$ avec $B_j$
et $A_j$ avec $B_i$, et laisse tous les autres appariements inchangés. La nouvelle longueur
totale vaut
$$L' = L - \left(A_iB_i + A_jB_j\right) + \left(A_iB_j + A_jB_i\right) .$$

**Étape 3 : l'échange raccourcit strictement.**

L'inégalité triangulaire appliquée deux fois, en passant par $X$, donne
$$A_iB_j \leq A_iX + XB_j \qquad \text{et} \qquad A_jB_i \leq A_jX + XB_i .$$

En additionnant et en regroupant autrement :
$$A_iB_j + A_jB_i \leq \left(A_iX + XB_i\right) + \left(A_jX + XB_j\right) .$$

Or $X$ appartient au segment $[A_iB_i]$, donc $A_iX + XB_i = A_iB_i$ ; de même
$A_jX + XB_j = A_jB_j$. On obtient
$$A_iB_j + A_jB_i \leq A_iB_i + A_jB_j .$$

*Pourquoi cette inégalité est-elle stricte ?* L'inégalité triangulaire $A_iB_j \leq A_iX + XB_j$
est une égalité seulement si $X$ appartient au segment $[A_iB_j]$, c'est-à-dire si $A_i$, $X$ et
$B_j$ sont alignés. Mais $X$ est sur la droite $(A_iB_i)$, donc cela signifierait que $B_j$ est
sur la droite $(A_iB_i)$ : les trois points $A_i$, $B_i$, $B_j$ seraient alignés, ce que
l'énoncé interdit.

L'inégalité est donc stricte :
$$A_iB_j + A_jB_i < A_iB_i + A_jB_j , \qquad \text{donc} \qquad L' < L .$$

**Étape 4 : la contradiction.**

On a construit une renumérotation de longueur totale strictement plus petite que $L$, alors que
$L$ était minimale. C'est absurde.

**Conclusion.** La numérotation de longueur totale minimale ne présente aucun croisement : elle
répond à la question.

*Remarque.* La démonstration ne dit pas comment trouver cette numérotation, seulement qu'elle
existe. En pratique, l'échange décrit à l'étape 2 fournit un algorithme : partir d'une
numérotation quelconque et défaire les croisements un par un. Comme la longueur totale diminue
strictement à chaque échange et qu'il n'y a qu'un nombre fini de numérotations, le procédé
s'arrête, et il s'arrête forcément sur une numérotation sans croisement.
