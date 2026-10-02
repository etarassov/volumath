---
id: "11038"
title: "ab(a − b) est toujours pair"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 10
tags: [parite, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 3 (arithmétique)"
  reference: "2023-01_Sujet-envoi-3.pdf, Exercices Juniors, exercice 1 ; corrigé 2023-03_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-01_Sujet-envoi-3.pdf"
---

## Statement

Soient $a$ et $b$ deux entiers. Montrer que le nombre $ab(a - b)$ est pair.

## Hints

1. Essaie avec quelques valeurs de $a$ et de $b$. Qu'est-ce qui change selon que $a$ et $b$ sont pairs ou impairs ?
2. Un produit est pair dès que l'un de ses facteurs est pair. Il suffit donc de trouver, dans chaque cas, un facteur pair parmi $a$, $b$ et $a - b$.
3. Sépare deux cas : « $a$ ou $b$ est pair », et « $a$ et $b$ sont tous les deux impairs ».

## Solution

Un produit d'entiers est pair dès que l'un des facteurs est pair. On sépare deux cas.

* **Si $a$ est pair ou si $b$ est pair**, alors le produit $ab$ est pair, donc $ab(a - b)$ aussi.
* **Si $a$ et $b$ sont tous les deux impairs**, on écrit $a = 2k + 1$ et $b = 2\ell + 1$. Alors
  $a - b = 2k - 2\ell = 2(k - \ell)$ est pair, donc $ab(a - b)$ est pair.

Ces deux cas couvrent toutes les possibilités. Donc, pour tous entiers $a$ et $b$, le nombre $ab(a - b)$
est pair.

## Going further

Montrer que $ab(a - b)(a + b)$ est toujours divisible par $3$. On pourra regarder les restes de $a$ et de
$b$ dans la division par $3$.
