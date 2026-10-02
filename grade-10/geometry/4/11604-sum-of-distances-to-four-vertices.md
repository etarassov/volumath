---
id: "11604"
title: "La somme des distances aux quatre sommets"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [inegalite-triangulaire, vecteurs, maximum, quadrilatere, convexite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2012-2013-envoi5.pdf, Exercices communs, exercice 4 ; corrigé 2017-10_ofm-2012-2013-envoi5-corrige.pdf (solution réécrite avec les vecteurs, plus courte que celle du corrigé)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi5.pdf"
---

## Statement

$ABCD$ est un quadrilatère convexe. Pour tout point $M$ situé à l'intérieur de $ABCD$ ou sur son bord, on pose

$$f(M) = MA + MB + MC + MD.$$

Montrer que, pour tout tel point $M$, le nombre $f(M)$ est inférieur ou égal au plus grand des quatre nombres $f(A)$, $f(B)$, $f(C)$, $f(D)$.

Autrement dit, montrer que $f(M) \leqslant \max\left(f(A), f(B), f(C), f(D)\right)$.

## Hints

1. Commence par un cas plus simple : si $M$ est sur un segment $[UV]$, montre que $f(M)$ est inférieur ou égal à $f(U)$ ou à $f(V)$.
2. Pour cela, compare d'abord une seule distance $MX$ avec $UX$ et $VX$. Si $\overrightarrow{UM} = s\,\overrightarrow{UV}$ avec $0 \leqslant s \leqslant 1$, place le point $Q$ tel que $\overrightarrow{UQ} = s\,\overrightarrow{UX}$, et calcule le vecteur $\overrightarrow{MQ}$.
3. L'inégalité triangulaire dans $MQX$ donne $MX \leqslant s\,VX + (1-s)\,UX$. Additionne ces inégalités pour $X = A$, $B$, $C$ et $D$.
4. Pour un point $M$ quelconque du quadrilatère, découpe $ABCD$ en deux triangles avec la diagonale $[AC]$, puis trace la demi-droite d'origine $A$ qui passe par $M$.

## Solution

**Étape 1 : une seule distance, le long d'un segment.** Soient $U$ et $V$ deux points, $M$ un point du segment $[UV]$, et $X$ un point quelconque. Il existe un nombre $s$ entre $0$ et $1$ tel que $\overrightarrow{UM} = s\,\overrightarrow{UV}$. Montrons que

$$MX \leqslant (1 - s)\,UX + s\,VX.$$

On place le point $Q$ tel que $\overrightarrow{UQ} = s\,\overrightarrow{UX}$. Alors

$$\overrightarrow{MQ} = \overrightarrow{UQ} - \overrightarrow{UM} = s\,\overrightarrow{UX} - s\,\overrightarrow{UV} = s\,\overrightarrow{VX},$$

donc $MQ = s\,VX$. De plus $\overrightarrow{QX} = \overrightarrow{UX} - \overrightarrow{UQ} = (1 - s)\,\overrightarrow{UX}$, donc $QX = (1 - s)\,UX$.

L'inégalité triangulaire donne alors $MX \leqslant MQ + QX = s\,VX + (1 - s)\,UX$.

**Étape 2 : la fonction $f$ le long d'un segment.** On écrit l'inégalité de l'étape 1 pour $X = A$, $B$, $C$ et $D$, et on additionne :

$$f(M) \leqslant (1 - s)\,f(U) + s\,f(V).$$

Appelons $m$ le plus grand des deux nombres $f(U)$ et $f(V)$. Comme $1 - s \geqslant 0$ et $s \geqslant 0$,

$$(1 - s)\,f(U) + s\,f(V) \leqslant (1 - s)\,m + s\,m = m.$$

Donc, **pour tout point $M$ d'un segment $[UV]$, on a $f(M) \leqslant \max\left(f(U), f(V)\right)$** : le long d'un segment, $f$ ne dépasse jamais la plus grande de ses deux valeurs aux extrémités.

**Étape 3 : un point quelconque du quadrilatère.** Si $M = A$, il n'y a rien à démontrer. Sinon, comme $ABCD$ est convexe, la diagonale $[AC]$ le découpe en deux triangles $ABC$ et $ACD$, et $M$ est dans l'un des deux (ou sur leur bord). Supposons que ce soit $ABC$, l'autre cas est identique.

La demi-droite d'origine $A$ qui passe par $M$ sort du triangle $ABC$ par le côté opposé à $A$ : elle coupe $[BC]$ en un point $N$, et $M$ est sur le segment $[AN]$.

- Comme $M$ est sur $[AN]$, l'étape 2 donne $f(M) \leqslant \max\left(f(A), f(N)\right)$.
- Comme $N$ est sur $[BC]$, l'étape 2 donne $f(N) \leqslant \max\left(f(B), f(C)\right)$.

En regroupant, $f(M)$ est inférieur ou égal à l'un des nombres $f(A)$, $f(B)$, $f(C)$.

**Conclusion : pour tout point $M$ intérieur au quadrilatère ou sur son bord, $f(M) \leqslant \max\left(f(A), f(B), f(C), f(D)\right)$.**

## Going further

Le même raisonnement marche pour n'importe quel polygone convexe, et pour la somme des distances à n'importe quels points fixés du plan : c'est toujours en un sommet du polygone que cette somme est la plus grande. L'étape 2 dit qu'une telle somme de distances est une fonction **convexe** du point $M$.
