---
id: "7257"
title: "Deux parallèles et un cercle"
grade: 10
theme: geometry
difficulty: 3
duration_min: 25
tags: [cocyclicite, angle-inscrit, paralleles, chasse-aux-angles]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2021"
  reference: "Polycopie-mini.pdf, « Entraînement du groupe A », exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-mini.pdf"
---

## Statement

$(AB)$ et $(CD)$ sont deux droites parallèles.

Un cercle passant par $A$ et $B$ recoupe la droite $(AC)$ en un point $E$ et la droite $(BD)$ en
un point $F$.

Montrer que les points $C$, $D$, $F$ et $E$ sont cocycliques.

## Hints

1. Fais une figure. Pour montrer que quatre points sont cocycliques, cherche deux angles égaux
   qui interceptent le même segment.
2. Le segment à regarder est $[DE]$, ou bien $[EF]$ : essaie de comparer $\widehat{DCE}$ et
   $\widehat{DFE}$.
3. Dans le cercle donné, quels angles interceptent le même arc ? Pense à $\widehat{BFE}$ et
   $\widehat{BAE}$.
4. Le parallélisme relie $\widehat{BAE}$ à un angle en $C$.

## Solution

Plaçons-nous dans la configuration où les quatre points $A$, $E$, $B$, $F$ sont dans cet ordre sur
le cercle, avec $C$ et $D$ du même côté de $(AB)$.

**Dans le cercle donné.**

Les points $A$, $E$, $B$, $F$ sont cocycliques. Les angles inscrits $\widehat{BFE}$ et
$\widehat{BAE}$ interceptent le même arc $BE$, donc
$$\widehat{BFE} = \widehat{BAE} .$$

**Le parallélisme.**

Les droites $(AB)$ et $(CD)$ sont parallèles, et $(AC)$ est une sécante. Les angles
alternes-internes $\widehat{BAE}$ et $\widehat{DCE}$ sont donc égaux :
$$\widehat{BAE} = \widehat{DCE} .$$

*(Remarquons que $E$ est sur la droite $(AC)$, donc la demi-droite $[AE)$ est portée par $(AC)$ ;
de même $[CE)$. Les deux angles ci-dessus sont bien ceux que forment $(AC)$ avec $(AB)$ d'une part
et avec $(CD)$ d'autre part.)*

**Le point $F$.**

Le point $F$ est sur la droite $(BD)$. Dans notre configuration, $B$ et $D$ sont du même côté de
$F$, donc les demi-droites $[FB)$ et $[FD)$ sont confondues et
$$\widehat{DFE} = \widehat{BFE} .$$

**Conclusion.**

En enchaînant :
$$\widehat{DFE} = \widehat{BFE} = \widehat{BAE} = \widehat{DCE} .$$

Les points $C$ et $F$ voient donc le segment $[DE]$ sous le même angle, et ils sont du même côté
de la droite $(DE)$. D'après la réciproque du théorème de l'angle inscrit :

**les points $C$, $D$, $F$ et $E$ sont cocycliques.**

## Going further

L'énoncé cache une jolie symétrie : on pourrait échanger les rôles de $A$ et $B$, de $C$ et $D$,
de $E$ et $F$, et la démonstration serait la même.

On peut aussi voir le résultat comme un cas particulier d'un théorème plus général : si deux
cercles se coupent en $E$ et $F$, et si deux droites passant respectivement par $E$ et par $F$
recoupent les deux cercles, les quatre points obtenus forment deux cordes parallèles. Ici on lit
l'énoncé dans l'autre sens : deux cordes parallèles fournissent un second cercle.
