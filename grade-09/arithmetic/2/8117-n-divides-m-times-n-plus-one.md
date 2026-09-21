---
id: "8117"
title: "Si n divise m(n+1), alors n divise m"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [divisibilite, multiples]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Arithmétique – Nombres premiers et lemme de Gauss », exercice 22"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soient $m$ et $n$ deux entiers, avec $n \geq 1$. On suppose que $n$ divise le produit $m(n+1)$.

Montrer que $n$ divise $m$.

## Hints

1. Développe le produit $m(n+1)$.
2. Dans ce que tu obtiens, il y a un morceau dont tu sais déjà qu'il est un multiple de $n$.
3. Si $n$ divise deux nombres, il divise aussi leur différence.

## Solution

**Développer.**

$$m(n+1) = mn + m.$$

**Deux multiples de $n$.**

D'une part, $mn$ est visiblement un multiple de $n$.

D'autre part, $m(n+1)$ est un multiple de $n$, c'est l'hypothèse de l'énoncé.

**Conclure par la différence.**

Si $n$ divise deux entiers, il divise leur différence. Or

$$m(n+1) - mn = m.$$

Donc $n$ divise $m$.

## Going further

Cette propriété est un cas particulier du théorème de Gauss : si $n$ divise un produit $m \times k$ et si $n$ et $k$ sont premiers entre eux, alors $n$ divise $m$. Ici $k = n+1$, et deux entiers consécutifs sont toujours premiers entre eux, puisqu'un diviseur commun à $n$ et $n+1$ diviserait leur différence, qui vaut $1$.

La démonstration ci-dessus a l'avantage de ne rien supposer connu : elle tient en une ligne de calcul.
