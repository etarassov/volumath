---
id: "4016"
title: "Quatre points, six distances"
grade: 9
theme: geometry
difficulty: 4
duration_min: 25
tags: [distance, triangle-equilateral, pythagore, configuration]
adapted_from: null
see_also: []
same_as: ["3825"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 2A, Week 1 Competition"
  reference: "Handout-3131-2694.pdf, problème 21 (réponse racine de 3 dans le barème en fin de fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3131-2694.pdf"
---

## Statement

Quatre points distincts du plan sont placés de telle façon que les six segments qui les
relient deux à deux aient pour longueurs

$$a, \quad a, \quad a, \quad a, \quad 2a \quad \text{et} \quad b,$$

où $a$ est un nombre strictement positif.

Que vaut le rapport $\dfrac{b}{a}$ ?

## Hints

1. Quatre points donnent bien six segments : compte-les pour t'en convaincre.
2. Appelle $P$ et $R$ les deux points distants de $2a$. Si un point $X$ vérifie $PX = XR = a$, où se trouve-t-il nécessairement ?
3. Suppose que les deux autres points soient tous les deux à distance $a$ de $P$ et de $R$. Que se passe-t-il ? Pourquoi est-ce impossible ?
4. Il reste donc un seul des deux points qui soit à distance $a$ à la fois de $P$ et de $R$. Le quatrième point forme alors un triangle équilatéral avec deux points déjà placés.

## Solution

**Étape 1. Préparer le terrain.**

Quatre points $P$, $Q$, $R$, $S$ donnent $6$ segments : $PQ$, $PR$, $PS$, $QR$, $QS$, $RS$.

Appelons $P$ et $R$ les deux points tels que $PR = 2a$. Les cinq autres segments valent donc
$a$ (quatre fois) et $b$ (une fois).

**Étape 2. Un point à distance $a$ de $P$ et de $R$ est forcément le milieu de $[PR]$.**

Si un point $X$ vérifie $PX = XR = a$, alors

$$PX + XR = 2a = PR.$$

L'inégalité triangulaire $PX + XR \geqslant PR$ est donc une égalité : cela ne se produit
que si $X$ appartient au segment $[PR]$. Comme de plus $PX = XR$, le point $X$ est le
**milieu** de $[PR]$.

**Étape 3. Éliminer un cas.**

Les quatre segments de longueur $a$ se répartissent parmi $PQ$, $PS$, $QR$, $QS$, $RS$.

*Supposons que le segment de longueur $b$ soit $[QS]$.* Alors les quatre autres valent $a$,
c'est-à-dire $PQ = QR = a$ et $PS = SR = a$. D'après l'étape 2, $Q$ est le milieu de $[PR]$
et $S$ aussi : les points $Q$ et $S$ seraient confondus, ce qui contredit l'énoncé (les
quatre points sont distincts). **Ce cas est impossible.**

**Étape 4. Le seul cas restant.**

Le segment de longueur $b$ est donc l'un des quatre segments qui joignent $\{P ; R\}$ à
$\{Q ; S\}$. Quitte à renommer les points, disons $RS = b$. Les quatre autres valent $a$ :

$$PQ = QR = a \qquad \text{et} \qquad PS = QS = a.$$

De $PQ = QR = a$ et de l'étape 2, on tire que $Q$ est le milieu de $[PR]$.

De $PS = QS = a$ et de $PQ = a$, on tire que le triangle $PQS$ a ses trois côtés égaux à
$a$ : c'est un triangle **équilatéral**.

**Étape 5. Calculer $b$.**

Plaçons-nous dans un repère où

$$P = (0 ; 0), \qquad Q = (a ; 0), \qquad R = (2a ; 0).$$

Le point $S$ est le sommet du triangle équilatéral de base $[PQ]$. Son abscisse est celle du
milieu de $[PQ]$, soit $\dfrac{a}{2}$, et sa hauteur $h$ vérifie, par le théorème de
Pythagore dans le demi-triangle équilatéral,

$$h^2 + \left(\frac{a}{2}\right)^2 = a^2, \qquad \text{donc} \qquad h^2 = \frac{3a^2}{4}, \qquad h = \frac{a\sqrt3}{2}.$$

Ainsi $S = \left(\dfrac{a}{2} \, ; \dfrac{a\sqrt3}{2}\right)$, et

$$b^2 = RS^2 = \left(2a - \frac{a}{2}\right)^2 + \left(\frac{a\sqrt3}{2}\right)^2
= \frac{9a^2}{4} + \frac{3a^2}{4} = \frac{12a^2}{4} = 3a^2 .$$

Donc $b = a\sqrt3$.

**Réponse : $\dfrac{b}{a} = \sqrt3$.**

## Going further

La figure finale est facile à retenir : on aligne trois points $P$, $Q$, $R$ régulièrement
espacés de $a$, puis on pose sur $[PQ]$ un triangle équilatéral de côté $a$, dont le sommet
est $S$. La longueur cherchée est la distance de $S$ au point le plus éloigné, $R$, et elle
vaut $a\sqrt3$.

On peut aussi l'obtenir sans repère : le pied de la hauteur issue de $S$ dans le triangle
$PQS$ est le milieu $M$ de $[PQ]$, donc $MR = MQ + QR = \dfrac{a}{2} + a = \dfrac{3a}{2}$,
et le théorème de Pythagore dans le triangle $SMR$, rectangle en $M$, donne
$$SR^2 = \left(\frac{3a}{2}\right)^2 + \left(\frac{a\sqrt3}{2}\right)^2 = \frac{9a^2 + 3a^2}{4} = 3a^2 .$$
