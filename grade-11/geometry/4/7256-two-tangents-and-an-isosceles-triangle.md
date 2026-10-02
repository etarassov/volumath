---
id: "7256"
title: "Deux tangentes, une parallèle et deux longueurs égales"
grade: 11
theme: geometry
difficulty: 4
duration_min: 35
tags: [angle-tangentiel, cocyclicite, paralleles, triangle-isocele]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2021"
  reference: "Polycopie-mini.pdf, groupe A, « Géométrie : chasse aux angles », exercice 11 (test de sélection belge 2021)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-mini.pdf"
---

## Statement

$ABC$ est un triangle. Les tangentes en $B$ et en $C$ à son cercle circonscrit se coupent en un
point $T$.

La parallèle à $(AB)$ passant par $T$ coupe la droite $(AC)$ en un point $S$.

Montrer que $AS = BS$.

## Hints

1. Pour montrer $AS = BS$, il suffit de montrer que le triangle $ASB$ est isocèle en $S$,
   c'est-à-dire que $\widehat{SAB} = \widehat{SBA}$.
2. Commence par montrer que les quatre points $S$, $B$, $C$, $T$ sont cocycliques. Pour cela,
   compare $\widehat{STB}$ et $\widehat{SCB}$, ou leurs supplémentaires.
3. Utilise le parallélisme entre $(TS)$ et $(AB)$ pour exprimer $\widehat{STB}$ en fonction de
   $\widehat{TBA}$.
4. Utilise le théorème de l'angle tangentiel en $B$ : $\widehat{TBC} = \widehat{BAC}$.

## Solution

Faisons la figure avec un triangle dont les trois angles sont aigus. Le point $T$ est alors de
l'autre côté de $(BC)$ par rapport à $A$, et le point $S$ appartient au segment $[AC]$. C'est
cette configuration que nous traitons ; les autres se ramènent aux mêmes calculs, avec des angles
supplémentaires au lieu d'angles égaux (voir la remarque finale).

**Étape 1 : les points $S$, $B$, $C$, $T$ sont cocycliques.**

*L'angle en $T$, grâce au parallélisme.* Les droites $(TS)$ et $(AB)$ sont parallèles et $(TB)$
est une sécante, donc les angles $\widehat{STB}$ et $\widehat{TBA}$ sont supplémentaires :
$$\widehat{STB} = 180^\circ - \widehat{TBA} .$$

*Décomposons $\widehat{TBA}$.* La demi-droite $[BC)$ est comprise entre $[BT)$ et $[BA)$, donc
$$\widehat{TBA} = \widehat{TBC} + \widehat{CBA} .$$
Or $(TB)$ est tangente au cercle circonscrit en $B$, donc, par le théorème de l'angle tangentiel,
$$\widehat{TBC} = \widehat{BAC} .$$
D'où
$$\widehat{TBA} = \widehat{BAC} + \widehat{ABC} = 180^\circ - \widehat{ACB} ,$$
la dernière égalité venant de la somme des angles du triangle $ABC$.

*L'angle en $T$, suite.*
$$\widehat{STB} = 180^\circ - \widehat{TBA} = 180^\circ - (180^\circ - \widehat{ACB})
= \widehat{ACB} .$$

*L'angle en $C$.* Le point $S$ appartient au segment $[AC]$, donc la demi-droite $[CS)$ est la
demi-droite $[CA)$, et
$$\widehat{SCB} = \widehat{ACB} .$$

*Conclusion de l'étape.* On a donc
$$\widehat{STB} = \widehat{SCB} ,$$
et les points $T$ et $C$ sont du même côté de la droite $(SB)$. D'après la réciproque du théorème
de l'angle inscrit :

**les points $S$, $B$, $C$, $T$ sont cocycliques.**

**Étape 2 : le triangle $ASB$ est isocèle.**

*L'angle en $A$.* La droite $(TC)$ est tangente au cercle circonscrit de $ABC$ en $C$, donc par
l'angle tangentiel,
$$\widehat{TCB} = \widehat{BAC} .$$
Comme $S$ est sur le segment $[AC]$, la demi-droite $[AS)$ est la demi-droite $[AC)$, donc
$\widehat{SAB} = \widehat{CAB}$, et
$$\widehat{SAB} = \widehat{TCB} .$$

*Transport par le cercle des quatre points.* Dans le cercle passant par $S$, $B$, $C$, $T$, les
angles inscrits $\widehat{TCB}$ et $\widehat{TSB}$ interceptent le même arc $TB$ et sont du même
côté, donc
$$\widehat{TCB} = \widehat{TSB} .$$

*Retour au parallélisme.* Les droites $(TS)$ et $(AB)$ sont parallèles et $(SB)$ est une sécante.
Les angles alternes-internes $\widehat{TSB}$ et $\widehat{SBA}$ sont donc égaux :
$$\widehat{TSB} = \widehat{SBA} .$$

**Conclusion.**

En enchaînant les trois égalités :
$$\widehat{SAB} = \widehat{TCB} = \widehat{TSB} = \widehat{SBA} .$$

Le triangle $ASB$ a deux angles égaux, en $A$ et en $B$ : il est isocèle en $S$, et

$$\boxed{AS = BS} .$$

## Going further

Le point $T$, intersection des tangentes en $B$ et en $C$, s'appelle le **pôle** de la droite
$(BC)$ par rapport au cercle circonscrit. Il apparaît constamment en géométrie olympique.

On peut aussi lire l'énoncé à l'envers : dire que $AS = BS$, c'est dire que $S$ est sur la
médiatrice de $[AB]$. L'exercice affirme donc que la parallèle à $(AB)$ menée par $T$ coupe $(AC)$
exactement sur la médiatrice de $[AB]$, ce qui n'est pas du tout évident sur une figure.

Enfin, un mot sur les configurations. Si le triangle a un angle obtus, le point $S$ peut sortir du
segment $[AC]$, et certaines des égalités d'angles ci-dessus deviennent des égalités entre angles
supplémentaires. Les **angles orientés de droites**, qui se calculent modulo $180^\circ$, font
disparaître cette distinction : la démonstration s'écrit alors une fois pour toutes.
