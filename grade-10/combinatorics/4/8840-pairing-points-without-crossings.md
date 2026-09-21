---
id: "8840"
title: "Relier les points sans croisement"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [principe de lextremum, inegalite triangulaire, minimum, appariement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Principe de l'extremum » (Théo et Noam), exercice 10, p. 116"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

On considère $2n$ points du plan, trois d'entre eux n'étant jamais alignés.

Montrer qu'on peut les relier deux par deux par $n$ segments, de sorte que deux segments ne se croisent jamais.

## Hints

1. Il y a un nombre fini de façons d'apparier $2n$ points. On peut donc choisir celle qui minimise une quantité bien choisie.
2. Quelle quantité ? Essaie la somme des longueurs des $n$ segments.
3. Suppose que dans cet appariement optimal, deux segments $[AC]$ et $[BD]$ se croisent en un point $X$. Remplace-les par $[AB]$ et $[CD]$.
4. Compare $AB + CD$ à $AC + BD$ en passant par $X$ et en utilisant l'inégalité triangulaire.

## Solution

### On prend l'appariement le plus court

Il y a un nombre fini de façons de répartir $2n$ points en $n$ paires. Choisissons celle pour laquelle la **somme totale des longueurs** des $n$ segments est la plus petite possible.

### Elle n'a pas de croisement

Supposons par l'absurde que deux des segments se croisent : disons $[AC]$ et $[BD]$, se coupant en un point $X$.

Les quatre points $A$, $B$, $C$, $D$ sont distincts, et $X$ est strictement à l'intérieur des deux segments. Remplaçons les paires $\{A,C\}$ et $\{B,D\}$ par les paires $\{A,B\}$ et $\{C,D\}$, en gardant tout le reste identique. On obtient un nouvel appariement.

Comparons les longueurs. Par l'inégalité triangulaire appliquée dans les triangles $ABX$ et $CDX$ :
$$AB \; \leqslant \; AX + XB \qquad \text{et} \qquad CD \; \leqslant \; CX + XD ,$$
avec égalité seulement si $X$ est sur $[AB]$, respectivement sur $[CD]$. Ces égalités sont impossibles ici : $X$ est sur la droite $(AC)$, donc $X$ sur $(AB)$ entraînerait que $A$, $B$, $C$ soient alignés, ce que l'énoncé interdit. Les deux inégalités sont donc **strictes** :
$$AB + CD \; < \; (AX + XB) + (CX + XD) = (AX + XC) + (BX + XD) = AC + BD ,$$
la dernière égalité venant de ce que $X$ est sur $[AC]$ et sur $[BD]$.

Le nouvel appariement est donc strictement plus court que l'ancien, ce qui contredit le choix de l'appariement minimal.

**Conclusion.** L'appariement de longueur totale minimale ne comporte aucun croisement.

### Ce que la preuve donne en plus

Elle fournit un procédé : partir d'un appariement quelconque et, tant qu'il y a un croisement, le « décroiser » comme ci-dessus. Chaque décroisement raccourcit strictement la longueur totale ; comme il n'y a qu'un nombre fini d'appariements, le procédé s'arrête, et il s'arrête sans croisement.

## Going further

On colorie $n$ points en rouge et $n$ points en bleu, trois points n'étant jamais alignés. Montrer qu'on peut relier chaque point rouge à un point bleu, par $n$ segments qui ne se croisent pas.
