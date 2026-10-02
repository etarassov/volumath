---
id: "13831"
title: "La seconde diagonale d'un cerf-volant"
grade: 8
theme: geometry
difficulty: 2
duration_min: 15
tags: [pythagore, mediatrice, quadrilatere]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2019, éliminatoires"
  reference: "2019-06_coupe_animath_printemps_2019_elim.pdf, exercices lycée, exercice 15 ; corrigé dans le même fichier, solution 15 (Olympiades mathématiques belges, éliminatoire miDi 2001, Q23)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/06/coupe_animath_printemps_2019_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-06_coupe_animath_printemps_2019_elim.pdf"
---

## Statement

$ABCD$ est un quadrilatère convexe tel que

$$AB = BC = 25\ \text{cm}, \qquad CD = DA = 52\ \text{cm} \qquad \text{et} \qquad AC = 40\ \text{cm}.$$

Quelle est la longueur de la diagonale $[BD]$ ?

## Hints

1. Le point $B$ est à la même distance de $A$ et de $C$. Sur quelle droite se trouve-t-il ? Et
   le point $D$ ?
2. La droite $(BD)$ est la médiatrice de $[AC]$. Elle coupe $[AC]$ en son milieu $E$, à angle
   droit.
3. Calcule $BE$ et $DE$ avec le théorème de Pythagore. Pourquoi faut-il les additionner ?

## Solution

**La droite $(BD)$.** On a $BA = BC$, donc $B$ est sur la médiatrice de $[AC]$. De même,
$DA = DC$, donc $D$ est aussi sur cette médiatrice. Les points $B$ et $D$ sont distincts, donc
la droite $(BD)$ **est** la médiatrice de $[AC]$. Elle coupe $[AC]$ en son milieu $E$ et elle
lui est perpendiculaire. On a $AE = 40 \div 2 = 20\ \text{cm}$.

**Les deux morceaux de $[BD]$.** Le triangle $ABE$ est rectangle en $E$. D'après le théorème de
Pythagore,

$$BE^2 = AB^2 - AE^2 = 625 - 400 = 225, \qquad \text{donc} \qquad BE = 15\ \text{cm}.$$

De même, dans le triangle $ADE$ rectangle en $E$,

$$DE^2 = AD^2 - AE^2 = 2704 - 400 = 2304, \qquad \text{donc} \qquad DE = 48\ \text{cm}.$$

**On additionne.** Le quadrilatère $ABCD$ est convexe, donc ses diagonales $[AC]$ et $[BD]$ se
coupent. Les points $B$ et $D$ sont ainsi de part et d'autre de la droite $(AC)$, et $E$ est
entre $B$ et $D$. Par conséquent

$$BD = BE + ED = 15 + 48 = 63\ \text{cm}.$$

**La diagonale $[BD]$ mesure $63\ \text{cm}$.**

## Going further

Sans le mot « convexe », il y aurait une deuxième figure : $B$ et $D$ du même côté de $(AC)$,
le point $B$ étant alors à l'intérieur du triangle $ACD$. Que vaudrait $BD$ dans ce cas ?
