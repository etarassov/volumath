---
id: "0226"
title: "Deux bissectrices perpendiculaires"
grade: 8
theme: geometry
difficulty: 3
duration_min: 25
tags: [angles, bissectrice, demi-droites, demonstration, calcul-dangles]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Ast2017b.pdf, листок 27 «Измерение углов», задача 8, с. 77"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Quatre demi-droites $[OA)$, $[OB)$, $[OC)$ et $[OD)$ partent du même point $O$. Elles sont placées dans cet ordre, c'est-à-dire qu'en partant de $[OA)$ et en tournant toujours dans le même sens, on rencontre d'abord $[OB)$, puis $[OC)$, puis $[OD)$.

On sait que

$$\widehat{AOB} + \widehat{COD} = 180°.$$

On note $[OK)$ la bissectrice de l'angle $\widehat{AOC}$ et $[OL)$ la bissectrice de l'angle $\widehat{BOD}$.

Montrer que ces deux bissectrices sont perpendiculaires, c'est-à-dire que $\widehat{KOL} = 90°$.

![Les quatre demi-droites issues de O et les deux bissectrices](0226-figure-1.svg)

## Hints

1. Donne un nom aux trois angles que forment les demi-droites voisines : pose $a = \widehat{AOB}$, $b = \widehat{BOC}$ et $c = \widehat{COD}$. Que dit l'hypothèse avec ces lettres ?
2. Écris $\widehat{AOC}$ et $\widehat{BOD}$ en fonction de $a$, $b$ et $c$.
3. Repère chaque demi-droite par l'angle qu'elle fait avec $[OA)$, comme une graduation sur un cercle : $[OA)$ est à $0$, $[OB)$ est à $a$, $[OC)$ est à $a+b$, $[OD)$ est à $a+b+c$. À quelle graduation se trouve la bissectrice d'un angle ? C'est le milieu des deux graduations.
4. L'angle $\widehat{KOL}$ est la différence des deux graduations. Calcule cette différence : la lettre $b$ doit disparaître toute seule.

## Solution

**L'idée : graduer le tour du point $O$.**

Posons

$$a = \widehat{AOB}, \qquad b = \widehat{BOC}, \qquad c = \widehat{COD}.$$

L'hypothèse s'écrit alors $a + c = 180°$.

Repérons maintenant chaque demi-droite par l'angle qu'elle fait avec $[OA)$, en tournant dans le sens $A \to B \to C \to D$. C'est comme poser des graduations autour du point $O$ :

| demi-droite | $[OA)$ | $[OB)$ | $[OC)$ | $[OD)$ |
|---|---|---|---|---|
| graduation | $0$ | $a$ | $a+b$ | $a+b+c$ |

En effet $\widehat{AOC} = \widehat{AOB} + \widehat{BOC} = a+b$, et $\widehat{AOD} = a+b+c$.

**Où se trouvent les deux bissectrices ?**

La bissectrice d'un angle coupe cet angle en deux parts égales : sa graduation est donc la **moyenne** des graduations des deux côtés.

$[OK)$ est la bissectrice de $\widehat{AOC}$, dont les côtés sont aux graduations $0$ et $a+b$. Donc $[OK)$ est à la graduation

$$\frac{0 + (a+b)}{2} = \frac{a+b}{2}.$$

$[OL)$ est la bissectrice de $\widehat{BOD}$, dont les côtés sont aux graduations $a$ et $a+b+c$. Donc $[OL)$ est à la graduation

$$\frac{a + (a+b+c)}{2} = \frac{2a+b+c}{2}.$$

**L'angle entre les deux bissectrices.**

C'est la différence des deux graduations :

$$\widehat{KOL} = \frac{2a+b+c}{2} - \frac{a+b}{2} = \frac{2a+b+c-a-b}{2} = \frac{a+c}{2}.$$

Le $b$ a disparu : l'angle $\widehat{BOC}$ n'intervient pas du tout.

**Conclusion.**

Comme $a + c = 180°$, on obtient

$$\widehat{KOL} = \frac{180°}{2} = 90°.$$

Les deux bissectrices $[OK)$ et $[OL)$ sont donc bien perpendiculaires. Le résultat ne dépend ni de $a$, ni de $b$, ni de $c$ pris séparément : seule compte la somme $a+c$.

## Going further

1. Le calcul ci-dessus donne en réalité $\widehat{KOL} = \dfrac{\widehat{AOB} + \widehat{COD}}{2}$. Que vaut l'angle entre les deux bissectrices si $\widehat{AOB} + \widehat{COD} = 100°$ ?
2. Deux angles adjacents $\widehat{AOB}$ et $\widehat{BOC}$ sont supplémentaires (leur somme vaut $180°$). Montrer que leurs bissectrices sont perpendiculaires.
3. Deux droites se coupent en $O$ et forment deux paires d'angles opposés par le sommet. Montrer que les bissectrices de deux angles opposés par le sommet sont portées par une même droite.
