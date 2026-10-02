---
id: "7841"
title: "Trois points sur chaque droite : tout est aligné"
grade: 11
theme: geometry
difficulty: 5
duration_min: 60
tags: [principe-de-l-extremum, alignement, distance-minimale, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, première période, groupe A « stratégies de base », mardi 18 matin (Arsène Pierrot), exercice 8 (théorème de Sylvester-Gallai)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Soit $E$ un ensemble **fini** de points du plan tel que, pour tout couple $(A, B)$ de points
distincts de $E$, il existe un troisième point $C$ de $E$ situé sur la droite $(AB)$.

Montrer que tous les points de $E$ sont alignés.

*Autrement dit : si aucune droite ne porte exactement deux points de $E$, alors une seule droite
porte tous les points de $E$.*

## Hints

1. Raisonne par l'absurde : suppose que les points de $E$ ne sont pas tous alignés.
2. Considère alors tous les couples $(P, \Delta)$ formés d'une droite $\Delta$ passant par au
   moins deux points de $E$ et d'un point $P$ de $E$ qui n'est **pas** sur $\Delta$. Pourquoi
   y en a-t-il au moins un, et pourquoi y en a-t-il un nombre fini ?
3. Chaque couple a une distance associée : celle de $P$ à $\Delta$, strictement positive.
   Choisis un couple qui **minimise** cette distance.
4. Note $H$ le pied de la perpendiculaire à $\Delta$ issue de $P$. Par hypothèse, $\Delta$ porte
   au moins trois points de $E$. Montre que deux d'entre eux sont du même côté de $H$ sur
   $\Delta$, au sens large.
5. Appelle-les $B$ et $C$, avec $B$ situé entre $H$ et $C$ (au sens large). Compare alors la
   distance de $B$ à la droite $(PC)$ avec la distance $PH$.

## Solution

**Étape 1 : la mise en place.**

Raisonnons par l'absurde et supposons que les points de $E$ ne sont pas tous alignés.

Appelons *couple admissible* tout couple $(P, \Delta)$ où $\Delta$ est une droite portant au
moins deux points de $E$, et $P$ un point de $E$ n'appartenant pas à $\Delta$.

- *Il en existe au moins un.* Prenons deux points distincts $A$ et $B$ de $E$. Comme les points
  ne sont pas tous alignés, il existe un point $P$ de $E$ hors de la droite $(AB)$, et
  $(P, (AB))$ est admissible.
- *Il y en a un nombre fini.* $E$ est fini, donc il n'y a qu'un nombre fini de droites portant
  au moins deux de ses points (au plus autant que de couples de points), et un nombre fini de
  choix pour $P$.

À chaque couple admissible on associe la distance $d(P, \Delta)$, qui est strictement positive
puisque $P \notin \Delta$. D'après le principe de l'extremum, il existe un couple admissible
$(P, \Delta)$ pour lequel cette distance est **minimale**. On le fixe pour la suite.

**Étape 2 : trois points sur $\Delta$.**

Notons $H$ le pied de la perpendiculaire à $\Delta$ issue de $P$, de sorte que
$d(P, \Delta) = PH$.

La droite $\Delta$ porte au moins deux points de $E$, disons $A$ et $B$. L'hypothèse de
l'énoncé appliquée au couple $(A, B)$ fournit un troisième point de $E$ sur $\Delta$. Donc
$\Delta$ porte **au moins trois points** de $E$.

**Étape 3 : deux d'entre eux sont du même côté de $H$.**

Le point $H$ partage la droite $\Delta$ en deux demi-droites fermées d'origine $H$. Chacun des
trois points de $E$ situés sur $\Delta$ appartient à l'une des deux. Par le principe des
tiroirs, deux d'entre eux, appelons-les $B$ et $C$, sont sur la **même** demi-droite fermée
d'origine $H$.

Quitte à échanger leurs noms, supposons $HB \leq HC$. Alors $B$ appartient au segment $[HC]$
(éventuellement $B = H$), et $B \neq C$.

**Étape 4 : on fabrique un couple admissible plus petit.**

Considérons la droite $(PC)$. Elle porte les deux points $P$ et $C$ de $E$, donc c'est une
droite admissible. Et $B$ n'est pas dessus : en effet $B$ est sur $\Delta$, la droite $(PC)$
coupe $\Delta$ au seul point $C$ (car $P \notin \Delta$), et $B \neq C$.

Le couple $(B, (PC))$ est donc admissible. Comparons sa distance à $PH$.

*D'abord, $d(H, (PC)) < PH$.* Le triangle $PHC$ est rectangle en $H$. La distance de $H$ à la
droite $(PC)$ est la longueur de la hauteur issue de $H$ dans ce triangle rectangle, c'est-à-dire
la distance de $H$ à l'hypoténuse. Elle est strictement inférieure à la longueur du côté $[HP]$,
puisque le segment perpendiculaire est le plus court chemin de $H$ à $(PC)$ et que $P$ est sur
$(PC)$ sans être le pied de cette perpendiculaire (le pied est strictement à l'intérieur de
l'hypoténuse).

*Ensuite, $d(B, (PC)) \leq d(H, (PC))$.* Le point $B$ est sur le segment $[HC]$, et $C$ est sur
la droite $(PC)$ donc à distance nulle de celle-ci. Quand un point parcourt le segment $[HC]$ de
$H$ vers $C$, sa distance à la droite $(PC)$ décroît linéairement de $d(H,(PC))$ à $0$. Donc
$$d(B, (PC)) \leq d(H, (PC)) .$$

En combinant :
$$d\big(B, (PC)\big) < PH = d(P, \Delta) .$$

**Étape 5 : la contradiction.**

Le couple $(B, (PC))$ est admissible et sa distance est strictement inférieure à celle du couple
$(P, \Delta)$, que nous avions choisi minimal. C'est absurde.

**Conclusion.** L'hypothèse de départ était fausse : tous les points de $E$ sont alignés.

## Going further

Ce résultat s'appelle le **théorème de Sylvester-Gallai**. Sylvester l'a posé comme question en
1893, et il est resté sans réponse pendant une quarantaine d'années. La démonstration ci-dessus,
due à L. M. Kelly, est aujourd'hui considérée comme la plus courte.

L'hypothèse « $E$ fini » est indispensable : l'ensemble de tous les points d'un plan à
coordonnées entières vérifie la condition de l'énoncé sans être aligné.
