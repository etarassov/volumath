---
id: "7440"
title: "Un triangle équilatéral sur trois parallèles"
grade: 11
theme: geometry
difficulty: 4
duration_min: 35
tags: [rotation, construction, triangle-equilateral, paralleles]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique 2010, groupe des débutants, TD de géométrie"
  reference: "stage_ete_2010.pdf, groupe des débutants, TD de géométrie, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2010.pdf"
---

## Statement

On donne trois droites parallèles distinctes $(D_1)$, $(D_2)$ et $(D_3)$ dans le plan.

Construire un triangle équilatéral $A_1A_2A_3$ tel que $A_1$ soit sur $(D_1)$, $A_2$ sur $(D_2)$
et $A_3$ sur $(D_3)$.

On demande une construction à la règle et au compas, et la preuve qu'elle donne bien un triangle
équilatéral.

## Hints

1. Un triangle équilatéral, c'est un triangle qu'une rotation d'angle $60°$ autour de l'un de ses
   sommets laisse en place, en échangeant les deux autres sommets.
2. Choisis librement un point $A_1$ sur $(D_1)$, et suppose le problème résolu. La rotation de
   centre $A_1$ et d'angle $60°$ envoie alors $A_3$ sur $A_2$. Où se trouve donc l'image de la
   droite $(D_3)$ tout entière ?
3. L'image de $(D_3)$ par cette rotation est une droite qui doit passer par $A_2$. Et $A_2$ est
   aussi sur $(D_2)$. Tu tiens ton point.
4. Vérifie que ces deux droites se coupent vraiment : quel angle font-elles entre elles ?

## Solution

### L'idée

Un triangle équilatéral est caractérisé par une rotation : si $A_1A_2A_3$ est équilatéral, la
rotation de centre $A_1$ et d'angle $60°$ (dans le bon sens) envoie $A_3$ sur $A_2$.

On va utiliser cette remarque à l'envers. On se donne $A_1$, on ne connaît pas encore $A_3$, mais
on sait une chose sur lui : il est quelque part sur $(D_3)$. Son image par la rotation est donc
quelque part sur l'image de $(D_3)$. Et cette image, elle, on sait la construire.

### La construction

1. Choisir un point $A_1$ **quelconque** sur $(D_1)$.
2. Construire l'image $(D_3')$ de la droite $(D_3)$ par la rotation $r$ de centre $A_1$ et
   d'angle $60°$. Concrètement : on prend deux points de $(D_3)$, on construit leurs images par
   $r$, et on trace la droite qui les joint.
3. La droite $(D_3')$ coupe $(D_2)$ en un point : c'est $A_2$.
4. Le point $A_3$ est l'antécédent de $A_2$ par $r$, autrement dit l'image de $A_2$ par la
   rotation de centre $A_1$ et d'angle $-60°$.

### Pourquoi les droites $(D_3')$ et $(D_2)$ se coupent

Une rotation d'angle $60°$ fait tourner toute droite de $60°$. Donc $(D_3')$ fait un angle de
$60°$ avec $(D_3)$. Or $(D_2)$ est parallèle à $(D_3)$, donc $(D_3')$ fait aussi un angle de $60°$
avec $(D_2)$ : ces deux droites ne sont pas parallèles, elles se coupent, et en un seul point.

La construction aboutit donc toujours.

### Pourquoi le triangle obtenu est équilatéral

Par construction, $r(A_3) = A_2$.

- Une rotation conserve les distances, et son centre est $A_1$. Donc
  $$A_1A_3 = A_1A_2.$$
- L'angle de la rotation est $60°$, et son centre est $A_1$, donc
  $$\widehat{A_3A_1A_2} = 60°.$$

Le triangle $A_1A_2A_3$ est donc isocèle en $A_1$, avec un angle au sommet de $60°$. Ses deux
angles à la base sont égaux et leur somme vaut $180° - 60° = 120°$ : chacun vaut $60°$.

Les trois angles valent $60°$ : **le triangle $A_1A_2A_3$ est équilatéral.**

### Il reste à vérifier les appartenances

- $A_1$ est sur $(D_1)$ : c'est ainsi qu'on l'a choisi.
- $A_2$ est sur $(D_2)$ : c'est l'intersection de $(D_2)$ avec $(D_3')$.
- $A_3$ est sur $(D_3)$ : en effet $A_2$ est sur $(D_3') = r\big((D_3)\big)$, donc son antécédent
  $A_3$ est sur $(D_3)$.

**La construction répond bien à la question.**

## Going further

1. Le point $A_1$ a été choisi librement sur $(D_1)$, et le sens de rotation aussi. Il y a donc
   une infinité de solutions. Montrer qu'elles ont toutes la même taille, autrement dit que la
   longueur du côté ne dépend pas du choix de $A_1$. (Indication : que se passe-t-il si on
   translate $A_1$ le long de $(D_1)$ ?)
2. Si les trois parallèles sont à distances $d$ et $d$ l'une de l'autre (la droite $(D_2)$ étant
   au milieu), calculer la longueur du côté en fonction de $d$.
