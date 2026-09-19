---
id: "0359"
title: "Le parallélogramme des milieux"
grade: 9
theme: geometry
difficulty: 3
duration_min: 30
tags: [milieux, droite-des-milieux, parallelogramme, quadrilatere]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 8–9 класс, второе полугодие, часть II, пособие для преподавателей"
  reference: "AU2.pdf, листок 4, задача 6"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

$ABCD$ est un quadrilatère quelconque. On note $K$, $L$, $M$, $N$ les milieux respectifs des côtés $[AB]$, $[BC]$, $[CD]$ et $[DA]$.

![Le quadrilatère ABCD et les milieux de ses côtés](0359-figure-1.svg)

1. Montrer que $KLMN$ est un parallélogramme.
2. On note maintenant $P$ le milieu de la diagonale $[AC]$ et $Q$ le milieu de la diagonale $[BD]$. Montrer que $KPMQ$ est, lui aussi, un parallélogramme.

*Rappel (théorème de la droite des milieux) : dans un triangle, le segment qui joint les milieux de deux côtés est parallèle au troisième côté et mesure la moitié de sa longueur.*

## Hints

1. Un parallélogramme se reconnaît, entre autres, à ceci : **si deux côtés opposés d'un quadrilatère sont parallèles et de même longueur, alors c'est un parallélogramme.** Il suffit donc de s'occuper de deux côtés seulement.
2. Sur la figure, $K$ et $L$ sont les milieux de $[AB]$ et $[BC]$. Ce sont deux côtés d'un même triangle : lequel ? Que dit alors le théorème de la droite des milieux sur le segment $[KL]$ ?
3. Cherche un autre triangle dans lequel $[NM]$ est aussi une droite des milieux. Compare les deux résultats.
4. Pour la question 2, cherche un triangle contenant à la fois $K$ et $P$, puis un triangle contenant à la fois $Q$ et $M$. Les diagonales du quadrilatère donnent les côtés qu'il faut.

## Solution

**L'outil unique : le théorème de la droite des milieux.**

Et le critère qu'on va utiliser à chaque fois :

> Si un quadrilatère a deux côtés opposés parallèles et de même longueur, alors c'est un parallélogramme.

Il suffit donc, dans chaque question, de s'occuper d'une seule paire de côtés opposés.

**Question 1. $KLMN$ est un parallélogramme.**

Traçons mentalement la diagonale $[AC]$ : elle coupe le quadrilatère en deux triangles, $ABC$ et $ACD$.

*Dans le triangle $ABC$ :* $K$ est le milieu de $[AB]$ et $L$ est le milieu de $[BC]$. Le segment $[KL]$ est donc une droite des milieux, et

$$KL \parallel AC \qquad \text{et} \qquad KL = \frac{AC}{2}.$$

*Dans le triangle $ACD$ :* $N$ est le milieu de $[DA]$ et $M$ est le milieu de $[CD]$. Le segment $[NM]$ est donc aussi une droite des milieux, et

$$NM \parallel AC \qquad \text{et} \qquad NM = \frac{AC}{2}.$$

Les segments $[KL]$ et $[NM]$ sont tous les deux parallèles à $(AC)$, donc parallèles entre eux, et ils ont la même longueur $\dfrac{AC}{2}$.

Or $[KL]$ et $[NM]$ sont deux côtés opposés du quadrilatère $KLMN$. Donc **$KLMN$ est un parallélogramme**.

**Question 2. $KPMQ$ est un parallélogramme.**

Cette fois, ce sont les diagonales de $ABCD$ qui vont servir de troisièmes côtés. On s'intéresse au côté $[BC]$.

*Dans le triangle $ABC$ :* $K$ est le milieu de $[AB]$ et $P$ est le milieu de $[AC]$. Donc $[KP]$ est une droite des milieux :

$$KP \parallel BC \qquad \text{et} \qquad KP = \frac{BC}{2}.$$

*Dans le triangle $DBC$ :* $Q$ est le milieu de $[DB]$ et $M$ est le milieu de $[DC]$. Donc $[QM]$ est une droite des milieux :

$$QM \parallel BC \qquad \text{et} \qquad QM = \frac{BC}{2}.$$

![Les milieux de deux côtés opposés et des deux diagonales](0359-figure-2.svg)

Les segments $[KP]$ et $[QM]$ sont donc parallèles et de même longueur. Ce sont deux côtés opposés du quadrilatère $KPMQ$. Donc **$KPMQ$ est un parallélogramme**.

**Conclusion.** Dans n'importe quel quadrilatère, les milieux des quatre côtés forment un parallélogramme, et les milieux de deux côtés opposés joints aux milieux des deux diagonales en forment un autre. Dans les deux cas, la démonstration tient en une phrase : deux droites des milieux d'un même segment sont parallèles et de même longueur.

**Un cas particulier à connaître.** Si $ABCD$ est un parallélogramme, ses diagonales se coupent en leur milieu, donc $P$ et $Q$ sont confondus : le « parallélogramme » $KPMQ$ est alors aplati. C'est le seul cas où la question 2 dégénère.

## Going further

1. Montrer que le périmètre du parallélogramme $KLMN$ vaut $AC + BD$.
2. On suppose que les deux segments $[KM]$ et $[LN]$, qui joignent les milieux des côtés opposés de $ABCD$, ont la même longueur. Montrer qu'alors les diagonales $[AC]$ et $[BD]$ sont perpendiculaires. *Indication : $[KM]$ et $[LN]$ sont les diagonales du parallélogramme $KLMN$ ; que devient un parallélogramme dont les diagonales sont de même longueur ?*
