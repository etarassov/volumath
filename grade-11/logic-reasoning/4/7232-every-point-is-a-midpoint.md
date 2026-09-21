---
id: "7232"
title: "Chaque point est le milieu de deux autres"
grade: 11
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [extremum, absurde, ensemble infini, milieu, distance maximale]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Avancés », mercredi 25 matin (Vincent Jugé), principe de l'extremum, exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

Soit $E$ un ensemble non vide de points du plan. On suppose que **chaque point de $E$ est le
milieu de deux autres points de $E$**.

Montrer que $E$ est infini.

## Hints

1. Raisonne par l'absurde : suppose que $E$ soit fini.
2. Dans un ensemble fini de points, il n'y a qu'un nombre fini de distances entre deux points.
   L'une d'elles est donc la plus grande.
3. Prends deux points $A$ et $B$ de $E$ réalisant cette distance maximale. Applique l'hypothèse
   au point $A$.
4. Si $A$ est le milieu de $[PQ]$ avec $P, Q \in E$, compare $PB$ (ou $QB$) à $AB$.

## Solution

**Mise en place.**

Raisonnons par l'absurde et supposons $E$ fini. Comme $E$ est non vide et que chaque point de $E$
est le milieu de deux autres points de $E$, l'ensemble $E$ contient au moins trois points, donc
au moins deux points distincts.

**La plus grande distance.**

Il n'y a qu'un nombre fini de paires de points de $E$, donc un nombre fini de distances. Notons
$$d = \max \{ XY \ :\ X, Y \in E \}$$
et choisissons deux points $A$ et $B$ de $E$ avec $AB = d$. Comme $E$ contient deux points
distincts, $d > 0$.

**On applique l'hypothèse à $A$.**

Par hypothèse, $A$ est le milieu de deux points $P$ et $Q$ de $E$ :
$$A = \text{milieu de } [PQ], \qquad P \neq Q .$$
En particulier $AP = AQ = \dfrac{PQ}{2} > 0$, et $P$, $A$, $Q$ sont alignés dans cet ordre.

**La contradiction.**

Regardons les distances $PB$ et $QB$. Comme $A$ est le milieu de $[PQ]$, le point $B$ vérifie la
**relation de la médiane** :
$$PB^2 + QB^2 = 2\,AB^2 + \frac{PQ^2}{2} .$$

Le terme $\dfrac{PQ^2}{2}$ est strictement positif, donc
$$PB^2 + QB^2 > 2\,AB^2 = 2d^2 .$$

Si l'on avait $PB \leqslant d$ **et** $QB \leqslant d$, alors $PB^2 + QB^2 \leqslant 2d^2$, ce qui
contredit l'inégalité ci-dessus.

Donc $PB > d$ ou $QB > d$. Mais $P$, $Q$ et $B$ sont tous les trois dans $E$, et $d$ est la plus
grande distance entre deux points de $E$ : c'est impossible.

**L'hypothèse « $E$ est fini » est donc fausse : $E$ est infini.**

## Going further

Sans la relation de la médiane, on peut raisonner plus simplement. Comme $P$, $A$, $Q$ sont
alignés avec $A$ au milieu, le point $B$ est « du côté » de $P$ ou du côté de $Q$ ; plus
précisément, l'un des deux angles $\widehat{PAB}$ et $\widehat{QAB}$ est supérieur ou égal à
$90^\circ$, puisqu'ils sont supplémentaires. Disons $\widehat{PAB} \geqslant 90^\circ$. Dans le
triangle $PAB$, le côté opposé au plus grand angle est le plus grand côté, donc
$$PB > AB = d ,$$
ce qui donne la même contradiction.

Un exemple d'ensemble vérifiant l'hypothèse : l'ensemble de tous les points à coordonnées
entières. Chaque point $(a,b)$ est bien le milieu de $(a-1,b)$ et $(a+1,b)$. Il est en effet
infini.
