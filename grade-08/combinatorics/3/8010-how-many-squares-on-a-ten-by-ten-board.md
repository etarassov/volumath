---
id: "8010"
title: "Combien de carrés sur un damier 10 × 10 ?"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, damier, carre, somme]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, Coupe Animath 2017, éliminatoires collégiens, exercice 10 (repris en éliminatoires lycéens, exercice 2)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

On considère un damier $10 \times 10$, constitué de $100$ cases.

Combien existe-t-il de carrés formés d'une ou plusieurs cases du damier ?

*(On compte les $100$ petites cases, mais aussi tous les carrés plus grands : les carrés
$2 \times 2$, $3 \times 3$, et ainsi de suite jusqu'au damier entier.)*

## Hints

1. Fais d'abord le même travail sur un damier $2 \times 2$, puis $3 \times 3$. Combien de
   carrés trouves-tu ? Note les résultats.
2. Range les carrés par taille. Combien y a-t-il de carrés $10 \times 10$ ? de carrés
   $9 \times 9$ ? de carrés $2 \times 2$ ?
3. Un carré $k \times k$ est repéré par sa case en haut à gauche. Où cette case peut-elle se
   trouver ?

## Solution

**On range les carrés par taille.** Un carré du damier est entièrement déterminé par sa taille
$k$ (de $1$ à $10$) et par la position de sa case en haut à gauche.

**Où peut se trouver la case en haut à gauche d'un carré $k \times k$ ?** Pour que le carré
tienne dans le damier, cette case doit être dans l'une des $11 - k$ premières colonnes et dans
l'une des $11 - k$ premières lignes. Cela fait

$$(11 - k) \times (11 - k) = (11-k)^2$$

positions possibles.

**On vérifie sur les extrêmes.** Pour $k = 10$, on trouve $1^2 = 1$ carré : le damier entier,
en effet. Pour $k = 1$, on trouve $10^2 = 100$ carrés : les $100$ cases, en effet.

**On additionne.** Le nombre total de carrés vaut

$$\sum_{k=1}^{10} (11-k)^2 = 10^2 + 9^2 + 8^2 + 7^2 + 6^2 + 5^2 + 4^2 + 3^2 + 2^2 + 1^2.$$

Calculons :

$$100 + 81 + 64 + 49 + 36 + 25 + 16 + 9 + 4 + 1 = 385.$$

**Le damier contient $385$ carrés.**

## Going further

Sur un damier $n \times n$, le même raisonnement donne

$$1^2 + 2^2 + \cdots + n^2 = \frac{n(n+1)(2n+1)}{6}.$$

Pour $n = 10$ cette formule redonne $\dfrac{10 \times 11 \times 21}{6} = 385$.

Si l'on compte cette fois tous les **rectangles** du damier, le compte change complètement :
un rectangle est déterminé par deux des $11$ lignes verticales et deux des $11$ lignes
horizontales du quadrillage.
