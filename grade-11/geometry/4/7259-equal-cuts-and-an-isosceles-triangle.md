---
id: "7259"
title: "Deux longueurs égales et un triangle isocèle"
grade: 11
theme: geometry
difficulty: 4
duration_min: 35
tags: [cocyclicite, angle-inscrit, triangles-semblables, triangles-isometriques]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2021"
  reference: "Polycopie-mini.pdf, « Entraînement du groupe A », exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-mini.pdf"
---

## Statement

Soit $ABC$ un triangle. On place un point $D$ sur le segment $[AB]$ et un point $E$ sur le segment
$[AC]$ de telle sorte que
$$BD = CE .$$

Le cercle circonscrit au triangle $ADE$ recoupe le cercle circonscrit au triangle $ABC$ en $A$ et en
un second point $F$.

Montrer que $FB = FC$.

## Hints

1. Fais une figure soignée. Le point $F$ appartient aux deux cercles à la fois : c'est lui qui va
   relier les deux configurations.
2. On voudrait prouver que les triangles $FDB$ et $FEC$ sont isométriques. Ils ont déjà un côté
   égal, $BD = CE$. Il suffit donc de deux angles.
3. Dans le cercle $(ABC)$, compare $\widehat{FBA}$ et $\widehat{FCA}$ : ils interceptent le même
   arc.
4. Dans le cercle $(ADE)$, compare $\widehat{FDA}$ et $\widehat{FEA}$. Puis passe aux angles
   supplémentaires $\widehat{FDB}$ et $\widehat{FEC}$.

## Solution

Plaçons-nous dans la configuration de la figure, où $F$ est sur l'arc $BC$ ne contenant pas $A$,
où $D$ est strictement entre $A$ et $B$, et $E$ strictement entre $A$ et $C$.

**Un premier couple d'angles égaux.**

Les points $A$, $B$, $F$, $C$ sont sur un même cercle. Les angles inscrits $\widehat{FBA}$ et
$\widehat{FCA}$ interceptent le même arc $FA$, donc
$$\widehat{FBA} = \widehat{FCA} .$$

Or $D$ est sur le segment $[AB]$, donc la demi-droite $[BD)$ est la demi-droite $[BA)$ : ainsi
$\widehat{FBD} = \widehat{FBA}$. De même $E$ est sur $[AC]$, donc $\widehat{FCE} = \widehat{FCA}$.
On obtient
$$(\star) \qquad \widehat{FBD} = \widehat{FCE} .$$

**Un second couple d'angles égaux.**

Les points $A$, $D$, $F$, $E$ sont sur un même cercle. Les angles inscrits $\widehat{FDA}$ et
$\widehat{FEA}$ interceptent le même arc $FA$, donc
$$\widehat{FDA} = \widehat{FEA} .$$

Maintenant, $D$ est entre $A$ et $B$, donc les angles $\widehat{FDA}$ et $\widehat{FDB}$ sont
supplémentaires. De même, $E$ est entre $A$ et $C$, donc $\widehat{FEA}$ et $\widehat{FEC}$ sont
supplémentaires. En passant aux supplémentaires dans l'égalité précédente :
$$(\star\star) \qquad \widehat{FDB} = 180^\circ - \widehat{FDA} = 180^\circ - \widehat{FEA}
= \widehat{FEC} .$$

**Les deux triangles sont isométriques.**

Regardons les triangles $FDB$ et $FEC$. D'après $(\star)$ et $(\star\star)$, ils ont deux angles
égaux deux à deux :
$$\widehat{FBD} = \widehat{FCE} \qquad \text{et} \qquad \widehat{FDB} = \widehat{FEC} .$$

Ils sont donc **semblables**. Le troisième angle est alors lui aussi le même :
$\widehat{DFB} = \widehat{EFC}$.

Deux triangles semblables dont deux côtés correspondants sont égaux sont isométriques. Ici les
côtés $[DB]$ et $[EC]$ se correspondent (ils sont opposés aux angles égaux $\widehat{DFB}$ et
$\widehat{EFC}$), et par hypothèse $BD = CE$. Le rapport de similitude vaut donc $1$ :

**les triangles $FDB$ et $FEC$ sont isométriques.**

**Conclusion.**

Les côtés correspondants sont égaux, en particulier
$$FB = FC .$$

**Le triangle $FBC$ est donc isocèle en $F$.**

## Going further

Le point $F$ ne dépend pas vraiment de $D$ et $E$ : il est entièrement déterminé par le triangle
$ABC$ et la condition $BD = CE$. On peut en fait montrer que $F$ est le **milieu de l'arc $BC$**
qui ne contient pas $A$, puisque c'est le seul point du cercle circonscrit vérifiant $FB = FC$ de
ce côté-là.

Cela donne une méthode de construction : partant du milieu $F$ de l'arc $BC$, on trace un cercle
passant par $A$ et $F$ ; il coupe $[AB]$ en $D$ et $[AC]$ en $E$, et l'énoncé affirme qu'alors
$BD = CE$. La réciproque est vraie aussi.
